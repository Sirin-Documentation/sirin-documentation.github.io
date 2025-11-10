# CRFNewDatabase
 
## Functions
 
> `int` SQLExecDirect(`struct` `lua_State` *)
 
> `int` SQLBindParam(`struct` `lua_State` *)
 
> `int` SQLRowCount(`struct` `lua_State` *)
 
> `int` SQLFetch(`struct` `lua_State` *)
 
> `int` SQLGetData(`struct` `lua_State` *)
 
> `int` SQLParamData(`struct` `lua_State` *)
 
> `int` SQLPutData(`struct` `lua_State` *)
 
> `int` ErrorAction(`struct` `lua_State` *)
 
> `int` SQLFreeStmt(`struct` `lua_State` *)
 
> `int` SetAutoCommitMode(`struct` `lua_State` *)
 
> `int` CommitTransaction(`struct` `lua_State` *)
 
> `int` RollbackTransaction(`struct` `lua_State` *)
 
> `int` FetchSelected(`struct` `lua_State` *)
 
## Members
 
> `bool` m_bConectionActive
 
> `bool` m_bSaveDBLog
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_ProcessLogW
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_ErrorLogW
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_ProcessLogA
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_ErrorLogA
 
> `unsigned char` m_byLogFileHour
 
> `const` `char`* m_szOdbcName
 
> `const` `char`* m_szAccountName
 
> `const` `char`* m_szPassword
 
> `bool` m_bReconnectFailExit
 
> `const` `char`* m_szLogUpperPath
 
