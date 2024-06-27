# CoreCfg
 
#### Namespaces
 
> [Sirin](lua/threads/CoreCfg.md#Sirin)
 
---
# Sirin
 
#### Namespaces
 
> [console](lua/threads/CoreCfg.md#Sirinconsole)
 
> [luaThreadManager](lua/threads/CoreCfg.md#SirinluaThreadManager)
 
#### Functions
 
> `static` `class` `luabridge__LuaRef` getFileList(`const` `char` *,`struct` `lua_State` *)
 
> `static` `void` processAsyncCallback(`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`unsigned __int64`)
 
#### Classes
 
> [CAssetController](lua/classes/CAssetController.md)
 
> [CLanguageAsset](lua/classes/CLanguageAsset.md)
 
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
 
