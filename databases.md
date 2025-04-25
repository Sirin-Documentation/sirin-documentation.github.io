# Databases
Only two databases are required for Sirin `RF_User` and `RF_World`

### Database scripts
Always build your database using the database scripts. _Don't_ use a backup file when creating the server.

In the [Downloaded](quickstart) files database scripts can be found in the `mssql/Sirin_UserDB.sql` directory.

_If you are migrating from an existing sever see_ [Migrating old Databases](databases#migrating-databases)

### RF_User 
Execute the script `Sirin_UserDB.sql` in a new database to generate the tables for RF_User.

### RF_World 
In the `msql/` folder you will find all the scripts needed to generate the database. 

* Run scripts in `01 World_DB (223)/` folder and run the scripts in order `01 -> 06`
* Run scripts in `02 World_DB (update to 2232)` to upgrade database to support GU

> #### Common Error: 03 tbl_economy_history initial.sql 
```
Running the script `03 tbl_economy_history initial.sql` produces an error message
SQL connection default language has not been set to English
Set your SQL Login to use  "Default Lnaguage" -> English

Logout - Re-connect then execute your query. Wipe Table and restart if required`
```

### RF_World AoP _(Optional)_

If running AoP Run the database scripts that came with your server files. To upgrade GU database -> AOP

### SQL logins to access database 
Create a new SQL login.  
`Security → Logins` (Right click) -> New Login 

- Uncheck `Enforce Password Policy`
- Set `Default Language` to `English` If not set by default

| Default RF_User | Default RF_World |
| ------- |----------|
| SQL Server Authentication | SQL Server Authentication |
| rfrusaccount | rfrusworld |
| #rf%rusaccount | #rf%rusworld |

> Login details for the databases are changed in  `sirin-core-config\sirin-core-config.lua` do this for increased security on the server.

### User Mapping
`Security -> Logins -> (Right click user) -> Login Properties -> User Mapping`

`rfrusaccount` to `RF_User` 

`rfrusworld` to `RF_World`

Enable the permissions on both
- db_owner

### Verify your database SQL & Logins

> If Sirin cannot find your database the server console will stop after StartDatabase (RF_User)

Verify you can connect to them locally using the logins created above. 
This ensures Sirin can find your database when it launches.

<img style="border:1px solid black" src="img/db_verifysql.png"/>

If you cannot connect via the `127.0.0.1 or localhost` then you need to resolve your connection issue between localhost and MSSQL

* Firewall rules
* MSSQL Pipe Configuration
    * SQL Server Configuration Manager.
    * Expand SQL Server Network Configuration for the server instance in question.
    * Double-click "TCP/IP".
    * "Protocol" section, set "Enabled" to "Yes".
    * "IP Addresses" section, set the TCP port under "IP All" (which is 1433 by default).
    * "IP Addresses" section, find subsections with IP address 127.0.0.1 (for IPv4) and ::1 (for IPv6) and set both "Enabled" and "Active" to "Yes", and TCP port to 1433.

### Migrating Databases
Used to migrate an existing server to be compatible with Sirin

After creating your Sirin Account database modify the stored procedure `Sirin_SelectOldPlayerAccountPassword` 

`Programability -> Stored Procedures -> Sirin_SelectOldPlayerAccountPassword`

```mssql
ALTER PROCEDURE [dbo].[Sirin_SelectOldPlayerAccountPassword]
@id varchar(89),
@pw binary(89) output
AS
SELECT @pw = [password] from tbl_RFTestAccount where id = convert(binary, @id)
```

Point the `@pw` and `@id` var to the field your id and password is stored in your existing account database

Next run the server command `migrate` from the Sirin server console

Errors generated during migration will found in `sirin-log/core/ModAccountLoginService.log`



