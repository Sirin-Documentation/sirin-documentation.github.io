# Potion Effects


All files with the `.lua` file extension will be read as `Potion Scripts` in the `sirin-scripts\PotionEffect` folder

>> Potion Effects can be reloaded in game without restarting of the ZoneServer \
>> Using the GM command `%potioneff reload`

Each file will contain a list of potions with effect codes `Make sure there is a comma at the end of each line `

- ipcsa01 `Potion Server Item Code`
- 1 Potion Effect Code `see below for full list`
- Value for Effect Code `see below, some potion effect use multiple values`

```lua
ipcsa01 = {1, 999}, -- add cash potion 999
ipcsa02 = { 1, 200 }, -- add cash potion 200
ipcsa03 = { 2, 7 }, -- premium potion 7 days
ipcsa04 = { 4, { "00000", false, true, true, true } }, -- spawn flem, exp loss on player death, exp gained on kill
ipcsa05 = { 5, 999 }, -- add 999 contribution points
```

*** 

> 1 | add 999 cash potion

```ipcsa01 = { 1, 999 }, ```

Gives cash points when potion is used

> 2 | add premium potion 7 days.

```ipcsa02 = { 2, 7 },```

Adds premium service days instantly when used - no logout required

> 3 | add premium potion 300 seconds (5 minutes).

```ipcsa03 = { 3, 300 },```

Adds premium service in minutes instantly when used - no logout required

> 4 | summon monster potion.

```ipcsa04 = { 4, { "00000", false, true, true, true } },```

1) `Monster Summon Code`
2) `true`/`false` -- Allow summon in town.
3) `true`/`false` -- Use loose exp based on monster code if monster kills you
4) `true`/`false` -- Force loose exp if monster kills you
5) `true`/`false` -- Reward exp. If true then this monster gives exp


> 5 | add/sub contribution points potion.

```ipcsa05 = { 5, 999 },```

> 6 | add/sub pvp cash potion.

Player must be at least level 40 with a class change to earn PVP cash points

```ipcsa06 = { 6, 999 },```

> 7 | add/sub race currency potion.

```ipcsa07 = { 7, 999 },```

> 8 | add/sub gold currency potion,

```ipcsa08 = { 8, 999 },```

> 9 | add/sub level potion

```ipcsa09 = { 9, { 15, true } },```

1) `number` -- level adjust value can be negative.
2) `true`/`false` -- ignore max level (break cap)

> 3 | set level potion.

```ipcsa10 = { 10, { 55, true, false } },``` 

1) `number` -- level adjust value can be negative.
2) `true`/`false` -- ignore max level (break cap)
3) `true`/`false` -- allow delevel

> Skill buff/debuff potion.

```ipcsa11 = { 11, { "AF000", true, 7 } },```

1) `Skill Code` -- Skill buff/debuff code `AF000` `(Wild rage)`
2) `true`/`false` -- override existing buff
3) `number` -- level

> Force buff/debuff potion.

```ipcsa12 = { 12, { "8005", true, 7 } },```

1) `Force Code` -- Force buff/debuff code `8005` `Velocity [dark]`
2) `true`/`false` -- override existing buff
3) `number` -- level

> Class skill  buff/debuff potion.

```ipcsa13 = { 13, { "7F018", true, 7 } },```

1) `Class Skill Code` -- Class Skill buff/debuff code `7F018` `Howl`
2) `true`/`false` -- override existing buff
3) `number` -- level

> Bullet effect potion.

```ipcsa14 = { 14, { "B", true, 2 } },```

1) `Bullet Effect Code` -- Bullet buff/debuff code `B`
2) `true`/`false` -- override existing buff
3) `number` -- level

>  PT add/sub potion.

```ipcsa15 = { 15, { 3, 10 } },```

1) `number 1-8` -- PT index
2) `number` -- PT adjust value. Can be negative.

|   | PT indexes  |
|---|---|
| 1  | melee  |
| 2  | range  |
| 3  | defence  |
| 4  | shield  |
| 5  | make_weapon  |
| 6  | make_armor  |
| 7  | make_ammo  |
| 8  | special (Summon, MAU, Launcher)  |


