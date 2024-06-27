# Event Hooks

> Event hooks via Lua are recomended for intermediate users

Hooking allows your scripts to `fire` when something specific happens on the server

## Addon.lua

> sirin-lua/_init/MainThread/addon.lua

Functions in this file are related to addons/modules specific to Sirin

* Rifts (open/close/use)
* Sirin Login Server

## Extend.lua

> sirin-lua/_init/MainThread/extend.lua

Functions in this file `extend` the existing functionality of an in-game event

`MainThread.CMonster__Destroy` called when a monster is defeated

```lua
---@param pMonster CMonster
---@param byDestroyCode integer
---@param pAttObj CGameObject
function MainThread.CMonster__Destroy(pMonster, byDestroyCode, pAttObj)
	-- Implementation of this function is optional

	if byDestroyCode == 0 and pAttObj and pAttObj.m_ObjID.m_byID == 0 then
		-- Announce the death of monster to server
        NetMgr.monsterLifeStateInform(
			1,
			Sirin.mainThread.baseToMonsterCharacter(pMonster.m_pRecordSet), 
            pMonster.m_pCurMap, 
            Sirin.mainThread.objectToPlayer(pAttObj)
        )
	end
end
```

`MainThread.CPlayer__pc_NewPosStart` called when a Player first spawns

```lua
---@param pPlayer CPlayer
function MainThread.CPlayer__pc_NewPosStart(pPlayer)
	-- Implementation of this function is optional
end
```

Advanced Example `MainThread.CHolyStoneSystem_SetScene` called when the state of a Chip War changes 

Could be used to run a script when the Chip is broken [pHolySys](lua/classes/CHolyStoneSystem#cholystonesystem) contains data on the player that last hit

```lua
---@param pHolySys CHolyStoneSystem
---@param byNumOfTime integer
---@param nSceneCode integer
---@param nPassTime integer
---@param nChangeReason integer
function MainThread.CHolyStoneSystem__SetScene(pHolySys, byNumOfTime, nSceneCode, nPassTime, nChangeReason)
	-- Implementation of this function is optional
end
```

## Replace.lua

> sirin-lua/_init/MainThread/replace.lua

Functions in this file `replace` the existing functionality of an in-game event ignoring any original functionality

Example `MainThread.CPlayer__pc_UpgradeItem` replaces the item upgrade logic with the logic contained in `PlayerMgr.pc_UpgradeItem`

Found at `sirin-lua/_init/mgr/player/player.lua`

```lua
---@param pPlayer CPlayer
---@param pposTalik _STORAGE_POS_INDIV
---@param pposToolItem _STORAGE_POS_INDIV
---@param pposUpgItem _STORAGE_POS_INDIV
---@param jewels table<integer, _STORAGE_POS_INDIV>
function MainThread.CPlayer__pc_UpgradeItem(pPlayer, pposTalik, pposToolItem, pposUpgItem, jewels)
	-- Implementation of this function is optional
	PlayerMgr.pc_UpgradeItem(pPlayer, pposTalik, pposToolItem, pposUpgItem, jewels)
end
```
