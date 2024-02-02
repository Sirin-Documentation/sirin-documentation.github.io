# Database Errors

### StartDatabase (RF_USER) Fail: sqlRet != SQL_SUCCESS 

Indicates there is a problem connecting your server to the database.
1) Verify your [SQL Logins](databases#sql-logins-to-access-database) and [SQL User Mapping](databases#user-mapping)
2) Check firewall isn't blocking your sql port
3) If your on window 10/11  Test using 192.168.x.x  instead of 127.0.0.1  for your SQL connection
    - `sirin-scripts\config-core\sirin-core-config.lua` -> `userDB.ServerIP = "127.0.0.1"`
    - `sirin-scripts\config-core\sirin-core-config.lua` -> `worldDB.ServerIP = "127.0.0.1"`

### Server Console stops after StartDatabase (RF_User)

When creating your sql login `Enforce Password Policy` was checked [Fix your SQL Login](databases#sql-logins-to-access-database)

### DatabaseInit: Economy data load fail

Error is related to missing rows in `RF_World/dbo.tbl_economy_history`

Ensure there are 12 rows. Use economy_history.sql script if there isn’t to populate it.

```
Users who setup Russian MSSQL and set default connection language Russian
When you try to execute script to fill 12 record it will fail on 12th. 
Set your MSSQL Login `Default Language` to English
```

***

# Server Launch Errors

### Salt for password hashes not set
> Salt for password hashes not set! check file `./sirin-scripts/config-core/sirin-private-settings.lua` \
> Salt for second factor shared key not set! check file `./sirin-scripts/config-core/sirin-private-settings.lua`

Both errors are because a password and 2Factor salt has not been set in `/sirin-scripts/config-core/sirin-private-settings.lua`. Edit this file and type in any unique string of characters that will be used when encrypting users passwords.

For best results use a completely random set of characters upto 64 characters

```lua
-- Do not remove these lines
local config = {}
local serverAuth = {}
--------------------------
 
-- Configuration BEGIN
 
config.PasswordSalt = "Rvq2#w9[2/RfbeaS"
config.SecondFactorSalt = "9u0&-9EM[I[=(uZZ"
```
### DataFileInit: Failed
> DatafileInit: .\Script\BagItem.dat¿ûûÔ½rµ€;ÔÅ“µùê«¿ÔÅ’

After editing one of the script files `Zoneserver\RF_Bin\script\bagItem.dat` data has been incorrected edited within it. Revert changes and relaunch the zoneserver

### Side by side configuration is incorrect
> /ZoneServer/: The Application has failed to start because its side by side configuration is incorrect... 

Error is related to not having the RF_Dependencies installed. Please review the [Requirements](quickstart#requirements) and
ensure this is installed before launching the Zone Server

### CFileWriter::VAWriteA: Failed! 
> CFileWriter::VAWriteA: Failed! 'C:\Game Servers\AOP Server\Server\History\

The path set in `Zoneserver\WorldInfo\worldinfo.ini` is too long for the ZoneServer to write to \
Instead use a path such as `D:/History` or `C:/History` 

```ini
[System]
WorldName = RF NOVUS
ServerType = 0
BillingCode = 32
BillOper = 0
FreeServer = 1
HistoryPath = D:\History
```
