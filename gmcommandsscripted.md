# GM Commands (Scripted) [Sirin 0.27+]

All files with the `.lua` file extension will be read as `GM Commands` in the `sirin-scripts\GMCommands` folder

>> GM Commands can be reloaded in game without restarting of the ZoneServer \
>> Using the GM command `%gmcommands reload`

```lua
{
	"btown", "111100", "111",
	function (pPlayer)
		local pMap, x, y, z = sirin.mainThread.g_MapOper:GetPosStartMap(0, false)

		if pMap ~= nil then
			sirin.mainThread.teleportPlayer(pPlayer, pMap, x, y, z, 0)
			return true
		else
			return false
		end
	end
},
```
Example scripted command to teleport the user to the map start location of Bellato HQ


> Each scripted GM command will use [Lua Scripting](lua/luascripting.md) to define how the command functions \
> View the Lua API to see all available options


`commandName` - Any unique name. Do not use spaces in names \
`Mask` `GM Grade` - Valid Map Name `NeutralC` or `Platform01` etc \
`Mask` `GM Sub Grade` - Index for the new layer.. Default layer is 0

#### GM Grades [Grade mask]
- `000001` normal player account. Not recommended
- `000010`
- `000100` GM Grade that require sub grades. Only this Grade uses Sub Grades.
- `001000` 
- `010000` Can use client debug menu Alt+F1
- `100000` GM Tool. Can be used without player in game. Command handler must support.
#### GM Sub Grades [Sub Grade mask]
- `001` sub grade 0
- `010` sub grade 1
- `100` sub grade 2

> Masks can be combined togther to allow multiple grades/sub grades to use a command

`Lua Function` - The Lua function logic for the command 

> View the [Lua Docs](lua/luascripting.md) to see all available options