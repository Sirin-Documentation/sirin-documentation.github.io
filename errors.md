# Database Errors

### StartDatabase (RF_USER) Fail: sqlRet != SQL_SUCCESS 

Indicates there is a problem connecting your server to the database.
1) Verify your [SQL Logins](databases#sql-logins-to-access-database) and [SQL User Mapping](databases#user-mapping)
2) Check firewall isn't blocking your sql port
3) If your on window 10/11  Test using 192.168.x.x  instead of 127.0.0.1  for your SQL connection
    - `sirin-scripts\config-core\sirin-core-config.lua` -> `userDB.ServerIP = "127.0.0.1"`
    - `sirin-scripts\config-core\sirin-core-config.lua` -> `worldDB.ServerIP = "127.0.0.1"`
4) Ensure your MS SQL Database was installed with `SQL Server and Windows Authentication mode`
    - Verfiy in MSSQL Management Studio `Server Properties` -> `Security` -> `Server Authentication`
5) Enable IP `127.0.0.1`/`192.168.0.x` for MSSQL via `SQL Server Configuration Manager`
    1) SQL Server Network Configuration -> Protocols for MSSQLSERVER
    2) TCP/IP  (Right click -> Enable)
    3) TCP/IP  (Right click -> Properties) -> IP Addresses
    4) Enable `127.0.0.1` -> `Enabled` = `True`
    5) Enable `192.168.0.x` -> `Enabled` = `True`

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

# Client Launch Errors

### LangPack Reading failure

Error is because the client used is using non packed datatable files

Check your Client/DataTable and make sure your files are packed `.edf`

`Client/DataTable/Item.edf` _not_ `Client/DataTable/Item.dat`
`Client/DataTable/en-ph/NDLanguage.edf` _not_ `Client/DataTable/en-ph/NDLanguage.dat`

If you files are `.dat` pack your files into the `.edf` format using EDF-DAT.exe

# Server Launch Errors

### Sirin-core.dll load failed. Uknown. Code 0x0000045A

> Install the Microsoft C++ (x64) redistributables 

[https://aka.ms/vs/17/release/vc_redist.x64.exe](https://aka.ms/vs/17/release/vc_redist.x64.exe)

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
