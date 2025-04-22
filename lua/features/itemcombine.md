# Item Combine

Scripted reloadable item combinations at the Hero NPC

***

## Adv Operation

> Due to the complexity of scripted item combines there is no basic operation

```
Consider using the default CombineTable for basic combines
scripted combines are best used when specific logic is needed (checking player race / class / archon status) 
creating combinations that work on a huge range of items such as the weapon and armor socket extender 
```

All files with the `.lua` file extension will be read as `Combine Scripts` in the `sirin-lua\threads\main\ReloadableScripts\CombineEx` folder

```lua
local combineData = {
	m_strUUID = "example_unique_name",
}

function combineData.init()
	combineData.combineFormula = { { "iycsa13", 1 }, { "iyred01", 2 } }
	combineData.combineReward = { { "ircsa01", 1 }, { "ircsa02", 1 }, { "ircsa03", 1 }, { "ircsa04", 1 }, { "irtal01", 1 }, { "irtal06", 1 }, { "ipcsa01", 1 }, { "ipcsa04", 1 } }
	combineData.price = 0

	combineData.materials_fld = {}
	combineData.materials_num = {}
	combineData.reward_fld = {}
	combineData.reward_num = {}

	for k, v in ipairs(combineData.combineFormula) do
		local byTableCode = Sirin.mainThread.GetItemTableCode(v[1])

		if byTableCode == -1 then
			Sirin.console.LogEx(ConsoleForeground.RED, ConsoleBackground.BLACK, "Lua. Combine Ex. Invalid material item: " .. v[1])
			return
		end

		local pFld = Sirin.mainThread.g_Main:m_tblItemData_get(byTableCode):GetRecordByHash(v[1], 2, 5)

		if not pFld then
			Sirin.console.LogEx(ConsoleForeground.RED, ConsoleBackground.BLACK, "Lua. Combine Ex. Invalid material item: " .. v[1])
			return
		end
```

### Scripted combines requires (4 parts)
* #### m_strUUID
	* The unique ID for your combination
* #### Init
	* Initalize everything needed for the combination
* #### combineChecker
	* Determine if the items inserted into the item combination window are a match to your recipe. The entire check is handled by your script. \
	Ensure the logic is as fast as possible
* #### combineWorker
	* This is the full logic for processing the item combination and showing the results of the combination.


> See skins.lua for inplementation example

***

## Combine Reloading

