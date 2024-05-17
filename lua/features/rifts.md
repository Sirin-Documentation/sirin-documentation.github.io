# Rifts

All files with the `.lua` file extension will be read as `Rift Scripts` in the `sirin-lua\Rifts` folder

<img style="border:1px solid black" src="img/sirin_rift.jpg"/>

>> rifts can be reloaded in game without restarting of the ZoneServer \
>> Using the GM command `%rift reload`



```lua
simpleRift = {
    portalType = 0,
    srcMap = "NeutralB",
	srcPos = {
		{-7277, 622, 5888, 0},
	},
	dstMap = "NeutralB",
	dstPos = {
		{-7098, 622, 5639, 0},
	},

	buttonName = {
		default = 'Enter Simple Rift',
	},
	description = {
		default = 'Description line 1\nDescription line 2',
	},

    onOpen = function (pLuaRift)
		local announceMsg = { 
			default = "Simple Rift just opened",
		}
		netMgr.SendGlobalChatData(announceMsg, CHAT_TYPE.System, ANN_TYPE.mid3, nil, 0xFFFF0000) -- ARGB
	end,

    onClose = function (pLuaRift)
		local announceMsg = { 
			default = "Simple Rift closed",
		}
		netMgr.SendGlobalChatData(announceMsg, CHAT_TYPE.System, ANN_TYPE.mid3, nil, 0xFFFF0000) -- ARGB
	end,

    onCheckUseConditions = function (pLuaRift, pPlayer)
		return riftMgr:canUseRift(pLuaRift, pPlayer)
	end,

	onUse = function (pLuaRift, pPlayer)
		riftMgr:onUse(pLuaRift, pPlayer)
	end,

    openSchedule = {
        absolute = { -- Open once never close
			year = 2023,
			month = 2,
			day = 18,
			hour = 2,
			minute = 13,
			second = 0,
		},
    },

},
}, -- <- necessary comma between rifts
```

Above is the minimum required to open a rift,  but many extra options can be added


### onOpen

Executes when a rift opens - Script your own logic here

```lua
onOpen = function (pLuaRift)
	local announceMsg = { default = "Simple Rift just opened" }

    -- Sends a global message to all players
	netMgr.SendGlobalChatData(announceMsg, CHAT_TYPE.System, ANN_TYPE.mid3, nil, 0xFFFF0000)
end,
```

> View the Lua API to see all available options for your own scripts

### onClose

Executes when a rift closes - Script your own logic here

```lua
onClose = function (pLuaRift)
	local announceMsg = { default = "Simple Rift just closed" }

    -- Sends a global message to all players
	netMgr.SendGlobalChatData(announceMsg, CHAT_TYPE.System, ANN_TYPE.mid3, nil, 0xFFFF0000)
end,
```

> View the Lua API to see all available options for your own scripts

### onCheckUseConditions

Executes when checking if a player can use the rift or not

```lua
onCheckUseConditions = function (pLuaRift, pPlayer)
    -- 
	return riftMgr:canUseRift(pLuaRift, pPlayer)
end,
```

`return` error code. 

| Error Code  | Desc   |
|---|---|
| 0 | No error Player can use Rift |
| 1 - 254 | Default error codes |
| 255 | Silent error with no message. Use for any custom error messages |


#### riftMgr:canUseRift()

Default rift check, uses the data in `conditions = { }` see the demo `TestRift1.lua` for full info 

### onUse 

Executes when using the Rift; Either click on the rift or clicking on the button in the UI

```lua
onUse = function (pLuaRift, pPlayer)
	riftMgr:onUse(pLuaRift, pPlayer)
end,
```

#### riftMgr:onUse()

Default rift use behaviour - handled in `sirin-lua\_init\mgr\rifts\rifts.lua` This will teleport the player to the rift exit location

### User Interface

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

`String` -- Description of the rift displayed in the ui  [Additional languages can be set](scriptlocal) [Sirin 0.26+]

Long description lines can be split using \n


### Extra Options

> probability

```lua
probability = 50, -- default 100%
```
`Number` -- Percent probability of the rift opening `1 to 100`

> useCount

```lua
useCount = 200,
```
`Number` -- Number of times a rift can be used before closing

### Rift Opening/Close Timers

> OpenSchedule

```lua
openSchedule = {
	-- See below for schedule options
},
```

Open schedule is required for the rift to open. Otherwise the GM command `%rift` has to be used

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
Opens the rift only once at this specific time and date

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
Opens the rift only once at this specific after the sever is started

`or`

```lua
every = {
	
},
```
Opens the rift on a timer depending which condition is used below

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
`Val` = `Number` -- Number of hours before re-opening the rift \
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
`Val` = `Number` -- Number of minutes before re-opening the rift \
`Offset` = `minute` -- Offset in minuites from the start of the day
