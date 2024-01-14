# Loot Boxes Config

Basic configuration is set in `sirin-scripts\config-guard\ModBoxOpen.lua`

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

# Loot Boxes (BoxItemOut)

>> Loot boxes can be reloaded in game without restarting of the ZoneServer \
>> Using the GM command `%boxout reload`

All files with the `.lua` file extension will be read as `Loot Box Scripts` in the `sirin-scripts\BoxItemOut` folder

```lua
bxgem01 = {
...
}, <- necessary comma between sections 
```

`bxgem01 ` = `Server Box Item Code`  This box item has to exist in the server `boxItem.dat` But its config will be handled by the script instead

```lua
bxgem01 = {
	isSameRaceDrop = false -- Type: bool. If true, then items belonged to other race excluded
	isAllowEmptyBox = false -- Type: bool. If true and no suitable drop found then box consumed else error send to client.
	boxOutList = {
		{
			dropRateUpperMargin = 0.1 -- Type: float. Possible values 1/32768 to 1.0 responsible for group drop rate
			multiDrop = false -- Type bool. Drop all items from this group?
			dropGroupData = {
				{
					itemCode = "iyyyy01" -- Type string. Item code.
					durability_or_upgrade = 1 -- Optional. Type: integer or string or table.
											-- For stackable items - size of stack, for animus/force item - level, for armour/weapon - upgrade,
											-- siege kit/ammo - durability.
											-- If table then represents range for random choice. If missing - default value applied.
											-- See examples below.
				}, -- <- necessary comma between sections
				{
					-- 
				},
			}
		},
		{
			--  Next drop group object
		},
	}
}
```
### Simple Example

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

##### 3 loot drop sections
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

# Example Results
Opening this box would give one of the following
1) Everything from `group 1`  `sklu001` + `sklu002` + `sklu005 (modified with 10k shots)`
2) One summon reaver from `group 2` `ijccc01 (modified to level 50)`
3) Between 10 to 40 pieces of iyyyy02 from `group 3`

***

# Advanced (durability_or_upgrade)

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









