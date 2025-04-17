# CSQLDatabase
 
## Functions
 
> `int` SQLExecDirect(`struct` `lua_State` *)
 
> `int` SQLBindParam(`struct` `lua_State` *)
 
> `int` SQLRowCount(`struct` `lua_State` *)
 
> `int` SQLFetch(`struct` `lua_State` *)
 
> `int` SQLGetData(`struct` `lua_State` *)
 
> `int` SQLParamData(`struct` `lua_State` *)
 
> `int` SQLPutData(`struct` `lua_State` *)
 
> `int` ErrorAction(`struct` `lua_State` *)
 
> `short` SQLFreeStmt(`unsigned short`)
 
> `void` SetAutoCommitMode(`bool`)
 
> `bool` CommitTransaction(`void`)
 
> `bool` RollbackTransaction(`void`)
 
> `int` FetchSelected(`struct` `lua_State` *)
 
