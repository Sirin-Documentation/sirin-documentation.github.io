# Loot Boxes [Sirin 0.40+]

Handles the reloadable scripted results of lootbox items - these loot boxes can contain other items with random chance

***

## Basic Operation 

### Enable

Enable using configuration at `sirin-scripts\config-guard\ModBoxOpen.lua`

```lua
config.BoxOpenMode = 0
```

- 0 Mod disabled.  (Use default BoxItemOut)
- 1 Mixed mode. Mod's script in priority but BoxItemOut.dat must be valid.
- 2 Mod's script only. BoxItemOut.dat not required.

```lua
config.UseExistingStack = false
```
`true`/`false` If true then try to fill existing stack first otherwise put item to empty slot every time

### Configure

>> Loot boxes can be reloaded in game without restarting of the ZoneServer \
>> Using the GM command `%boxout reload`

All files with the `.lua` file extension will be read as `Loot Box Scripts` in the `sirin-lua\threads\main\ReloadableScripts\BoxItemOut` folder

```lua
bxgem01 = {
...
}, <- necessary comma between sections 
```

`bxgem01 ` = `Server Box Item Code`  
> This box item has to exist in the server `boxItem.dat` But its config will be handled by the script

```lua
local t = {
bxgem02 = { false, true, -- isSameRaceDrop, isAllowEmptyBox
{
	-- 0.5 = chance *see below
	{ 0.5, true, { {"sklu001"}, {"sklu002"}, {"sklu005", 10000} } },
	{ 0.5, false, { { "ijccc01", 50 }, { "ijccc02", 50 }, { "ijccc03", 50 }, { "ijccc04", 50 }, } },
	{ 0.6, false, { { "iyyyy02", { 10, 40 } }, } },
	-- 1.0 - 0.6 = 0.4 40% of empty box. Empty box have no reward but box consumed.
}},
bxgem03 = { false, true,
{
	-- Next box
	{...},
}},
},

return t
```

### Calculating Lootbox Percentages

<img style="border:1px solid black" src="img/sirin_boxcalc.png"/>

> If all rows of a loot box don't fill whole 1.0 range	
> Remaining chance will give no reward or produce error if `isAllowEmptyBox` is set to false

Example above

```lua
bxgem02 = { false, true, -- isSameRaceDrop, isAllowEmptyBox
{
	{ 0.5, false, {"ipbhp08"} }, -- HP Potion   50% chance
	{ 0.7, false, {"ipbdx03"} }, -- Protect Potion  20% chance
	{ 0.8, false, {"ipbax01"} }, -- Burst Potion  10% chance
}},
```

### Lowest Percent Chance

> Lowest possible value for a row is `0.0000305176` or  `0.00305%` chance

But this can be reduced by using 1 item in a row with 5 (or more) `junk items` 

* See below for using multiple items per row

```lua
bxgem02 = { false, true, -- isSameRaceDrop, isAllowEmptyBox
{
	-- { rate, multidrop, { items } },
	{ 0.0000305176, false, {{"ipbhp08"}, {"iybox01"}, {"iybox01"}, {"iybox01"}, {"iybox01"} },
}},
```

* 0.00061035% chance of rolling reward row
* 99.9993896% chance of getting nothing
* If row rolled - either `ipbhp08` or `iybox01` is given with equal chance

Overall Probability of getting `ipbhp08`  1 / (32768 x 5)  =  0.0006103515625%

### Multiple items per row

> `multiDrop = false` Item is selected from the row with equal chance

```lua
bxgem02 = { false, true, -- isSameRaceDrop, isAllowEmptyBox
{
	-- { rate, multidrop, { items } },
	{ 0.5, false, { {"ipbhp08"}, {"ipbdx03"} } }, -- 50% chance for row, multidrop = false
}},
```

* 50% chance of rolling reward row
* 50% chance of getting nothing  `isAllowEmptyBox = true`
* If row rolled - either `ipbhp08` or `ipbdx03` is given with equal chance



> `multiDrop = true`
Every item in the row is given

```lua
bxgem02 = { false, true, -- isSameRaceDrop, isAllowEmptyBox
{
	-- { rate, multidrop, { items } },
	{ 0.5, true, { {"ipbhp08"}, {"ipbdx03"} } }, -- 50% chance for row, multidrop = true
}},
```