>  add/sub Skill group mastery through potion
>  [Baisc] [Expert] [Elite]

```ipcsa16 = { 16, { 13, 5 } },```

1) `number 0 to 47` -- skill index. See Skill.dat script.
2) `number` -- skill group mastery adjust value. Can be negative.

>  add/sub Force group mastery through potion
>  [Baisc] [Expert] [Elite]

```ipcsa17 = { 17, { 9, -15 } },```

1) `number 0 to 23` -- force index. See force.dat script.
2) `number` -- skill group mastery adjust value. Can be negative.

>  add/sub processing/hunting or golden point potion.

```ipcsa18 = { 18, { 0, 999 } },```

1) `number 0 to 2` -- Point type. See below for types
2) `number` -- alter value. Can be negative

|   | Point Type   |
|---|---|
| 0  | Processing Point  |
| 1  | Hunting points  |
| 2  | Golden points  |

***

# Infinite Potions

Configured in `sirin-scripts\config-guard\ModInfinitePotion.lua` potions can be made to be re-used indefinitely. Afer each consumtion the potion remains in the player inventory. Just provide a comma seperated list of server potion item codes. 

```lua
-- Do not remove these lines
sirinGuardConfig.modInfinitePotion = {}
local config = {}
--------------------------

-- Configuration BEGIN

-- array. List of infinite potion codes
config.PotionList = {
--	"ipcsa01", "ipcsa02", "ipcsa03" -- example
}

```

***

# Potion Message

Each potion effect can have its own potion message when used

Configured in `sirin-scripts\config-guard\ModPotionEffect.lua`

```lua
-- array. Template strings that will be displayed in chat message for potion use operations. English string is default and must present.
config.PotionMessage = {}

-- array.
config.PotionMessage[0] = {}
config.PotionMessage[0].EN = "%d Race currency obtained" -- English. Default.
-- config.PotionMessage[0].KR = "" -- Korean
-- config.PotionMessage[0].CN = "" -- Chinese
-- config.PotionMessage[0].JP = "" -- Japanese
-- config.PotionMessage[0].RU = "" -- Russian
-- config.PotionMessage[0].TW = "" -- Chinese (Taiwan)
-- config.PotionMessage[0].TH = "" -- Thai
-- config.PotionMessage[0].TR = "" -- Turkish

config.PotionMessage[5] = {}
config.PotionMessage[5].EN = "%d days %d hours %d minutes %d seconds of Premium service obtained"
```

***

# Cure Potions

As of update `0.23`  Cure potion have 3 behaviours: 
- Default
- Reduce % of remain time
- Reduce fixed amount of seconds

Effect value set in `PotionItemEffect.dat / PotionItemEffect.xlsx (Using the parser)`

### Default (Reduces planned duration)

Effect value `0.0` -> `1.0`

Time passed with debuff taken into account \
If debuff time is `100 seconds` and `25 seconds` passed you have `75 seconds` remaining \
`0.5` Cure potion will reduce remain time by `100 * 0.5 = 50` `75 - 50 = 25 -> debuff planned time adjusted to 50` \
Next use when `20 seconds remaining` will do `50 * 0.5 = 25. 20 - 25 = -5` Debuff removed

### Reduce time by percent of current debuff

Effect value from `-0.0` to `-1.0` Minus symbol to indicate behaviour type

Reduces current debuff time by percent \
If debuff time is `100 seconds` and `25 seconds` passed you have `75 seconds` remaining \
`-0.5` Cure potion will reduce remain time by `50%` -> `75 * 0.5 = 37.5 seconds` \
Next use when `20 seconds remaining` will do `30 * 0.5 = 15`

### Fixed amount reduce

Effect value greater `1.0`

Reduces debuff remain time by absolute value \
If debuff time is `100 seconds` and `25 seconds` passed you have `75 seconds` remaining \
`10.0` cure potion will reduce remain time by `10 seconds`
Next use when `20 seconds remaining` will do 30 - 10 = 20

> When debuff remain time is less than 0 debuff will be removed


