# Server Portals

All files with the `.lua` file extension will be read as `Loot Box Scripts` in the `sirin-lua\DynamicPortals` folder

>> Portals can be reloaded in game without restarting of the ZoneServer \
>> Using the GM command `%rift reload`

```lua
test_portal = { -- Any unique name. Do not use spaces in names!
	portalType = 0, -- 0 Rift (map to map)
	srcMap = "NeutralA", -- Portal Entrance map
	srcPos = {
		{-6162, 1124, -4876, 0}, -- Coordinates x, y, z, layer (layer is reserverd for future purposes.)
	},
	dstMap = "NeutralA", -- Portal Exit map
	dstPos = {
		{-8627, 1124, -5481, 0}, -- Coordinates x, y, z, layer (layer is reserverd for future purposes.)
	},
	buttonName = {
			default = "Text For Button"
	},
	description = {
			default = "Description"
	},

	... -- Extra options

	openSchedule = {every = {minute = {val = 5}}}
}, -- <- necessary comma between portals
```

Above is the minimum required to open a Portal,  but many extra options can be added

> buttonName

```lua
	buttonName = {
		default = "Text For Button"
		-- strRU = "", -- Russian
		-- strCN = "", -- Chinese
		-- strJP = "", -- Japanese
	},
```

`String` -- Text that is displayed on the button  [Additional languages can be set](scriptlocal) [Sirin 0.26+]

> description

```lua
	description = {
		default = "Description Line 1\nDescription Line 2 "
		-- strRU = "", -- Russian
		-- strCN = "", -- Chinese
		-- strJP = "", -- Japanese
	},
```

`String` -- Description of the portal displayed in the ui  [Additional languages can be set](scriptlocal) [Sirin 0.26+]

Long description lines can be split using \n

> announceMsg

```lua
announceMsg = { -- Global chat announce
	onOpen = { -- Announce on open.
		default = "Portal Opened", -- If section exists you must provide default english description.
		-- strKR = "", -- Korean
		-- strCN = "", -- Chinese
		-- strJP = "", -- Japanese
		-- strRU = "", -- Russian
		-- strTW = "", -- Chinese (Taiwan)
		-- strTH = "", -- Thai
		-- strTR = "", -- Turkish
	},
	onClose = { -- Announce on close.
		default = "Portal closed", -- If section exists you must provide default english description.
	},
},
```
`String` -- Text that is displayed  [Additional languages can be set](scriptlocal) [Sirin 0.26+]


Annouces to the server when a portal opens or closes

> probability

```lua
probability = 50, -- default 100%
```
`Number` -- Percent probability of the portal opening `1 to 100`

> minLevel

```lua
minLevel = -1,
```
`Number` -- Minimum Level to use the portal, `-1` No min level

> maxLevel

```lua
maxLevel = -1,
```
`Number` -- Maximum Level to use the portal, `-1` No max level

> useCount

```lua
useCount = 200,
```
`Number` -- Number of times a portal can be used before closing

> useCount

```lua
pvpGradeLimit = 7,
```
`Number 0-7` -- PVP grade required to use the portal `8knot`

> patriarchGroupLimit

```lua
patriarchGroupLimit = {1, 2, 7},
```
`List of` `Number` -- Archon positions required to use the portal 

| Left Side  | Positions   | Right Side |
|---|---|---|
| 1  | Race Leader  | |
| 2   | Consul | 6 |
| 3   | Attack Officer | 7 |
| 4   | Defence Officer | 8 |
| 5   | Support Officer | 9 |

```lua
patriarchGroupLimit = {-1, -2, -7},
```
`List of` `Negative Number` -- Archon positions _excluded_ from using the portal 

> raceLimit

```lua
raceLimit = {0, 1, 2},
```
`List of` `Number` -- Races able to use the portal

| Number  | Race   |
|---|---|
| 0  | Accretia  |
| 1   | Bellato |
| 2   | Cora |

> itemConsume

```lua
itemConsume = {
	{
	itemCode = "iwstb65",
	quantity = 1,
	},
	{
		-- any number of groups can be added
	},
},
```
`itemCode` -- Item Code to check for if the player uses the portal \
`quantity` = `Number` -- Quantity to take for using the portal. Value of `0,` Item must be in inventory but not consumed


> haveEffectRequire

```lua
haveEffectRequire = {
	[25] = { above = 1.5,}, -- condition passed if ResourceItem effect val > 1.5
},
```
or
```lua
haveEffectRequire = {
	[1] = { above = -2.0, below = 0.0,}, -- condition passed if have effect > -2.0 and < 0.0
	-- [3] = { below = 3.7,}, -- condition passed if have effect < 3.7
	-- [4] = { aboveEq = 1.5,}, -- condition passed if have effect >= 1.5
	-- [5] = { aboveEq = -2.0, belowEq = 0.0,}, -- condition passed if have effect >= -2.0 and <= 0.0
	-- [6] = { belowEq = 3.7,}, -- condition passed if have effect <= 3.7
	-- [7] = { above = 0, belowEq = 5.0,}, -- condition passed if have effect > 0 and <= 5.0
},
```
`List of`

