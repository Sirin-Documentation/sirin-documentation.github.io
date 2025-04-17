# Auto Loot [Sirin 0.40+]

Allows dropped loot items to be instantly added to the players inventory without the need to manually pick them up

> This is a fully editable script. You can decide how the auto looting works

* If auto looting is possible in Seige Kits / MAU's
* If auto looting is possible within a party
* If a specific item is required to enable auto looting

\+ more options using [Sirin Scripting](lua/threads/MainThread) 

#### Basic operation
`local bNoAutoLoot = true` → `local bNoAutoLoot = false` to enable auto loot

> View the fullscript at `sirin-lua\threads\main\_system\manager\autoloot.lua`
```lua
---@param pKiller CPlayer
---@param pMonster CMonster
---@return boolean
function sirinAutoLootMgr.canUseAutoLoot(pKiller, pMonster)
	local bNoAutoLoot = true
	local pOwner = pKiller
	local bNoBoss = false
	local bNeedFreeSlot = false
	local bNoMAU = false
	local bNoAnimus = false
	local bNoSiegeMode = false
	local bNoParty = false
	local bNoTowers = false
	local bHaveItem = false

    if bNoAutoLoot then -- if auto loot disabled
		return false
	end

	if pKiller.m_pPartyMgr:IsPartyMode() then
		if bNoParty then
			return false
		end

		pOwner = pKiller.m_pPartyMgr:GetLootAuthor()

		if not pOwner then -- loot shared across party
			return false
		end
	end

...
```