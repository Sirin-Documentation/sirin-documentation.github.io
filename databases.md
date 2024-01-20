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
* _(Optional)_ If running AOP Run the database scripts that came with your server files. To upgrade GU -> AOP

Create the tables for RF_World either restore the RF_World.bak or build the databases using the creation sql scripts recommended.  If you are using AoP 4.15 also run the 2232 → AoP  upgrade script.

### SQL logins to access database 
Create a new SQL login.  
`Security → Logins` (Right click)  New Login…  _Uncheck “Enforce Password Policy”_

Login details for the databases are changed in  `sirin-core-config\sirin-core-config.lua` do this for increased security on the server.

| Default RF_User | Default RF_World |
| ------- |----------|
| SQL Server Authentication | SQL Server Authentication |
| rfrusaccount | rfrusworld |
| #rf%rusaccount | #rf%rusworld |

### User Mapping
`Security -> Logins -> (Right click user) -> Login Properties -> User Mapping`

`rfrusaccount` to `RF_User` 

`rfrusworld` to `RF_World`

Enable the permissions on both
- db_datareader
- db_datawriter 
- db_owner

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



