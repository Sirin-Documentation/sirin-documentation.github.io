# Database Access

## Adv Operation

> There is no basic operation for database access from within custom scripts

To use the example file `sirin-lua/Custom/dbtest.lua` First create your database table in `RF_World`

```lua
function dbTest.select()
	local set = nil
	local sqlRet = SQL_SUCCESS
	local pszQuery = "{ CALL Sirin_SelectTestData }"

	repeat
		sqlRet = Sirin.worldDBThread.g_WorldDatabaseEx:SQLExecDirect(pszQuery, SQL_NTS)

		if sqlRet ~= SQL_SUCCESS and sqlRet ~= SQL_SUCCESS_WITH_INFO then
			if sqlRet == SQL_NO_DATA then
				sqlRet = SQL_SUCCESS
				set = Sirin.CSQLResultSet(84)
			end
		else
			sqlRet, set = Sirin.worldDBThread.g_WorldDatabaseEx:FetchSelected(84)
		end

	until true
    ...
```

#### Create table

```sql
CREATE TABLE [dbo].[tbl_sirin_test](
    [serial] [int] IDENTITY(1,1) NOT NULL,
    [a] [bit] NOT NULL,
    [b] [tinyint] NOT NULL,
    [c] [smallint] NOT NULL,
    [d] [int] NOT NULL,
    [e] [bigint] NOT NULL,
    [f] [real] NOT NULL,
    [g] [float] NOT NULL,
    [h] [datetime] NOT NULL,
    [i] [datetime2](7) NOT NULL,
    [j] [date] NOT NULL,
    [k] [varchar](32) NOT NULL,
    [l] [int] NOT NULL,
 CONSTRAINT [PK_tbl_sirin_test] PRIMARY KEY CLUSTERED 
(
    [serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
```

#### Create Stored Procedures

Create the two stored procedures `Select` and `Insert`

```sql
CREATE PROCEDURE [dbo].[Sirin_SelectTestData]
AS
SELECT serial, a, b, c, d, e, f, g, h, cast(k as binary(32)), l
FROM [dbo].[tbl_sirin_test] Order by serial asc

GO
```

```sql
CREATE PROCEDURE [dbo].[Sirin_InsertTestData]
@a bit,
@b tinyint,
@c smallint,
@d int,
@e bigint,
@f real,
@g float,
@h datetime,
@i datetime2(7),
@k varchar(32)
AS
set ansi_padding off
INSERT INTO [dbo].[tbl_sirin_test](a, b, c, d, e, f, g, h, i, j, k)
VALUES (@a, @b, @c, @d, @e, @f, @g, @h, @i, '1990-01-01', @k)
set ansi_padding on


GO
```

#### Register Lua Globals

Register two global vars for the two handlers (mainthread and global) from `sirin-lua/Custom/dbtest.lua` 

`sirin-lua\threads\main\initMainThread.lua`

```lua
-- SQL
SQL = require('custom.dbtest')
SirinLua.asyncHandler = SQL.mainThreadAsyncCallbackHandler
```

`sirin-lua\threads\userDB\initUserDBThread.lua`

```lua
-- SQL DB
SQL = require('custom.dbtest')
SirinLua.asyncHandler = SQL.worldDBThreadAsyncCallbackHandler
```

#### Create GM Commands to execute 

Create new [Scripted GM Command](gmcommandsscripted.md) to execute the functions in `sirin-lua/Custom/dbtest.lua` 

| Value  | Action   |
|---|---|
| 1   | insert record  |
| 2   | select data and print in main thread context |
| 3   | example how to properly return varchar fields |

```lua
{ "pushcase", "111100", "111",
    ---@param pPlayer CPlayer
    ---@return boolean
    function (pPlayer)
        if Sirin.mainThread.getCheatWordNum() < 1 then
            return false
        end

        Sirin.processAsyncCallback(0, 'sirin.guard.worldDBThread', 'SirinLua', 'asyncHandler', tonumber(Sirin.mainThread.getCheatWord(0)) or 0)
        return true
    end
}, -- dont forget separating comma
```

> Everything used in the `sirin-lua/Custom/dbtest.lua` can be used in your own custom scripts enabling you to store persistant data or access data already existing on the database

#### Modifying data on the database __does not__ alter game state

The database exists for saving and loading game states, directly altering data on the database does not trigger any change on the zone server and will only be loaded when required.

For immediate actions on the server use [Sirin Scripting](lua/threads/MainThread) and the database when saving or loading states.