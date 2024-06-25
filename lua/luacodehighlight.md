# Lua Highlighting / Code Completion [Sirin 0.29+]

> From Sirin 0.29 highlighting and code auto completion is provided - there are two requirements

## Install Visual Studio Code

[Install Visual Studio Code](https://code.visualstudio.com/)
Free. Built on open source. Runs everywhere.



## Install Lua By Sumneko (VS Code Plugin)

[Lua by sumneko](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) Lua Language Server coded by Lua

## Open ../sirin-lua Folder

<img style="border:1px solid black" src="img/sirin_vsopen.jpg"/>

Open Folder.. navigate to your server  sirin-lua folder. 

Plugin installed and Folder Open `.lua` files can be edited with with syntax highlighting and code completion

<img style="border:1px solid black" src="img/sirin_vscompl.jpg"/>


### Decorating functions (Advanced Use)

Function inputs can be decorated to indicate what type of object is being passed in. This allows the code completition to function on passed arguments - review the API documentation to determine types

```lua
---@param pPlayer CPlayer
---@param pIntoMap CMapData
---@param wLayerIndex integer
---@param byMapOutType integer
---@param x number
---@param y number
---@param z number
function MyLuaFunction(pPlayer, pIntoMap, wLayerIndex, byMapOutType, x, y,z)
```
