# Function Menu [Sirin 0.42+]

Custom windows added in Sirin 0.42 allows for creating custom client interfaces

All files with the `.lua` file extension will be read as `Custom Windows` in the `sirin-lua\threads\main\ReloadableScripts\CustomWindows` folder

<img style="border:1px solid black" src="img/sirin_funcwindow.png"/>

Function menu is a scriptable menu where new icons/buttons can be added. Each button/icon can trigger either a clientside action or a request to the server.

>> This menu will fail to open until you send [State Flags](lua/features/customwindow/stateFlags.md) to the client

```lua
local t = {
	[1] = { -- [1] window with index 1 is always function window
		name = {
			default = "Function window",
		},
		overlayIcons = { -- optional overlays. max 25
			{ 98, 0, 19, 295 },
			{ 0, 0, 0, 0 },
			{ 0, 0, 0, 0 },
			{ 0, 0, 0, 0 },
		},
		data = {
			{
				icon = { 4, 13, 4, 0 },
				clientWindow = 1, -- CHAR INFO
			},
            -- Data entries for each button/icon
        }
    }
}
```
## Interaction with Menu

See [State Flags](lua/features/customwindow/stateFlags.md) for full infomation on using button actions

## Customization

#### Icon / Sprites
```lua
{
	icon = { 4, 13, 4, 0 },
},
```

* `4` - Sprite Sheet Index [Sprite Sheet List](lua/features/customwindow/window.md#icon-sprites)
* `13` - Sprite Group within sprite sheet
* `4` - Sprite Image Index
*  `0` - Optional Index for Icon, If a sprite sheet contains a grid of images use this to select from the grid

#### Overlays
```lua
overlayIcons = 
{ -- optional overlays. max 25
	{ 98, 0, 19, 295 },
	{ 0, 0, 0, 0 },
	{ 0, 0, 0, 0 },
	{ 0, 0, 0, 0 },
},
```
Using the same format as the icon. This sets up a list of sprites to be used as overlays for all icons

Overlays can be turned on/off using [State Flags](lua/features/customwindow/stateFlags.md)


#### Hover Text
```lua
description = {
    default = "on hover text",
},
```
Display text when hovering over icon [Uses localization strings](scriptlocal.md#script-localization-sirin-026)

## Restrictions
These are basic restriction options use [State Flags](lua/features/customwindow/stateFlags.md) to fully control what icons/buttons can be seen/used

#### Race Limit
```lua
raceLimit = { 0, 1, 2 },
```
Limits which races can see/use this button

| Value | Action|
|-------|------------------------------|
| 0     | Bellato|
| 1     | Cora|
| 2     | Accretia|

#### Race Boss Limit (Archon Limit)
```lua
raceBoss = { 0, 1, 2, 3, 4, 5, 6, 7, 8 },
```
Limits which archon positions can see/use this button

| Value | Position| Side | 
|-------|------------------------------|--|
| 0     | Race Leader||
| 1     | Consul|Left|
| 2     | Strike|Left|
| 3     | Def|Left|
| 4     | Support|Left|
| 5     | Consul|Right|
| 6     | Strike|Right|
| 7     | Def|Right|
| 8     | Support|Right|

#### Guild Limit
```lua
guildGrade = { 1, 2 }
```
Limits which guild grades can see/use this button.

| Value | Position|
|-------|------------------------------|
| 1     | Guild Leader|
| 2     | Guild Senate|

#### GM Limit
```lua
isGM = true
```
Limits if being a GM is required to see/use this button

#### Premium Required
```lua
isPremium = true
```
Limits if Premium Service is required to see/use this button

> See [State Flags](lua/features/customwindow/stateFlags.md) for full infomation on using button actions