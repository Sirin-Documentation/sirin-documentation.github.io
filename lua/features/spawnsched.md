# Monster Spawning Schedule [Sirin 0.40+]

Scripted reloadable scheduled spawning of monsters using timers

> Reload monster Spawning Schedule using the GM command `%restart lua thread sirin.guard.mainThread`

***

## Basic Operation

All files with the `.lua` file extension will be read as `Monster Spawning Schedule Scripts` in the `sirin-lua\threads\main\ReloadableScripts\MonsterSchedule` folder

> To enable the example rename the `NeutralB.lua.bak` → `NeutralB.lua` and reload

```lua
local t = {
rule_unique_name = {
	ruleStartTime = "14-01-2020 16:53:00", -- optional
	ruleEndTime = "14-01-2020 16:53:00", -- optional
	monsterCode = "00000",
	schedule = { -- error in schedule disables rule automatically
		scheduleType = "day", -- hour, day, dayOfWeek, dayOfMonth, delay
		intervals = {
			{ -- every day at 10:00
				hour = 10, -- optional. Default 0
				minute = 0, -- optional. Default 0
			},
			{ -- every day at 22:00
				hour = 22, -- optional. Default 0
				minute = 0, -- optional. Default 0
			},
		},
    },
	positions = { -- random selection. error in positions disables rule automatically
		{ "NeutralB", 0, 100, 20, -30, 200 }, -- Map code, layer, x, y, z, [range]. Default range is 0 - exact position.
		{ "NeutralB", 0, 200, 80, -230 },
	},
	window = 60, -- optional. Default 0. value in minutes. Next respawn time +- window / 2
	succRate = 100, -- optional. Default 100
	duration = 0, -- optional. Default 0. value in seconds. If monster not killed in `duration` seconds then despawn monster. if <=0 then no despawn will happen.
},
}

return t
```

***

## Adv Operation

This is a fully editable script. So all the logic for how data is loaded can be adjusted.

> View the fullscript at `sirin-lua\threads\main\_system\manager\autoloot.lua`

Be aware that this script is designed for infrequent spawning of monsters \
Best suited for Pit Bosses or event monster spawning. Trying to replace default frequent spawning mechanics can lead to performance issues.