Combinations can be reloaded either by restarting the lua thread `%restart lua thread sirin.guard.mainThread` or reloading just the combine(s) [Scripted GM Commands](gmcommandsscripted.md#gm-commands-scripted-sirin-040)

Add the following to your GM Commands `sirin-lua\threads\main\ReloadableScripts\GMCommands\SirinCommands.lua`

| Command | FileName | File to Reload |
|---|---|---|
| `%combine reload` | "None" | Reloads All Files in `sirin-lua/threads/main/ReloadableScripts/CombineEx/` |
| `%combine reload socket_extender` | socket_extender | `sirin-lua/threads/main/ReloadableScripts/CombineEx/socket_extender.lua` |
| `%combine reload skins` | skins | `sirin-lua/threads/main/ReloadableScripts/CombineEx/skins.lua` |

```lua
{ "combine reload", "111100", "111",
        function (pPlayer)
            if Sirin.mainThread.getCheatWordNum() < 1 then
                return CombineExMgr.loadScripts()
            else
                local strCombine = Sirin.mainThread.getCheatWord(0)
                local f, err = loadfile(".\\sirin-lua\\threads\\main\\ReloadableScripts\\CombineEx\\" .. strCombine .. ".lua")

                if not f then
                    print(err)
                    return false
                end

                local status, ret = pcall(f)

                if not status then
                    print(ret)
                    return false
                end

                if type(ret) == 'table' then
                    for k, v in pairs(ret) do
						if v.init then
						v.init()
						CombineExMgr.m_Combines[k] = v
						else
						return false
						end
					end
                else
                    return false
                end
            end

            return true
        end
}, -- dont forget separating comma
```

***

## Example (Reskinable Items)

With the example for scripted item combinations, The ability to reskin items was also added

> Item reskinning requires the use of lua item combinations to process all the possible combinations.

The example requires the following items

| Item | Count | Desc   |
|---|---|---|
| `Any Armor/Weapon/Jetpack/Shield` | 2 | `These must match the same type; weapon same handed use`  |
| `Ability Combiner` | 1 | `spawned with iymer01`  |

Combine at the hero NPC or using disposable beeper

<img style="border:1px solid black" src="img/sirin_skin.jpg"/>

> The item with the highest item index will be used as the skin. 
> You can alter this `sirin-lua\threads\main\ReloadableScripts\CombineEx\skins.lua`

#### `Skins.lua` UUID + Init

```lua
local combineData = {
	m_strUUID = "example_unique_name",
}
```

```lua
function combineData.init()
	combineData.combineFormula = { { "iycsa13", 1 }, { "iyred01", 2 } }
	combineData.combineReward = { { "ircsa01", 1 }, { "ircsa02", 1 }, { "ircsa03", 1 }, { "ircsa04", 1 }, { "irtal01", 1 }, { "irtal06", 1 }, { "ipcsa01", 1 }, { "ipcsa04", 1 } }
	combineData.price = 0

	combineData.materials_fld = {}
	combineData.materials_num = {}
	combineData.reward_fld = {}
	combineData.reward_num = {}

	for k, v in ipairs(combineData.combineFormula) do
		local byTableCode = Sirin.mainThread.GetItemTableCode(v[1])

		if byTableCode == -1 then
			Sirin.console.LogEx(ConsoleForeground.RED, ConsoleBackground.BLACK, "Lua. Combine Ex. Invalid material item: " .. v[1])
			return
		end

		local pFld = Sirin.mainThread.g_Main:m_tblItemData_get(byTableCode):GetRecordByHash(v[1], 2, 5)

		if not pFld then
			Sirin.console.LogEx(ConsoleForeground.RED, ConsoleBackground.BLACK, "Lua. Combine Ex. Invalid material item: " .. v[1])
			return
		end

		table.insert(combineData.materials_fld, { byTableCode, pFld.m_dwIndex } )
		table.insert(combineData.materials_num, v[2])
	end

	for k, v in ipairs(combineData.combineReward) do
		local byTableCode = Sirin.mainThread.GetItemTableCode(v[1])

		if byTableCode == -1 then
			Sirin.console.LogEx(ConsoleForeground.RED, ConsoleBackground.BLACK, "Lua. Combine Ex. Invalid reward item: " .. v[1])
			return
		end

		local pFld = Sirin.mainThread.g_Main:m_tblItemData_get(byTableCode):GetRecordByHash(v[1], 2, 5)

		if not pFld then
			Sirin.console.LogEx(ConsoleForeground.RED, ConsoleBackground.BLACK, "Lua. Combine Ex. Invalid reward item: " .. v[1])
			return
		end

		table.insert(combineData.reward_fld, { byTableCode, pFld.m_dwIndex } )
		table.insert(combineData.reward_num, v[2])
	end
end
```

#### `Skins.lua` combineChecker (detecting the correct ingredients)

> Item combinations via Lua are recomended for experienced users

```lua
---@param ppConMats table<integer, _STORAGE_LIST___db_con>
---@return boolean
function combineData.combineChecker(ppConMats)
	repeat
		if #ppConMats ~= 2 then
			break
		end

		local srcNum = { 0, 0 }
		local bInvalidCombine = false

		for _,v in ipairs(ppConMats) do
			if v.m_byTableCode ~= TBL_CODE.booty then
				bInvalidCombine = true
				break
			end

			if v.m_wItemIndex == combineData.materials_fld[1][2] then
				srcNum[1] = srcNum[1] + 1
			elseif v.m_wItemIndex == combineData.materials_fld[2][2] then
				srcNum[2] = srcNum[2] + 1
			else
				break
			end
		end

		for _,v in ipairs(srcNum) do
			if v ~= 1 then
				bInvalidCombine = true
				break
			end
		end

		if bInvalidCombine then
			break
		end

		return true

	until true

	return false
end
  ```

#### `Skins.lua` combineWorker (processing the combination)

```lua
---@param pPlayer CPlayer
---@param ppConMats table<integer, _STORAGE_LIST___db_con>
---@param pipMats table<integer, _combine_ex_item_request_clzo___list>
---@param pSend _combine_ex_item_result_zocl
---@return boolean
function combineData.combineWorker(pPlayer, ppConMats, pipMats, pSend)
	local matIndexTable = { 0, 0 }
	local removeMatNum = clone(combineData.materials_num)

	for k,v in ipairs(ppConMats) do
		if v.m_byTableCode == combineData.materials_fld[1][1] and v.m_wItemIndex == combineData.materials_fld[1][2] then
			matIndexTable[1] = k
		elseif v.m_byTableCode == combineData.materials_fld[2][1] and v.m_wItemIndex == combineData.materials_fld[2][2] then
			matIndexTable[2] = k
		end
	end

	for k,v in ipairs(combineData.materials_fld) do
		if IsOverlapItem(v[1]) and combineData.materials_num[k] ~= pipMats[matIndexTable[k]].byAmount then
			return false
		end
	end

	if combineData.price > 0 and combineData.price > pPlayer.m_Param:GetDalant() then
		return false
	end

	pSend.dwDalant = combineData.price -- not used by client

	if math.random(0, 99) < 50 then
		-- combine success
		pSend.dwCheckKey = (Sirin.mainThread.GetLoopTime() & 0xFFFFFF) >> 8 -- combination check key. do not change. must present.
		pSend.byDlgType = 1 -- 255 error, 0 success selectable, 1 success non selectable, 2 combination failure
		pSend.bySelectItemCount = 0 -- 0 if non selectable combination, or how many items allowed to choice
		pSend.dwResultEffectType = 1 -- not used by client
		pSend.ItemBuff.byItemListNum = #combineData.combineReward -- how many result items
		pSend.dwResultEffectMsgCode = 3605 -- text ID

		for i = 1, pSend.ItemBuff.byItemListNum do
			local RewardItem = pSend.ItemBuff:RewardItemList_get(i - 1)
			RewardItem.Key.byTableCode = combineData.reward_fld[i][1]
			RewardItem.Key.wItemIndex = combineData.reward_fld[i][2]
			RewardItem.Key.byRewardIndex = i - 1 -- not used by client
			RewardItem.dwDur = combineData.reward_num[i]
			RewardItem.dwUpt = 0xFFFFFFFF
		end

		local bySaveErr = pPlayer.m_ItemCombineMgr:UpdateDB_CombineResult(pSend)

		if bySaveErr ~= 0 then
			pSend.byErrCode = bySaveErr
			pSend.byDlgType = 255
		end

		local szBufr = string.format("\r\nCOMBINE_EX[CONSUME]\r\n\tCombine: demo,  num:%d, (D:%d) [%s] : Succ", #combineData.materials_fld, combineData.price, os.date(_, os.time()))
		Sirin.WriteA(pPlayer.m_szItemHistoryFileName, szBufr, false, false)
	else
		-- combine failed
		pSend.byDlgType = 2 -- 255 error, 0 success selectable, 1 success non selectable, 2 combination failure
		pSend.bySelectItemCount = 0
		pSend.ItemBuff.byItemListNum = 0 -- do not change value at this line

		-- decide which items need to be saved. #use_your_brain_here to create your own logic
		removeMatNum[1] = 0 -- we will save iycsa13 material by setting remove value = 0
		--

		for k,v in ipairs(matIndexTable) do
			if removeMatNum[k] ~= 0 then
				local RewardItem = pSend.ItemBuff:RewardItemList_get(pSend.ItemBuff.byItemListNum)
				RewardItem.Key.byTableCode = ppConMats[v].m_byTableCode
				RewardItem.Key.wItemIndex = ppConMats[v].m_wItemIndex
				RewardItem.Key.byRewardIndex = 0 -- not used by client
				RewardItem.dwDur = pipMats[v].byAmount
				RewardItem.dwUpt = ppConMats[v].m_dwLv
				pSend.ItemBuff.byItemListNum = pSend.ItemBuff.byItemListNum + 1
			end
		end

		local szBufr = string.format("\r\nCOMBINE_EX[CONSUME]\r\n\tCombine: demo,  num:%d, (D:%d) [%s] : Fail( %u )", pSend.ItemBuff.byItemListNum, combineData.price, os.date(_, os.time()), pSend.ItemBuff.byItemListNum)
		Sirin.WriteA(pPlayer.m_szItemHistoryFileName, szBufr, false, false)
	end

	for k,v in ipairs(matIndexTable) do
		if removeMatNum[k] ~= 0 then
			pPlayer:Emb_AlterDurPoint(STORAGE_POS.inven, ppConMats[v].m_byStorageIndex, -combineData.materials_num[k], true, true)
			local szBufr = string.format("\t - %s_%u [%u] [%d] Delete", combineData.combineFormula[k][1], ppConMats[v].m_dwDur, combineData.materials_num[k], ppConMats[v].m_lnUID)
			Sirin.WriteA(pPlayer.m_szItemHistoryFileName, szBufr, false, false)
		else
			local szBufr = string.format("\t - %s_%u [%u] [%d]", combineData.combineFormula[k][1], ppConMats[v].m_dwDur, combineData.materials_num[k], ppConMats[v].m_lnUID)
			Sirin.WriteA(pPlayer.m_szItemHistoryFileName, szBufr, false, false)
		end
	end

	if combineData.price > 0 then
		pPlayer:AlterDalant(-combineData.price)
		pPlayer:SendMsg_AlterMoneyInform(0)
	end

	return true
end

return { [combineData.m_strUUID] = combineData }
```

***

## Example (Weapon / Armor socket extender)

Uses any weapon and extends the existing number of sockets (upto 7)

The example requires the following items

| Item | Count | Desc   |
|---|---|---|
| `Any Armor/Weapon/Jetpack/Shield` | 2 | `These must match the same type; weapon same handed use`  |
| `Socket Extender` | 1 | `booty item (20) / index 103`  |

Combine at the hero NPC or using disposable beeper

#### `socket_extender.lua` UUID + Init

Alternate return that includes UUID
```lua
-- end of file
return { ["example socket extender"] = combineData }
```

Nothing in init stage but function must exist
```lua
-- start of file
local combineData = {}

function combineData.init()
end
```
#### `socket_extender.lua` combineChecker (detecting the correct ingredients)

```lua
---@param ppConMats table<integer, _STORAGE_LIST___db_con>
---@return boolean
function combineData.combineChecker(ppConMats)
	repeat
		if #ppConMats > 2 then
			break
		end

		local srcNum = { 0, 0, 0, 0, 0, 0, 0, 0 }
		local bHaveRecipe = false

		for _,v in ipairs(ppConMats) do
			if v.m_byTableCode < 8 then
				srcNum[v.m_byTableCode + 1] = srcNum[v.m_byTableCode + 1] + 1
			end

			-- Socket extender item - booty item (20) / index 103
			if v.m_byTableCode == 20 and v.m_wItemIndex == 103 then
				bHaveRecipe = true
			end
		end

		if not bHaveRecipe then
			break
		end

		for _,v in ipairs(srcNum) do
			if v == 1 then
				return true
			end
		end

	until true

	return false
end
```

#### `socket_extender.lua` combineWorker (processing the combination)

Worker to find current socket count of item, and return item with +1 extra socket

```lua
---@param pPlayer CPlayer
---@param ppConMats table<integer, _STORAGE_LIST___db_con>
---@param pipMats table<integer, _combine_ex_item_request_clzo___list>
---@param pSend _combine_ex_item_result_zocl
---@return boolean
function combineData.combineWorker(pPlayer, ppConMats, pipMats, pSend)
	---@type _STORAGE_LIST___db_con
	local pDstItem = nil
	---@type _STORAGE_LIST___db_con
	local pMaterial = nil
	local nMatSub = 0

	for k,v in ipairs(ppConMats) do
		if v.m_byTableCode == 20 then
			nMatSub = -pipMats[k].byAmount

			if v.m_dwDur < pipMats[k].byAmount or pipMats[k].byAmount ~= 1 then
				return false
			else
				pMaterial = v
			end
		else
			pDstItem = v
		end
	end

	local maxSlot = Sirin.mainThread.GetDefItemUpgSocketNum(pDstItem.m_byTableCode, pDstItem.m_wItemIndex)
	local curSlot = Sirin.mainThread.GetItemUpgLimSocket(pDstItem.m_dwLv)

	if curSlot >= maxSlot then
		return false
	end

	local oldUpg = pDstItem.m_dwLv % 0x10000000
	local newUpg = (curSlot + 1) * 0x10000000 + oldUpg -- Extra slot added

	pSend.byDlgType = 1
	pSend.bySelectItemCount = 0
	pSend.dwDalant = 0
	pSend.dwResultEffectType = 1
	pSend.dwResultEffectMsgCode = 3605
	pSend.ItemBuff.byItemListNum = 1

	local pNewCon = Sirin.mainThread._STORAGE_LIST___storage_con()
	pNewCon.m_byTableCode = pDstItem.m_byTableCode
	pNewCon.m_wItemIndex = pDstItem.m_wItemIndex
	pNewCon.m_dwDur = pDstItem.m_dwDur
	pNewCon.m_dwLv = newUpg
	pNewCon.m_wSerial = pPlayer.m_Param:GetNewItemSerial()
	pNewCon.m_lnUID = pDstItem.m_lnUID
	pNewCon.m_byCsMethod = pDstItem.m_byCsMethod
	pNewCon.m_dwT = pDstItem.m_dwT
	pNewCon.m_dwLendRegdTime = pDstItem.m_dwLendRegdTime

	local RewardItem = pSend.ItemBuff:RewardItemList_get(0)
	RewardItem.Key.byTableCode = pNewCon.m_byTableCode
	RewardItem.Key.wItemIndex = pNewCon.m_wItemIndex
	RewardItem.Key.byRewardIndex = 0
	RewardItem.dwDur = pDstItem.m_dwDur % 0x100000000
	RewardItem.dwUpt = pNewCon.m_dwLv

	if pPlayer.m_Param.m_dbInven:GetIndexEmptyCon() == 255 then
		local pFld = Sirin.mainThread.g_Main:m_tblItemData_get(pNewCon.m_byTableCode):GetRecord(pNewCon.m_wItemIndex)

		if pNewCon.m_byCsMethod == 1 then
			pNewCon.m_dwT = pNewCon.m_dwT - os.time()
			pNewCon.m_dwT = pNewCon.m_dwT <= 0 and 1 or pNewCon.m_dwT
		end

		Sirin.mainThread.modChargeItem.pushChargeItem(pPlayer, pFld.m_strCode, pNewCon.m_dwDur, pNewCon.m_dwLv, pNewCon.m_dwT)
	else
		local pCon = pPlayer:Emb_AddStorage(STORAGE_POS.inven, pNewCon, false, true)

		if pCon then
			pPlayer:SendMsg_TakeNewResult(0, pCon)
		end
	end

	pPlayer:Emb_DelStorage(STORAGE_POS.inven, pDstItem.m_byStorageIndex, false, true, "Lua. doSkinReplaceCombination(...)")
	pPlayer:Emb_AlterDurPoint(STORAGE_POS.inven, pMaterial.m_byStorageIndex, nMatSub, true, true)

	return true
end
```

***

## Type C weapons

Uses any matching Intense (Type-B) and Purple (Type-A) weapon and constructs the matching Type-C weapon (If weapon exists in `WeaponItem.xlsx`)

The example requires the following items

| Item | Count | Desc   |
|---|---|---|
| `Any Intense Weapon (type-B)` | 1 | `iwaxb50` `Lvl 50 Intense Hora Axe`  |
| `Any Purple Weapon (type-A)` | 1 | `iwxha50` `Lvl 50 Wind Hora Axe` |
| `Cost 100 Race Currency` | - | - |

>> If using GU (2232) set currency price to 0 as price UI doesn't function and prevents combine (0.40 Hotfix 2)

Combine at the hero NPC or using disposable beeper

> Add this to `sirin-lua\threads\main\ReloadableScripts\CombineEx\` and [Reload Combine Scripts](itemcombine.md#combine-reloading)

#### `Type_c_Weapon.lua`

```lua
local combineData = {}

function combineData.init()
    combineData.price = 0 -- If using GU set currency price to 0
    combineData.showDebug = true
end

local types = {
    ["kn"] = true, -- knife
    ["sw"] = true, -- sword
    ["ax"] = true, -- axe
    ["ma"] = true, -- mace
    ["sp"] = true, -- spear
    ["bo"] = true, -- bow
    ["fi"] = true, -- firearm
    ["lu"] = true, -- launcher
    ["dk"] = true, -- dagger
    ["st"] = true, -- staff
    ["ge"] = true, -- grenade launcher
}

-- Helper function to check if weapon code is intense weapon (Type B)
function IsWeaponTypeB(code)
    local t, g, l = code:match("iw(%a+)(%a)(%d+)")
    if not t or not g or not l or not types[t] or g ~= 'b' then
      return false
    end
    return true
end

---@param ppConMats table<integer, _STORAGE_LIST___db_con>
---@return boolean
function combineData.combineChecker(ppConMats)
	repeat
		if #ppConMats > 2 then
			break
		end

        local src = nil

        -- Check inputs are 2 weapons
		for _,v in ipairs(ppConMats) do

			if v.m_byTableCode ~= 6 then
				break
			end

            return true
		end

	until true

	return false
end

---@param pPlayer CPlayer
---@param ppConMats table<integer, _STORAGE_LIST___db_con>
---@param pipMats table<integer, _combine_ex_item_request_clzo___list>
---@param pSend _combine_ex_item_result_zocl
---@param pRecv _combine_ex_item_request_clzo
---@return boolean
function combineData.combineWorker(pPlayer, ppConMats, pipMats, pSend, pRecv)
	---@type _STORAGE_LIST___db_con
	local pTypeB = nil
	---@type _STORAGE_LIST___db_con
	local pTypeA = nil
	---@type _STORAGE_LIST___db_con
	local pMaterial = nil
	local nMatSub = 0

    -- Purple items higher index than intense - store purple as pTypeA
    -- This means location in the combine UI doesn't matter
	for k,v in ipairs(ppConMats) do
		if not pTypeB then
            pTypeB = v
        elseif pTypeB.m_wItemIndex > v.m_wItemIndex then
            pTypeA = pTypeB
            pTypeB = v
        else
            pTypeA = v
        end
	end

    -- Get WeaponItem.xlsx Data
    local pTypeBFld = Sirin.mainThread.baseToWeaponItem(Sirin.mainThread.g_Main:m_tblItemData_get(pTypeB.m_byTableCode):GetRecord(pTypeB.m_wItemIndex))
	local pTypeAFld = Sirin.mainThread.baseToWeaponItem(Sirin.mainThread.g_Main:m_tblItemData_get(pTypeA.m_byTableCode):GetRecord(pTypeA.m_wItemIndex))

    if combineData.showDebug then
        print ("Intense item: idx " .. pTypeB.m_wItemIndex .. ", model " .. pTypeBFld.m_strModel)
        print ("Purple item " .. pTypeA.m_wItemIndex .. ", model " .. pTypeAFld.m_strModel)
    end

    -- Check TypeB is intense weapon (Box weapons are grade 1 but not intense)
    -- Check TypeA is purple weapon (Grade)
    if not IsWeaponTypeB(pTypeBFld.m_strCode) then
        return false
    else if pTypeAFld.m_nItemGrade ~= 2 then
        return false
    end

    -- Verifiy they match (Level and Mesh)
    if pTypeBFld.m_strModel ~= pTypeAFld.m_strModel or pTypeBFld.m_nLevelLim ~= pTypeAFld.m_nLevelLim then
        return false
    end

    -- Modify item code from Purple weapon to Type C item code
    local itemCode = pTypeAFld.m_strCode:gsub("^(iw.-)h", "%1j") -- ex: "iwkjg60"

    -- Search for new item by item code
    local item   = Sirin.mainThread.g_Main:m_tblItemData_get(pTypeB.m_byTableCode):GetRecordByHash(itemCode, 2, 5)

    -- Item not found abort
    if item == nil then
        print ("Type C Combine: Did not find " .. itemCode)
        return false
    end

    if combineData.showDebug then
        print ("New item index = " .. item.m_dwIndex)
    end
    local newItemFld = Sirin.mainThread.baseToWeaponItem(item)

    if not CombineExMgr.pricePopUp(pPlayer, combineData, pRecv) then
		return true
	end

    -- Cost popup if combineData.price is greater than 0  (set in init())

    -- // You need 100's money for combining fees. Would you like to continue?  //
    -- // [ OK ] [ Cancel ]

	if combineData.price and combineData.price > 0 and combineData.price > pPlayer.m_Param:GetDalant() then
		return false
	end

    -- Data to send to client
    pSend.dwDalant = combineData.price

    pSend.dwCheckKey = (Sirin.mainThread.GetLoopTime() & 0xFFFFFF) >> 8 -- combination check key. do not change. must present.
	pSend.byDlgType = 1 -- 255 error, 0 success selectable, 1 success non selectable, 2 combination failure
	pSend.bySelectItemCount = 0 -- 0 if non selectable combination, or how many items allowed to choice
	pSend.dwResultEffectType = 1 -- not used by client
	pSend.ItemBuff.byItemListNum = 1 -- how many result items
	pSend.dwResultEffectMsgCode = 3605 -- text ID

    -- Create reward for UI in slot 0
    local RewardItem = pSend.ItemBuff:RewardItemList_get(0)
    RewardItem.Key.byTableCode = 6
    RewardItem.Key.wItemIndex = newItemFld.m_dwIndex
    RewardItem.Key.byRewardIndex = 0 -- not used by client
    RewardItem.dwDur = 0
    RewardItem.dwUpt = 0xFFFFFFFF

    -- Create reward as item 
    local pNewCon = Sirin.mainThread._STORAGE_LIST___storage_con()
	pNewCon.m_byTableCode = 6
	pNewCon.m_wItemIndex = item.m_dwIndex
	pNewCon.m_dwDur = 0
	pNewCon.m_dwLv = 0
	pNewCon.m_wSerial = pPlayer.m_Param:GetNewItemSerial()
	pNewCon.m_lnUID = pTypeB.m_lnUID
	pNewCon.m_byCsMethod = pTypeB.m_byCsMethod
	pNewCon.m_dwT = pTypeB.m_dwT
	pNewCon.m_dwLendRegdTime = pTypeB.m_dwLendRegdTime

    -- If inventory full add to Charge Item else add to inventory
    if pPlayer.m_Param.m_dbInven:GetIndexEmptyCon() == 255 then
		local pFld = Sirin.mainThread.g_Main:m_tblItemData_get(pNewCon.m_byTableCode):GetRecord(pNewCon.m_wItemIndex)

		if pNewCon.m_byCsMethod == 1 then
			pNewCon.m_dwT = pNewCon.m_dwT - os.time()
			pNewCon.m_dwT = pNewCon.m_dwT <= 0 and 1 or pNewCon.m_dwT
		end

		Sirin.mainThread.modChargeItem.pushChargeItem(pPlayer, pFld.m_strCode, pNewCon.m_dwDur, pNewCon.m_dwLv, pNewCon.m_dwT)
	else
		local pCon = pPlayer:Emb_AddStorage(STORAGE_POS.inven, pNewCon, false, true)

		if pCon then
			pPlayer:SendMsg_TakeNewResult(0, pCon)
		end
	end

    -- Remove Items used in combine (pTypeA and pTypeB)
    pPlayer:Emb_DelStorage(STORAGE_POS.inven, pTypeA.m_byStorageIndex, false, true, "Lua. doTypeCCombination(...)")
    pPlayer:Emb_DelStorage(STORAGE_POS.inven, pTypeB.m_byStorageIndex, false, true, "Lua. doTypeCCombination(...)")

	return true
end
end

return { ["type-c"] = combineData }
```

