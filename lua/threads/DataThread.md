# DataThread
 
#### Namespaces
 
> [Sirin](lua/threads/DataThread.md#Sirin)
 
---
# Sirin
 
#### Namespaces
 
> [NATS](lua/threads/DataThread.md#SirinNATS)
 
> [console](lua/threads/DataThread.md#Sirinconsole)
 
> [luaThreadManager](lua/threads/DataThread.md#SirinluaThreadManager)
 
#### Functions
 
> `static` `unsigned int` GetPrivateProfileIntA(`const` `char` *,`const` `char` *,`int`,`const` `char` *)
 
> `static` `int` GetPrivateProfileStringA(`struct` `lua_State` *)
 
> `static` `void` WriteA(`const` `char` *,`const` `char` *,`bool`,`bool`)
 
> `static` `void` WritePrivateProfileStringA(`const` `char` *,`const` `char` *,`const` `char` *,`const` `char` *)
 
> `static` `class` [VoidPtr](lua/classes/VoidPtr.md)* binaryDataToVoid(`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `class` `luabridge__LuaRef` getFileList(`const` `char` *,`struct` `lua_State` *)
 
> `static` `int` getUUIDv4(`struct` `lua_State` *)
 
> `static` `unsigned char` getZoneVersion(`void`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`const` `char` *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`unsigned __int64`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`const` `char` *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`const` `char` *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`unsigned __int64`)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`const` `char` *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `class` [VoidPtr](lua/classes/VoidPtr.md)* sqlResultSetToVoid(`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `class` [CBinaryData](lua/classes/CBinaryData.md)* voidToBinaryData(`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `class` [CSQLResultSet](lua/classes/CSQLResultSet.md)* voidToSQLResultSet(`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
#### Classes
 
> [CAssetController](lua/classes/CAssetController.md)
 
> [CBinaryData](lua/classes/CBinaryData.md)
 
> [CLanguageAsset](lua/classes/CLanguageAsset.md)
 
> [CSQLResultSet](lua/classes/CSQLResultSet.md)
 
> [CTranslationAsset](lua/classes/CTranslationAsset.md)
 
> [UUIDv4](lua/classes/UUIDv4.md)
 
> [VoidPtr](lua/classes/VoidPtr.md)
 
---
# Sirin.NATS
 
#### Functions
 
> `static` `void` initNATS(`void`)
 
> `static` `int` publish(`struct` `lua_State` *)
 
---
# Sirin.console
 
#### Functions
 
> `static` `void` LogEx(`enum ConsoleForeground`,`enum ConsoleBackground`,`const` `char` *)
 
> `static` `void` LogEx_NoFile(`enum ConsoleForeground`,`enum ConsoleBackground`,`const` `char` *)
 
---
# Sirin.luaThreadManager
 
#### Functions
 
> `static` `int` CopyFromContext(`struct` `lua_State` *)
 
> `static` `int` CopyToContext(`struct` `lua_State` *)
 
> `static` `void` DeleteGlobal(`class` [ILuaContext](lua/classes/ILuaContext.md) *,`const` `char` *)
 
> `static` `bool` IsExistGlobal(`class` [ILuaContext](lua/classes/ILuaContext.md) *,`const` `char` *)
 
> `static` `class` [ILuaContext](lua/classes/ILuaContext.md)* LuaGetThread(`const` `char` *)
 
> `static` `class` [ILuaContext](lua/classes/ILuaContext.md)* LuaGetThread(`unsigned int`)
 
#### Classes
 
> [ILuaContext](lua/classes/ILuaContext.md)
 
