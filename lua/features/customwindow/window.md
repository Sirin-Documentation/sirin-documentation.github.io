# Custom Windows [Sirin 0.42+]

All files with the `.lua` file extension will be read as `Custom Windows` in the `sirin-lua\threads\main\ReloadableScripts\CustomWindows` folder

<img style="border:1px solid black" src="img/sirin_cw.png"/>

Custom windows are fully customizable scriptable UI windows. Each window has its own layout and built from a range of display components.

> Custom Windows will appear blank until you send [State Flags](/lua/features/customwindow/stateFlags.md) to the client

> You must push data to the client to display your UI

### Window Indexes
```lua
local t = {
    [2] = {  -- Custom window start at index 2
		name = {
			default = "Custom window 1", -- Window display name
		},
		width = 750, -- Inital Window Wdith
		height = 550, -- Inital Window Height
		layout = { 50, 50, 50, 50, 50, 0, 100, 50 }, -- column width
        ...
    }
}
```

Every window you create in your script has a window index starting from `2`. \
Index `1` is reservered for [Function Menu](lua/features/customwindow/functionMenu.md)

---

## Customization

### Layout
```lua
layout = { 50, 50, 50, 50, 50, 0, 100, 50 },
```
Every custom window is constructed in columns. In the layout you define how many columns and the width of each. 

| Value | Action|
|-------|------------------------------|
| 0     | Stretch to Fit, Content will fill as much space as possible|
| 1 - 9999 | Fixed width  |

```lua
layout = { 0, 0, 0 }, -- 3 columns, each with 33% width
```
### Header / Footer
Header/Footer is a link to another custom window - you use its contents to set what is seen in the header/footer. Use the Header/Footer index if you wish to update it with [State Flags](/lua/features/customwindow/stateFlags.md)

