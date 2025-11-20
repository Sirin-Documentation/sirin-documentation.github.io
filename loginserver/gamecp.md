# Game CP

It is advised that a Game CP operates in a __Read Only__ state (Not editing server game data on the database directly)

This is because the data stored on the server database is __Saved State__ and __not__ the current state the server is using. So the data on the database can differ from the value the server is handling.

#### Account Creation (3rd Party Use)

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

#### Login Autentication (3rd Party Use)

> Use this for logging into your Game CP with game login info. This means your Game CP doesn't require a seperate login and you can more easily match user <-> account

```sql
declare @pass varchar(max), @login varchar(max), @salt varchar(max)
set @login = 'test'
set @pass = 'test'
set @salt = 'the value of PasswordSalt in sirin-private-settings.lua'
SELECT U.* FROM tbl_Sirin_Account_Player AS U
WHERE U.[B64Login] = (select Cast(@login as varbinary(max)) for xml path('')) and U.[Password] = HASHBYTES('SHA2_256', @pass + @salt)
```

>> !important note: Avoid storing the salt in the stored procedure qeury

#### Account Data (tbl_Sirin_Account_Player)

> Info for the Sirin Account database data

* `Serial`:  Account serial
* `B64Login`: right padded base64 encoded login
* `Password`: Encypted password hash
* `CreateDate`: Account create date
* `LastConnDate`: Account last connect date (connect via launcher)
* `BanEndDate`: Account block end date
* `ChatLockEndDate`: Chat block end date
* `BillingEndDate`: Billing end date. 
> For Pay2Play mode
> If BillingType = 1 and BillingEndDate < current date - account expired and cant enter game.
* `PremiumEndDate`: Premium status end date
* `BillingType`:
    * 0 - normal
    * 1 - Pay2Play (additional check on BillingEndDate)
* `CashCoin`: Cash balance for ingame cash shop
* `Use2ndFactor`: 2 factor authentication status. If enabled, require code to login game
* `SharedSecret`: Shared secret. Sha1(2fa salt + secret)

---

#### Inventory Data (tbl_inven)

> How items are stored in the database - used for viewing inventories on Game CP's

|Serial| K0 | D0 | U0 | K1 | D1 | ... |
|-|-------|---|------------------------------|-------|---|------------------------------|
|1| 136959 |10|268435455|120194815|1|268435455|

* `Serial` Player serial for the inventory data
* `K0` Item type data (See below)
* `D0` Durability value (Stack Size / Ammo Count / Reaver or Animus Exp)
* `U0` Upgrade data

`K0` contains infomation on the item type and is broken down as the hex value

136959 -> (Hex) 216FF

|Bytes (Hex)| Value (Dec) | Use |
|-|-|-|
| 0x2 | 2 | Item Index |
| 0x16 | 22 | Item Type [List of Item Types](/lua/enums.md#item-types)|
| 0xFF | -1 | Item Slot (If Set) |

