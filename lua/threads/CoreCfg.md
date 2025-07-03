# CoreCfg
 
#### Namespaces
 
> [Sirin](lua/threads/CoreCfg.md#Sirin)
 
---
# Sirin
 
#### Namespaces
 
> [console](lua/threads/CoreCfg.md#Sirinconsole)
 
> [luaThreadManager](lua/threads/CoreCfg.md#SirinluaThreadManager)
 
#### Functions
 
> `static` `class` [VoidPtr](lua/classes/VoidPtr.md)* binaryDataToVoid(`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `class` `luabridge__LuaRef` getFileList(`const` `char` *,`struct` `lua_State` *)
 
> `static` `unsigned char` getZoneVersion(`void`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`unsigned __int64`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `void` processAsyncCallback(`unsigned __int64`,`const` `char` *,`const` `char` *,`const` `char` *,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`unsigned __int64`)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CSQLResultSet](lua/classes/CSQLResultSet.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`unsigned __int64`,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `static` `void` processAsyncPoolCallback(`unsigned __int64`,`unsigned int`,`const` `char` *,`const` `char` *,`const` `char` *,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`)
 
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
 