```lua
headerWindowID = 0, -- Index to another custom window to use as header
footerWindowID = 3, -- Index to another custom window to use as footer
```
Each Header/Footer can use its own [layout](/lua/features/customwindow/window.md#layout)

### Overlays Setup for Icons
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

---

## Components

Each window contains a list of components, every component has an Index starting from `1`
```lua
data = {
    ... -- Window components
}
```

### Text
```lua
{
	text = {
		default = "<c:FFD>Leon parts from Defeating World Bosses\n[Ether, Elan, Beast Mountain]",
	},
},
```
Display a block of text [Uses localization strings](scriptlocal.md#script-localization-sirin-026)


#### Text Buttons
<img style="border:1px solid black" src="img/sirin_cwbtn.png"/>

If the button [State Flags](/lua/features/customwindow/stateFlags.md) is set - Text becomes Text Button


#### Text Counters
<img style="border:1px solid black" src="img/sirin_cwcounter.png"/>

If the `Durability` / `Durability Max` values are set [State Flags](/lua/features/customwindow/stateFlags.md) - Text becomes a counter

Text entered is placed directly after `3/4`

---

#### Text Formatting
Enter tags to enrich text output with countdown timers and date timecodes 

Formatting also works for [Text Counters](#text-counters) and [Text Buttons](#text-buttons)

| Bit (Right to Left) | Action|
|-------|------------------------------|
| <c:F00>     | Change color of text (RGB color code)|
| <d:1750866430>     | Format Epoch timestamp to Date |
| <e:1750866430>     | Format Epoch timestamp to show time elapsed since date|
| <t:1750866430>   | Format Epoch timestamp to show countdown timer|

---

### Icon / Sprites
```lua
{
    icon = { 4, 13, 14, 0 },
	description = {
		default = "on hover text", -- Optional Hover Text
    },
},
```

If the button [State Flag](/lua/features/customwindow/stateFlags.md) is set sprite functions as a button


* `4` - Sprite Sheet Index
* `13` - Sprite Group within sprite sheet
* `4` - Sprite Image Index
*  `0` - Optional Index for Icon, If a sprite sheet contains a grid of images use this to select from the grid

| Index | Name             | Index | Name             |
|--------|------------------|--------|------------------|
| 0      | MOUSE            | 25     | TRUNK            |
| 1      | COMMON           | 26     | CRIBATTLE        |
| 3      | LOADING          | 27     | ITEMCOMBINE      |
| 4      | MAIN             | 28     | PATRIARCH        |
| 5      | SYSTEM           | 29     | UNMANNEDMINER    |
| 6      | INVENTORY        | 30     | CASHSHOP         |
| 7      | MAPLOADING       | 31     | BELL             |
| 8      | ITEM             | 32     | CORA             |
| 9      | SHOP             | 33     | ACC              |
| 10     | OREPROC          | 34     | LIBRARY          |
| 12     | EXCHANGE         | 35     | JOURNAL          |
| 13     | SUMMON           | 36     | MAGICENCHANT     |
| 14     | ITEMMAKE         | 37     | TALICENCHANT     |
| 15     | ITEMUPGRADE      | 38     | TABINDEX         |
| 16     | TRADE            | 39     | SUPPLYBOX        |
| 17     | DUNGEON          | 40     | MACRO            |
| 18     | UNIT             | 41     | POST             |
| 19     | UNITPARTS        | 42     | SOCKETSTATE      |
| 20     | CLASS            | 43     | SKILLWINDOW      |
| 21     | TUTORIAL         | 44     | FORCEWINDOW      |
| 22     | PVP              | 45     | CHARINFO         |
| 23     | GUILD            |      |               |
| 24     | EMBLEM           |        |                  |

#### Custom Tooltips for Sprites
<img style="border:1px solid black" src="img/sirin_cwtooltip.png"/>

> If the button [State Flags](/lua/features/customwindow/stateFlags.md) is set sprite functions as a button

```lua
{
	icon = { 8, 0, 26, 173 },
	description = { -- Optional.
		default = "custom tooltip",
	},
	durability = 0, -- Optional.
		tooltip = { -- Optional.
		name = {
			text = {
				default = "Pseudo name",
				},
			color = 0xFF00FF00,
		},

		info = {
			default = {
				{ "Left 1", "Right 1" },
				{ "Left 2", "Right 2" },
				{ "Left 3", "Right 3" },
			},
		},
	},
},
```
Custom Tooltip also [Uses localization strings](scriptlocal.md#script-localization-sirin-026) to ensure the correct language is displayed

---

### Items and Item Tooltips
<img style="border:1px solid black" src="img/sirin_cwitem.png"/>

> If the button [State Flags](/lua/features/customwindow/stateFlags.md) is set item functions as a button


```lua
{
	item = "iwsxb50",
	description = {
		default = "Text used in item tooltip [description]",
	},
    upgrade = 0x6FF00000,
	durability = 0,
},
```

```lua
item = "iwsxb50",
```
Server item code. Used to display item icon and tooltip
### Description
```lua
description = {
		default = "Text used in item tooltip [description]",
},
```
Display text in the [description] section of tooltip [Uses localization strings](scriptlocal.md#script-localization-sirin-026) and [formatting](#text-formatting)
### Upgrade
```lua
upgrade = 0x6FF00000,
```
Item upgrade string 

```lua
{ "iubwb65", { "5fffff55", "7f555555"} }  --Random between 5 to 7 slots with 2 to 6 favour talics
```
Sets both the upgrade and slot count on the weapon/armour with a range of two upgrades
1) `ItemCode` - weapon/armour Code
2) `String` - Min slot count and inserted talics
3) `String` - Max slot count and inserted talics

|   | Breakdown   |
|---|---|
| `3fffffff`  | Full code  |
| `3`  | Slots on weapon/armour  `0 to 7` |
| `fffffff`  | The 7 talics inserted  |

|   | Talic   | |  |    | |
|---|---|---|---|---|---|
| F  | None  | 5  | Favor  | B  | Grace  |
| 0  | Keen  | 6  | Wisdom  | C  | Mercy  |
| 1  | Destruction  | 7  | SacredFire  | D  | Resto  |
| 2  | Darkness  | 8  | Belief  |
| 3  | Chaos  | 9  | Guard  |
| 4  | Hatred  | A  | Glory  |

### Item Durability
```lua
durability = 5,
```
Used to display Skin data or Potion stacks. This value is displayed differently depending on item type

---

## Combining components to construct UI
To construct your UI first decide on the [layout](#layout) 

We will pick `5 columns for items`, `1 column of Text` to fill remaining space, `1 Button of 100 width` and a `final item`

#### 8 columns total

So our static data needs to fill this. 

> Using [Flags](stateFlags.md#state-flags) Hide/Show data components so we could have 9 components to fill 8 columns. \
> But item 9 is only shown to ACC players and item 8 is only shown to Bellato/Cora.

With a mixture of static data in your Custom Window script, and sending [State Flag](stateFlags.md#state-flags) updates you can display changes in your UI.

```lua
layout = { 50, 50, 50, 50, 50, 0, 100, 50 },
data = {
-- Fraust
		{
			item = "iyfil01",
			description = {
					default = "<c:a00>Info from the custom script about this item, maybe it expires at <d:1720064800>",
				},
			durability = 5,
		},
		{
			item = "iyfil02",
			description = {
					default = "<c:a00>Info from the custom script about this item, maybe it expires at <d:1720064800>",
				},
			durability = 5,
		},
		{
			item = "iyfil03",
			description = {
					default = "<c:a00>Info from the custom script about this item, maybe it expires at <d:1720064800>",
				},
			durability = 5,
		},
		{
			item = "iyfil04",
			description = {
					default = "<c:a00>Info from the custom script about this item, maybe it expires at <d:1720064800>",
				},
			durability = 5,
		},
		{
			item = "imleo01",
			description = {
					default = "<c:FF0>Obtain this from the [Hora Leon] Dungeon 10%% chance from Final Boss [Baal Hammon]",
				},
			durability = 5,
		},
		{
			text = {
				default = "Craft Leon Hora Fraust (+5) \nCraft Time: 24 / 12 Hours\nCost: 6,000,000"
			}
		},
		{
			text = {
				default = "Begin Craft"
			},
			description = {
					default = "<c:FF0>Crafting Available at <d:1720064800>",
				},
		},
		{
			item = "iwlxb50",
			description = {
					default = "<c:F0F>Info from the custom script about this item, maybe it expires at <d:1720064800>",
				},
			upgrade = 0x6FF00000,
			durability = 0,
		},
}
```