* 50% chance of rolling reward row
* 50% chance of getting nothing
* If row rolled - All items `ipbhp08` and `ipbdx03` are given

### Extra item data (Stacks / Summons / Upgrades / Ammo)

Every item has optional values for the `durability_or_upgrade` parameter. Depending on the item type the value you assign to it differ

> Booty / Stackable Items `iyyyy01`
```lua
{ "iyyyy02", 99 }
```
Sets the stack size of the item given

1) `ItemCode` - Item Code
2) `number` - Amount in a stack

```lua
{ "iyyyy02", { 10, 40 }}
```
Sets the stack size of the item given based on a range of two numbers.
1) `ItemCode` - Item Code
2) `number` - Min amount in a stack
3) `number` - Max amount in a stack

> Force/Animus Reavers
```lua
{ "ijccc03",  65 }
```
Sets the level of the force reaver `1 to 7` or the level of the animus `1 to Max Level`
1) `ItemCode` - Force/Animus Reaver Code
2) `number` - Level

> Seigekit/Ammo
```lua
{"sklu005", 10000}
```
Sets the number of shots for the seigekit/ammo
1) `ItemCode` - weapon/armour Code
2) `number` - Number of shots

> Weapon/Armour
```lua
{ "iwspb65", "3fffffff" }  --3 slots no talics
```
Sets both the upgrade and slot count on the weapon/armour
1) `ItemCode` - weapon/armour Code
2) `String` - String for the slot count and inserted talics

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



### Combined Example (with extra features)

```lua
bxgem02 = { false, true, {
	{ 0.5, true, { {"sklu001"}, {"sklu002"}, {"sklu005", 10000} } },
	{ 0.5, false, { { "ijccc01", 50 }, { "ijccc02", 50 }, { "ijccc03", 50 }, { "ijccc04", 50 }, } },
	{ 0.6, false, { { "iyyyy02", { 10, 40 } }, } },
	-- 1.0 - 0.6 = 0.4 40% of empty box. Empty box have no reward but box consumed.
}},
```

1) `bxgem02` - Server BoxItem code for the box to be opened
2) `false` - `isSameRaceDrop` Disabled so items can given from another race
3) `false` - `isAllowEmptyBox` Send error if no items are given from box (incorrect % rates)

#### 3 Rows
```lua
{ 0.5, true, { {"sklu001"}, {"sklu002"}, {"sklu005", 10000} } },
```
- `0.5` - Droprate
- `true` - MultiDrop so give all items in the list  `sklu001` and `sklu002` and `sklu005`
- `{sklu005, 10000}` - Has some extra data  -> `durability_or_upgrade` as the item is a siege kit, the ammo is modified 10,000 shots

```lua
{ 0.5, false, { { "ijccc01", 50 }, { "ijccc02", 50 }, { "ijccc03", 50 }, { "ijccc04", 50 }, } },
```
- `0.5` - Droprate
- `false` - MultiDrop disabled, so give  1 item from list randomly
- `{ "ijccc01", 50 }` - Has some extra data  -> `durability_or_upgrade` as the item is a summon. The level is modified to 50
```lua
{ 0.6, false, { { "iyyyy02", { 10, 40 } }, } },
```
- `0.6` - Droprate
- `false` - MultiDrop disabled, so give  1 item from list randomly. As there is only 1 item the same is always given
- `{ "iyyyy02", { 10, 40 } }` - Has some extra data -> `durability_or_upgrade` For stackable items - size of stack is modified. \
Randomly a stack of this item between 10 to 40 will be given. 

### Example Results
Opening this box would give one of the following
1) Everything from `group 1`  `sklu001` + `sklu002` + `sklu005 (modified with 10k shots)`
2) One summon reaver from `group 2` `ijccc01 (modified to level 50)`
3) Between 10 to 40 pieces of iyyyy02 from `group 3`

***

## Adv Operation 

Box items can also be used as a player trigger to execute scripts

> You must decrement the stack of items `pCon` when your custom script is executed to consume the box

* Map teleport item - teleporting whole party?
* Fully scripted box item result? Offering more logic than a standard box

\+ more options using [Sirin Scripting](lua/threads/MainThread) 

```lua
-- function execution on box use example.
boxcode2 = function(pPlayer, pCon, pBoxItemFld) CPlayer, _STORAGE_LIST___db_con, _BoxItem_fld
	-- you are respoonsible to decrement box stack using pCon pointer
end,
```







