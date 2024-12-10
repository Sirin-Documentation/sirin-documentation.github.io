# Quests

## Global Reseting of Quests [Sirin 0.34+]

Configuration file found in `config-guard\ModNPCQuestHistory.lua`

Allows for setting global reset times for quests - daily, weekly and monthly

```lua
-- Configuration BEGIN
-- table. Global reset for daily quests.
config.DailyReset = {
	hour = 10,
	minute = 0,
}

-- table. Global reset for weekly quests.
config.WeeklyReset = {
	dayOfWeek = 3, -- Sunday - 0, Monday - 1 ...
	hour = 10,
	minute = 0,
}

-- table. Global reset for monthly quests.
config.MonthlyReset = {
	day = 15,
	hour = 10,
	minute = 0,
}
```

#### Using the global reset
Quests are setup as a repeatable quest Quest.xlsx (Using the parser)
* `IsRepeat` = `1`
* `RepeatTime` = `Waiting Time Between completing quest and re-taking it`

> If a quest is using the global reset ~ Then completing a daily quest at 22:30 (with a global reset of 00:00) \
> The quest can be taken again at 00:00

Set the `RepeatTime` __exactly__ to one of the following values to use the global reset

* `24 hours * 60 mins * 60 secs` = `86400` Seconds in 24 hours - Daily Reset

* `7 days * 24 hours * 60 mins * 60 secs` = `604800` Seconds in 7 days - Weekly Reset

* `30 days * 24 hours * 60 mins * 60 secs` = `2592000` Seconds in 30 days - Monthly Reset

> Using any value outside of this will use the default behaviour

## Expanding Quest limit [Sirin 0.34+]

Configuration file found in `config-guard\ModNPCQuestHistory.lua`

```lua

-- integer. How many normal quests player can take. Oldest quest poped in case of overflow. Default 20.
config.NormalQuestNum = 20

-- integer. How many NPC quests player can take. In case of overflow nothng poped out. Default 5.
config.NPCQuestNum = 5

```

>> There is a `MAX` number of 30 quests that can be active but 30 can be split between normal quests and NPC quests. 

`Valid`
* config.NormalQuestNum = 15
* config.NPCQuestNum = 15

> Total doesn't exceed 30 between both NPC and Normal

`Invalid`
* config.NormalQuestNum = 20
* config.NPCQuestNum = 15

> Total exceeds 30

