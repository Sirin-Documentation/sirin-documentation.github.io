# CBinaryData
 
## Functions
 
> `bool` PushString(`const` `char` *,`unsigned int`)
 
> `bool` PushInt8(`int`)
 
> `bool` PushInt16(`int`)
 
> `bool` PushInt32(`int`)
 
> `bool` PushInt64(`__int64`)
 
> `bool` PushUInt8(`unsigned int`)
 
> `bool` PushUInt16(`unsigned int`)
 
> `bool` PushUInt32(`unsigned int`)
 
> `bool` PushUInt64(`unsigned __int64`)
 
> `bool` PushFloat(`float`)
 
> `bool` PushDouble(`double`)
 
> `int` PopString(`struct` `lua_State` *)
 
> `int` PopInt8(`struct` `lua_State` *)
 
> `int` PopInt16(`struct` `lua_State` *)
 
> `int` PopInt32(`struct` `lua_State` *)
 
> `int` PopInt64(`struct` `lua_State` *)
 
> `int` PopUInt8(`struct` `lua_State` *)
 
> `int` PopUInt16(`struct` `lua_State` *)
 
> `int` PopUInt32(`struct` `lua_State` *)
 
> `int` PopUInt64(`struct` `lua_State` *)
 
> `int` PopFloat(`struct` `lua_State` *)
 
> `int` PopDouble(`struct` `lua_State` *)
 
> `unsigned __int64` GetReadPos(`void`)
 
> `bool` SetReadPos(`unsigned __int64`)
 
> `unsigned __int64` GetWritePos(`void`)
 
> `bool` SetWritePos(`unsigned __int64`)
 
> `int` PushSQLTimeStampStruct(`struct` `lua_State` *)
 
> `int` PopSQLTimeStampStruct(`struct` `lua_State` *)
 
