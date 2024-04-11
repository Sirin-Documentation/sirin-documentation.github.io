# GM Commands (Extended)

A number of custom GM commands exist in Sirin with a lot of power `%**` `%#` and `%altp`

## Item Give command

Gives the player(s) targeted by `arg1` item(s) directly to their inventory. If no free space then items added to tbl_ItemCharge queue and will be available after re-login

```gm command
%** arg1 arg2 arg3
```

> `arg1` - Can be any one of

- `*` - Target yourself
- `all` - Target everyone that is online
- `race` - Target everyone of that race  `bellato` or `accretia` or `cora`
- `#` - Target the player you are looking at
- `party` - Target the whole `party` of the player you are looking at
- `guild` - Target the whole `guild` of the player you are looking at
- `MapName` - Target everyone on that map. Can be any valid name name `NeutralC` or `Platform01` etc.
- `PlayerName` - Target player by name  `If player used name bellato (key word), then put it in braces [bellato]`

> `arg2` - Can be any one of

- `Item Code` - Item code of item to spawn
- `Partial Item Code` - Used for spawning armor sets. `awb50` would spawn full armor set `ihawb50`, `ilawb50` etc

> `arg3` - Can be any one of \
> This changes depending on the type of item spawned

- For `Animus and Force reavers` use `Number` - Sets the Level of Reaver/Animus Lv
- For `Stackable Items` use `Number` - Set number of items in the stack
- For `Ammo Items (Ammo or Seige Kits)` use `Number` - Sets number of shots
- For `Equipment` use `String` - Max slot count and inserted talics

|   | Breakdown   |
|---|---|
| `3fffffff`  | Full string  |
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

### Item Give Examples

> Spawning to `self` stack `99` of item `keen talic`
```gm command
%** * irtal01 99
```
`%**` - GM Spawn command \
`*` - Target (Self) \
`Stackable Items` - Set size of stack spawned (99)

> Spawning to `self` set of `Accretia 55 warrior set` `7 slots` with `4 favour` talics inserted
```gm command
%** * awb55 7fff5555 
```
`%**` - GM Spawn command \
`*` - Target (Self) \
`Partial Item Code` -  `a` accretia `w` warrior `b` intense `55` lv 55 \
`String` - Set Max slots `7` and inserted talics `4` of talic type `5` (Favor)

> Spawning to `Players on Map` `Platform01` weapon of `Snow Gun`
```gm command
%** Platform01 iwevt01 
```
`%**` - GM Spawn command \
`*` - Target Everyone on map `Platform01` Ether \
`Item Code` -  Item code for snow spray (snow gun) 

## Alter Currency

Alters the currency of the player(s) targeted by `arg1` affects `dalant`, `gold`, `pvp cash`, `contribution points` etc

```gm command
%altp arg1 arg2 arg3
```

> `arg1` - Can be any one of

- `*` - Target yourself
- `all` - Target everyone that is online
- `race` - Target everyone of that race  `bellato` or `accretia` or `cora`
- `#` - Target the player you are looking at
- `party` - Target the whole `party` of the player you are looking at
- `guild` - Target the whole `guild` of the player you are looking at
- `MapName` - Target everyone on that map. Can be any valid name name `NeutralC` or `Platform01` etc.
- `PlayerName` - Target player by name  `If player used name bellato (key word), then put it in braces [bellato]`

> `arg2` - Can be any one of
- `dalant` - race currency
- `gold` - gold
- `pvp` - PvPCash
- `cp` - Contribution points
- `cash` - Cash coins
- `pp` - Processing points
- `hp` - Hunting points
- `gp` - golden points

> `arg3`

- `Number` - Value to alter the currency points, can be negative to reduce points

### Alter Currency Examples

> Give to `self` race currency `dalant`  `999999`
```gm command
%altp * dalant 999999
```
`%**` - GM Spawn command \
`*` - Target (Self) \
`dalant` - Alter race currency
`Number` - value to alter by (999999)

> Give to `all` race currency `cash`  `500`
```gm command
%altp all cash 500
```
`%**` - GM Spawn command \
`all` - Target (everyone online) \
`cash` - Alter cashshop cash
`Number` - value to alter by (500)

## Remove/replace items

Alters the currency of the player(s) targeted by `arg1` affects `dalant`, `gold`, `pvp cash`, `contribution points` etc

```gm command
%*# arg1 arg2 arg3 arg4 arg5 arg6
```
> `arg1` - Can be any one of

- `*` - Target yourself
- `all` - Target everyone that is online
- `race` - Target everyone of that race  `bellato` or `accretia` or `cora`
- `#` - Target the player you are looking at
- `party` - Target the whole `party` of the player you are looking at
- `guild` - Target the whole `guild` of the player you are looking at
- `MapName` - Target everyone on that map. Can be any valid name name `NeutralC` or `Platform01` etc.
- `PlayerName` - Target player by name  `If player used name bellato (key word), then put it in braces [bellato]`

> `arg2` - Can be any one of (The item to search for)

- `Item Code` - Item code of item to spawn
- `Partial Item Code` - Used for spawning armor sets. `awb50` would spawn full armor set `ihawb50`, `ilawb50` etc

