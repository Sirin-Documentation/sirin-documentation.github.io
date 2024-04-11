# mainThread

## Functions

#### teleportPlayer

> sirin.mainThread.teleportPlayer(pPlayer, pMap, x, y, z, 0)

`CPlayer` `pPlayer` - Player\
`CMapData` `pMap` - Valid Map\
`Number` `x` - Coord x\
`Number` `y` - Coord y\
`Number` `z` - Coord z\
`Number` `layer` - (optional) [Map Layer](gmcommandsadv.md#create-new-map-layers)

or 

> sirin.mainThread.teleportPlayer(dwPlayerSerial, dwDstMapIndex, x, y, z, 0)

`Number` `pPlayer` - Player Serial\
`Number` `dwDstMapIndex` - Map serial\
`Number` `x` - Coord x\
`Number` `y` - Coord y\
`Number` `z` - Coord z\
`Number` `layer` - (optional) [Map Layer](gmcommandsadv.md#create-new-map-layers)

>> Returns

`Number` - Error code
- `0`   Sucessful teleport
- `1`   Invalid map
- `2`   Failed
- `3`   Invalid teleport position
- `4`   Invalid map type for layers
- `5`   Layer not active

#### giveItemByName

> sirin.mainThread.giveItemByName(pszName, pszItemCode, qwDur, dwUpgrade, dwT, bSameStack)

`String` `pszName` - Player Name\
`String` `pszItemCode` - Item Code\
`Number` `qwDur` - [Durability Value](lua/formulas.md#durability-value)\
`Number` `dwUpgrade` - Max slot count and inserted talics [Upgrade Value](lua/formulas.md#upgrade-value)\
`Number` `dwT` - Redefines time on Timed Item. 0 uses default from script (seconds)\
`Number` `bSameStack` - Inserts item into an existing stack

#### giveItemBySerial

> sirin.mainThread.giveItemBySerial(dwSerial, pszItemCode, qwDur, dwUpgrade, dwT, bSameStack)

`Number` `dwSerial` - Player Serial\
`String` `pszItemCode` - Item Code\
`Number` `qwDur` - [Durability Value](lua/formulas.md#durability-value)\
`Number` `dwUpgrade` - Max slot count and inserted talics [Upgrade Value](lua/formulas.md#upgrade-value)\
`Number` `dwT` - Redefines time on Timed Item. 0 uses default from script (seconds)\
`Number` `bSameStack` - Inserts item into an existing stack

#### takeItemBySerial

> sirin.mainThread.takeItemBySerial(dwSerial, pszItemCode, dwUpgrade, qwID, dwStorageMask, nNum)

`Number` `dwSerial` - Player Serial\
`String` `pszItemCode` - Item Code\
`Number` `dwUpgrade` - Max slot count and inserted talics [Upgrade Value](lua/formulas.md#upgrade-value)\
`Number` `qwID` - Unique item ID (find in item logs)\
`Number` `dwStorageMask` - Inventories to search [Upgrade Value](lua/formulas.md#)\

#### getPlayerBySerial

> sirin.mainThread.getPlayerBySerial(dwSerial)

`Number` `dwSerial` - Player Serial\

>> returns

`CPlayer` - Player

#### objectToPlayer

> sirin.mainThread.objectToPlayer(pGameObject)

`CGameObject` `pGameObject` - Generic Game Object\

>> returns

`CPlayer` - Player

#### getMapData

> sirin.mainThread.getMapData(dwIndex)

`Number` `dwIndex` - Map Index\

>> returns

`CMapData` - Map

#### createMonster

> sirin.mainThread.createMonster(pMap, wLayerIndex, x, y, z, pszMonsterCode, pParent, bRobExp, bRewardExp, bDungeon, bWithoutFail, bApplyRobExpField)

`CMapData` `pMap` - Map
`Number` `wLayerIndex` - (default 0) [Map Layer](gmcommandsadv.md#create-new-map-layers)
`Number` `x` - Coord x\
`Number` `y` - Coord y\
`Number` `z` - Coord z\
`String` `pszMonsterCode` - Monster Code\
`CMonster` `pParent` - Parent Monster\
`Bool` `bRobExp` - Will take exp on death\
`Bool` `bRewardExp` - Will reward exp\
`Bool` `bDungeon` - Is Dungeon Monster\
`Bool` `bWithoutFail`
`Bool` `bApplyRobExpField`

>> Returns 

`CMonster` - Monster Spawned

#### createItemBox

> sirin.mainThread.createItemBox(pszItemCode, dwUpgrade, qwDurPoint, dwLendTime, pOwner, bPartyShare, byCreateCode, pMap, wLayerIndex, x, y, z, bHide)

`String` `pszItemCode` - Item Code\
`Number` `dwUpgrade` - Max slot count and inserted talics [Upgrade Value](lua/formulas.md#upgrade-value)\
`Number` `qwDurPoint` - [Durability Value](lua/formulas.md#durability-value)\
`Number` `dwLendTime` - Time on ground\
`CPlayer` `pOwner` - Owner of ground item\
`Bool` `bPartyShare` - Party Sharable\
`Number` `byCreateCode` - Create Code\
`CMapData` `pMap` - Map
`Number` `wLayerIndex` - (default 0) [Map Layer](gmcommandsadv.md#create-new-map-layers)
`Number` `x` - Coord x\
`Number` `y` - Coord y\
`Number` `z` - Coord z\
`Bool` `bHide` - Is Hidden

>> Returns

`CItemBox` - Box Spawned

## Members

> `CMapOperation` sirin.mainThread:g_MapOper