[`Resource Effect ID`] = `Condition` -- Effects from ResourceItem.dat `Eff1`,`Val1`

If the Resource Item in inventory passes the condition the portal can be entered

> itemRequire

```lua
	itemRequire = { -- entrance based on level/grade/upgarde of equipmnet
		_upper = { -- following are options. if any those satisfied then requirement passed.
			{
				grade = 0, -- 0 - white 1, intense 
				lv = 50,
				upgLv = 5, -- Upgrade level (number of inserted talics. just number. talics type ignored)
			},
			{
				grade = 1, -- 0 - white 1, intense 
				lv = 45,
				upgLv = 4, -- Upgrade level (number of inserted talics. just number. talics type ignored)
			},
			{
				-- Extra checks for _upper
			},
		},
		_lower = {},
		_gloves = {},
		_shoes = {},
		_helmet = {},
		_shield = {},
		_weapon = {},
		_cloak = {},
	},
```
`grade` -- Item grade \
`lv` -- Item Level \
`upgLv` -- Number of talics inserted into the item \

Equipped Armor / Weapons required to use the portal. If all checks pass the portal can be entered

> OpenSchedule

```lua
openSchedule = {
	-- See below for schedule options
},
```

Open schedule is required for the portal to open. Otherwise the GM command `%rift` has to be used

> CloseSchedule
```lua
closeSchedule = {
	-- See below for schedule options
},
```

Close schedule is optional

> Open/Close Schedules

####  _Pick one of the following_	  for both OpenSchedule and CloseSchedule


```lua
absolute = { -- (open once)
	year = 2023,
	month = 2, -- 0-Jan, 1-Feb ...
	day = 18, -- 1-31
	hour = 2, -- 0-24
	minute = 13, -- 0-59
	second = 0, -- 0-59
},
```
Opens the portal only once at this specific time and date

`or`

```lua
after = { -- time since server startup (open once)
			years = 1, -- 365 days
			months = 2, -- 30 days
			days = 3,
			hours = 4,
			minutes = 5,
			seconds = 6,
		},
```
Opens the portal only once at this specific after the sever is started

`or`

```lua
every = {
	
},
```
Opens the portal on a timer depending which condition is used below

```lua
every = {
	dayOfMonth = {
		{
			val = 1, -- 1 to 31
			offset = { -- optional
			hour = 13,
			minute = 30,
			},
		},
		{
			-- additional days
		}
	},
},
```
`Val` = `Number` -- Number of day in the month \
`Offset` = `Group` -- Offset time from the start of the day

```lua
every = {
	dayOfWeek = {
		{
			val = 1, -- 0 Sun, 1 Mon ...
			offset = { -- optional
			hour = 13,
			minute = 30,
			},
		},
		{
			-- additional days
		}
	},
},
```
`Val` = `Number` -- Number of day in the week \
`Offset` = `Group` -- Offset time from the start of the day


```lua
every = {
	day = {
		{
			hour = 10,
			minute = 30,
		},
		{
			-- additional times of day
		}
	},
},
```
`Val` = `Number` -- Number of day in the week \
`Offset` = `Group` -- Offset time from the start of the day

```lua
every = {
	hour = {
		val = 2, --  repeat in hours: every 1 hour, every 2 hours, 3, 4, 6, 8, 12. (24 % val == 0)
		offset = { -- optional
			hour = 0,
			minute = 30,
		},
	},
},
```
`Val` = `Number` -- Number of hours before re-opening the portal \
`Offset` = `Group` -- Offset time from the start of the day. Must be smaller than `Val`

```lua
every = {
	minute = {
		val = 20, 
		offset = {  -- optional
			minute = 3,
		},
	},
},
```
`Val` = `Number` -- Number of minutes before re-opening the portal \
`Offset` = `minute` -- Offset in minuites from the start of the day

# Examples

```lua
example_rift2 = {
	portalType = 0, -- 0 Rift (map to map)
	srcMap = "NeutralC",
	srcPos = {6980, -154, 1150}, -- x,y,z
	dstMap = "NeutralC",
	dstPos = {7475, -157, 1306}, -- x,y,z

	buttonName = {
			strEN = "Weapon Check Portal"
	},
	description = {
			strEN = "Requires level 45+ weapon equipped"
	},

	-- Requires level 45 weapon equippped
	itemRequire = {
		_weapon = { 
			{
				grade = 1, -- 1, intense 
				lv = 45,
			},
		},
	},

	-- Opens in 2023 and has never closed, so always open
	openSchedule = {
		absolute = { -- (open once)
			year = 2023,
			month = 2, -- 0-Jan, 1-Feb ...
			day = 18, -- 1-31
			hour = 2, -- 0-24
			minute = 13, -- 0-59
			second = 0, -- 0-59
		},
	}
},
```