> `arg3` - Mask used to search

- `Number` - scan mask 

`00000001` - inventory \
`00000010` - equipment \
`00000100` - embellish (rings, amulets, bullets) \
`00001000` - force item storage (where you put magic to use it) \
`00010000` - animus storage (same for Force) \
`00100000` - account storage \
`10000000` - extended account storage

`Binary` 00000001 `inventory` \
`Binary` 00000010 `equipment` \
`Binary` 00010000 `animus storage` \

`Binary` 00010011 to `Decimal` = `19`

You can mix values: A binary to Decimal converter can aid with this [Binary to Decimal](https://www.rapidtables.com/convert/number/binary-to-decimal.html)

> `arg4` - Can be any one of

- `0` - replace mode 'all to all'. Takes all items found, give 1 set/stack
- `1` - replace more 'one to all'. Takes only one (first found) item or (1 pcs from stack), give 1 set/stack
- `2` - replace mode 'N to N'. Counts how much of items was found, gives corresponding amount of selected reward.

> `arg5` - Can be any one of (The item to replace with)

- `Item Code` - Item code of item to spawn
- `Partial Item Code` - Used for spawning armor sets. `awb50` would spawn full armor set `ihawb50`, `ilawb50` etc

> `arg6` - Can be any one of \
> This changes depending on the type of item spawned

- For `Animus and Force reavers` use `Number` - Sets the Level of Reaver/Animus Lv
- For `Stackable Items` use `Number` - Set number of items in the stack
- For `Ammo Items (Ammo or Seige Kits)` use `Number` - Sets number of shots
- For `Equipment` use `String` - Max slot count and inserted talics

### Remove/replace items Examples

> Replace `self` find items `iyyyy01` using mask `1` (inventory), using option `2` (Replace all) with item `iyyyy05` stack size of `5`
```gm command
%*# * iyyyy01 1 2 iyyyy05 5
```
`%*#` - GM Spawn command \
`*` - Target (Self) \
`iyyyy01` - Search for item \
`Mask` - scan mask to use `00000001` binary = `1` decimal \
`iyyyy05` - Item to replace with \
`Number` - Stack size of replaced item (5)


> Replace `bellato` find armor set `bwb55` using mask `11` (inventory and equipped), using option `1` (Replace first found) with armor set `bwb55` set slots to 7 and no talics inserted `7fffffff`
> Only one piece of each part replaced.



```gm command
%*# bellato bwb55 11 1 bwb55 7fffffff
```
`%*#` - GM Spawn command \
`*` - Target (All of race bellato) \
`Partial Item Code` - Search for armor set `b` bellato `w` warrior `b` intense `55` lv 55 \
`Mask` - scan mask to use `00000011` binary = `11` decimal \
`bwb55` - Armor set to replace with \
`String` - - Set Max slots `7` and inserted talics `0`

## Teleport player(s)

```gm command
%player to arg1 arg2 arg3 arg4 arg5 arg6
```
`%player to` - GM Command

> arg1 any one of the following

- `*` - Target yourself
- `all` - Target everyone that is online
- `race` - Target everyone of that race  `bellato` or `accretia` or `cora`
- `#` - Target the player you are looking at
- `party` - Target the whole `party` of the player you are looking at
- `guild` - Target the whole `guild` of the player you are looking at
- `MapName` - Target everyone on that map. Can be any valid name name `NeutralC` or `Platform01` etc.
- `PlayerName` - Target player by name  `If player used name bellato (key word), then put it in braces [bellato]`

`arg2` `MapName` - Valid Map Name `NeutralC` or `Platform01` etc \
`arg3` `x` - x coordinate \
`arg4` `y` - y coordinate \
`arg5` `z` - z coordinate \
`arg6` `Layer` - (Optional) Layer of the map. Functions like a dungeon 1 map multiple layers

>> To be able use layers on maps you need to activate them. Use gm command  'layer set'
>> `

## Spawn Monster(s) at Coords

```gm command
%monster to arg1 arg2 arg3 arg4 arg5
```

`%monster to` - GM Command \
`arg1` `MapName` - Valid Map Name `NeutralC` or `Platform01` etc \
`arg2` `x` - x coordinate \
`arg3` `y` - y coordinate \
`arg4` `z` - z coordinate \
`arg5` `MonsterCode` - Monster spawn code `00000 - Flym`
`arg6` `Number` - Number of monsters to spawn

## Create new Map Layers

>> Experimental feature that will be expanded upon

Activate New Map Layer
```gm command
%layer set arg1 arg2
```

`%layer set` - GM Command \
`arg1` `MapName` - Valid Map Name `NeutralC` or `Platform01` etc \
`arg2` `Number` - Index for the new layer.. Default layer is 0


Remove Existing Map Layer
```gm command
%layer set arg1 arg2 arg3
```

`%layer set` - GM Command \
`arg1` `MapName` - Valid Map Name `NeutralC` or `Platform01` etc \
`arg2` `Number` - Index for the layer \
`arg3` `0` - Remove the layer