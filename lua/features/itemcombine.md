# Item Combine

> Item combinations via Lua are recomended for experienced users

## Combine_Ex.lua (sirin-lua/Combine_Ex/combine_ex.lua)

> Contains the list of lua scripts used by the item combine system

Using require,  include any of your item combination scripts. By default "skins" is used as an example.

```lua
local skin = require('Combine_Ex.skins')

local sirinCombineList = {}

-- Fast combination check functions
sirinCombineList.fastCheck = {
  skin.isSkinReplaceCombination,
}

-- Execute the combination
sirinCombineList.combineFunction = {
  skin.doSkinReplaceCombination,
}
```

#### Fast Check

Used to determine if the items inserted into the item combination window are a match to your recipe. The entire check is handled by your script. 

> See skins.lua for how to implement your own fastcheck

#### Execute combineFunction 

This is the full logic for processing the item combination and showing the results of the combination.

> See skins.lua for how to implement your own combineFunction

## Demo (Reskinable Items)

With the demo for scripted item combinations, The ability to reskin items was also added

> Item reskinning requires the use of lua item combinations to process all the possible combinations.

The demo requires the following items

| Item | Count | Desc   |
|---|---|---|
| `Any Armor/Weapon/Jetpack/Shield` | 2 | `These must match the same type; weapon same handed use`  |
| `Ability Combiner` | 1 | `spawned with iymer01`  |

Combine at the hero NPC or using disposable beeper

<img style="border:1px solid black" src="img/sirin_skin.jpg"/>

> The item with the highest item index will be used as the skin. 
> You can alter this `sirin-lua\Combine_Ex\skins.lua`


#### `Skins.lua` Fastcheck (detecting the correct ingredients)

> Item combinations via Lua are recomended for experienced users

```lua
skin.isSkinReplaceCombination = function(ppConMats)
	repeat
		if #ppConMats > 3 then
			break
		end

		local srcNum = { 0, 0, 0, 0, 0, 0, 0, 0 }
		local bHaveRecipe = false

		for _,v in ipairs(ppConMats) do
			if v.m_byTableCode < 8 then
				srcNum[v.m_byTableCode + 1] = srcNum[v.m_byTableCode + 1] + 1
			end

			if v.m_byTableCode == 20 and v.m_wItemIndex == 103 then
				bHaveRecipe = true
			end
		end

		if not bHaveRecipe then
			break
		end

		for _,v in ipairs(srcNum) do
			if v == 2 then
				return true
			end
		end

	until true

	return false
end
  ```

#### `Skins.lua` combineFunction (processing the combination)

```lua
skin.doSkinReplaceCombination = function(pPlayer, ppConMats, pipMats, pSend)
	local pSrcItem = nil
	local pDstItem = nil
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
			if not pSrcItem then
				pSrcItem = v
			elseif pSrcItem.m_wItemIndex < v.m_wItemIndex then
				pDstItem = pSrcItem
				pSrcItem = v
			else
				pDstItem = v
			end
		end
	end

	if pSrcItem.m_byTableCode == 6 then
		local pSrcFld = sirin.mainThread.baseToWeaponItem(sirin.mainThread.g_Main:m_tblItemData_get(6):GetRecord(pSrcItem.m_wItemIndex))
		local pDstFld = sirin.mainThread.baseToWeaponItem(sirin.mainThread.g_Main:m_tblItemData_get(6):GetRecord(pDstItem.m_wItemIndex))

		if pSrcFld.m_nType ~= pDstFld.m_nType or pSrcFld.m_nSubType ~= pDstFld.m_nSubType or pSrcFld.m_nFixPart ~= pDstFld.m_nFixPart then
			return false
		end
	end

	pSend.byDlgType = 1
	pSend.bySelectItemCount = 0
	pSend.dwDalant = 0
	pSend.dwResultEffectType = 1
	pSend.dwResultEffectMsgCode = 3605
	pSend.ItemBuff.byItemListNum = 1

	local SkinKey = pSrcItem.m_wItemIndex * 0x10000 + pDstItem.m_byTableCode * 0x100
	local pNewCon = sirin.mainThread._STORAGE_LIST___storage_con()
	pNewCon.m_byTableCode = pDstItem.m_byTableCode
	pNewCon.m_wItemIndex = pDstItem.m_wItemIndex
	pNewCon.m_dwDur = SKIN_MAGIC * 0x100000000 + SkinKey
	pNewCon.m_dwLv = pDstItem.m_dwLv
	pNewCon.m_wSerial = pPlayer.m_Param:GetNewItemSerial()
	pNewCon.m_lnUID = pDstItem.m_lnUID
	pNewCon.m_byCsMethod = pDstItem.m_byCsMethod
	pNewCon.m_dwT = pDstItem.m_dwT
	pNewCon.m_dwLendRegdTime = pDstItem.m_dwLendRegdTime

	local RewardItem = pSend.ItemBuff:RewardItemList_get(0)
	RewardItem.Key.byTableCode = pNewCon.m_byTableCode
	RewardItem.Key.wItemIndex = pNewCon.m_wItemIndex
	RewardItem.Key.byRewardIndex = 0
	RewardItem.dwDur = SkinKey
	RewardItem.dwUpt = pNewCon.m_dwLv

	if pPlayer.m_Param.m_dbInven:GetIndexEmptyCon() == 255 then
		local pFld = sirin.mainthread.g_Main.m_tblItemData_get(pNewCon.m_byTableCode):GetRecord(pNewCon.m_wItemIndex)
		sirin.modChargeItem.pushChargeItem(pPlayer, pFld.m_strCode, pNewCon.m_dwDur, pNewCon.m_dwLv, pNewCon.m_dwT)
	else
		local pCon = pPlayer:Emb_AddStorage(STORAGE_POS.inven, pNewCon, false, true)

		if pCon then
			pPlayer:SendMsg_TakeNewResult(0, pCon)
	
			if sirin.mainThread.modItemPropertySkin.isSkinItem(pDstItem.m_dwDur) then
				sirin.mainThread.modItemPropertySkin.updateProperty(pDstItem.m_lnUID, SkinKey)
			else
				sirin.mainThread.modItemPropertySkin.insertProperty(pNewCon.m_lnUID, pPlayer.m_pUserDB.m_dwAccountSerial, SkinKey)
			end
		end
	end

	pPlayer:Emb_DelStorage(STORAGE_POS.inven, pDstItem.m_byStorageIndex, false, true, "Lua. doSkinReplaceCombination(...)")
	pPlayer:Emb_DelStorage(STORAGE_POS.inven, pSrcItem.m_byStorageIndex, false, true, "Lua. doSkinReplaceCombination(...)")
	pPlayer:Emb_AlterDurPoint(STORAGE_POS.inven, pMaterial.m_byStorageIndex, nMatSub, true, true)

	return true
end
```