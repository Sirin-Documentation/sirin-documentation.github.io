# NATS
 
#### Namespaces
 
> [Sirin](lua/threads/NATS.md#Sirin)
 
---
# Sirin
 
#### Namespaces
 
> [NATS](lua/threads/NATS.md#SirinNATS)
 
> [console](lua/threads/NATS.md#Sirinconsole)
 
> [luaThreadManager](lua/threads/NATS.md#SirinluaThreadManager)
 
#### Functions
 
> `static` `unsigned int` GetPrivateProfileIntA(`const` `char` *,`const` `char` *,`int`,`const` `char` *)
 
> `static` `int` GetPrivateProfileStringA(`struct` `lua_State` *)
 
> `static` `void` WriteA(`const` `char` *,`const` `char` *,`bool`,`bool`)
 
> `static` `void` WritePrivateProfileStringA(`const` `char` *,`const` `char` *,`const` `char` *,`const` `char` *)
 
> `static` `class` `luabridge__LuaRef` getFileList(`const` `char` *,`struct` `lua_State` *)
 
> `static` `class` `std__basic_string<char,struct std__char_traits<char>,class std__allocator<char> >` getUUIDv4(`void`)
 
> `static` `unsigned char` getZoneVersion(`void`)
 
> `static` `void` processAsyncCallback(`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`unsigned __int64`)
 
#### Classes
 
> [CAssetController](lua/classes/CAssetController.md)
 
> [CLanguageAsset](lua/classes/CLanguageAsset.md)
 
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
 
