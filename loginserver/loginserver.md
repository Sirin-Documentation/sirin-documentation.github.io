# Login Server

### Account Creation (3rd Party Use)

> Used for creating new accounts directly on the Sirin RF_User table

```sql
DECLARE @Pass VARCHAR(128);
DECLARE @Login VARCHAR(128);
DECLARE @Salt VARCHAR(500);

SET @Login = 'mylogin';
SET @Pass = 'mypassword';
SET @Salt = 'the value of PasswordSalt in sirin-private-settings.lua';


INSERT INTO tbl_Sirin_Account_Player(B64Login, [Password]) VALUES(
    (SELECT CONVERT(varbinary(max), @Login) for xml path('')),
    (SELECT HASHBYTES('SHA2_256', @Pass + @Salt))
); 
```

### Two Factor Verification

> Used to verify the 2 factor authentication code during login (If enabled)

> sharedSecret must be read from the database 

```php
<?
$salt = "1234567"; //from ini file
$sharedSecret = hex2bin("00000000000000000000"); // binary string of sharedSecret from database

$t = floor(time()/30);
$challenge = array();

for ($j = 8; $j--; $t >>= 8)
    $challenge[$j] = chr($t & 0xFF);

ksort($challenge);
$p = str_split(sha1($salt.$sharedSecret, true), 10); // pay attention we take first 10 bytes here. $p[0] used next row.
$md = str_split(hash_hmac("sha1", implode($challenge), $p[0], true));
$offset = ord($md[19]) & 0xf;
$code = 0;

for ($j = 0; $j < 4; ++$j)
{
    $code <<= 8;
    $code |= ord($md[$offset + $j]);
}

$code &= 0x7FFFFFFF;
$code %= 1000000;

echo $code;
?>
```

### Sirin  RF_User Database (3rd Party Use)

> Use the stored procedures to modify. _Don't directly modify the database_

#### tbl_Sirin_Account_Player

* Serial:  Account serial
* B64Login: right padded base64 encoded login
* Password: Encypted password hash
* CreateDate: Account create date
* LastConnDate: Account last connect date (connect via launcher)
* BanEndDate: Account block end date
* ChatLockEndDate: Chat block end date
* BillingEndDate: Billing end date. 
> For Pay2Play mode
> If BillingType = 1 and BillingEndDate < current date - account expired and cant enter game.
* PremiumEndDate: Premium status end date
* BillingType:
    * 0 - normal
    * 1 - Pay2Play (additional check on BillingEndDate)
* CashCoin: Cash balance for ingame cash shop
* Use2ndFactor: 2 factor authentication status. If enabled, require code to login game
* SharedSecret: Shared secret. Sha1(2fa salt + secret)

### RF_User Stored Procedues (3rd Party Use)

> Full Documentation for stored procedures is included `/mssql/Sirin_Proc_description.txt`

