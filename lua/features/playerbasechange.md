# Player Base Change (Base Class/Race/Base Appearence)

Changing base class, race or appearance of existing characters

>> Can be used across all lua functions
* [NPC Buttons](/lua/features/npcbuttons.md)
* [Potions](/lua/features/potions.md)
* [Hooks](/lua/features/hooks.md)

***

## Base Class Change (Potion | Uses Helper Function)

>  Example of Potion effect that changes race and gender to bellato male and Warrior

```lua
ipgld01 = function(pActChar, pTargetChar)
		return Potion_RaceSexClassUpdate(Sirin.mainThread.objectToPlayer(pTargetChar), 0, "BWB0")
end,
```

1) `Sirin.mainThread.objectToPlayer(pTargetChar)` -- Player Object
2) `0` -- Race index
3) `BWBO` -- Class code

## Cycle though character base upper (Potion | Uses Helper Function)

```lua
ipgld03 = function(pActChar, pTargetChar) -- default upper part cyclic change potion
	return BaseShapeUpdate(Sirin.mainThread.objectToPlayer(pTargetChar), TBL_CODE.face)
end,
```

## Player Gender swap (Button | Uses Helper Function)

>  Example of NPC Button that swaps gender (works for bellato + cora)

```lua
[168] = {
    actionType = 0,
    clientName = {
        default = "Swap Gender",
    },
    data = function(pPlayer)
        local byRaceSexCode = pPlayer.m_Param.m_dbChar.m_byRaceSexCode

        if (byRaceSexCode & 1) == 1 then
            byRaceSexCode = byRaceSexCode & 0xFE
        else
            byRaceSexCode = byRaceSexCode + 1
        end

        Button_RaceSexClassUpdate(pPlayer, byRaceSexCode)
    end,
},
```


## Helper Functions
> For Potions
```lua
function Potion_RaceSexClassUpdate(pPlayer, byNewRaceSex, strNewClassCode)
	local byErrCode = Sirin.mainThread.modRaceSexClassChange.updateRaceSexClass(pPlayer, byNewRaceSex, strNewClassCode)

	if byErrCode == 0 then
        -- Used with potion only. For NPC button see below
		Sirin.mainThread.modForceLogoutAfterUsePotion.s_bNeedForceLogout = true 
	else
		-- See full example for handling all error return codes
        if byErrCode < 10 then

        end
	end

	return byErrCode
end
```

> For NPC Buttons
```lua
function Button_RaceSexClassUpdate(pPlayer, byNewRaceSex, strNewClassCode)
	local byErrCode = Sirin.mainThread.modRaceSexClassChange.updateRaceSexClass(pPlayer, byNewRaceSex, strNewClassCode)

	if byErrCode == 0 then
        local buf = Sirin.mainThread.CLuaSendBuffer.Instance()
		buf:Init()
		buf:PushUInt8(0)
		buf:SendBuffer(pPlayer, 81, 3)
		pPlayer.m_pUserDB:Lobby_Char_Request()
	else
		-- See full example for handling all error return codes
        if byErrCode < 10 then
        end
	end
end
```

> For Base Appearance
```lua
--- Move this function somewhere in your code
function BaseShapeUpdate(pPlayer, part)
	local byErrCode = 0

	if part > TBL_CODE.helmet and part ~= TBL_CODE.face then
		return 101
	end

	local byRaceSexCode = pPlayer.m_Param.m_dbChar.m_byRaceSexCode
	local dwBaseShape = 0

	for i = 0, 4 do
		if i == part then
			local index = pPlayer.m_Param.m_dbChar:m_byDftPart_get(i) - byRaceSexCode * 16
			index = index + 1
			index = index % 5
			dwBaseShape = dwBaseShape + (index << (4 * i))
		else
			dwBaseShape = dwBaseShape + (0xF << (4 * i))
		end
	end

	if part == TBL_CODE.face then
		local index = pPlayer.m_Param.m_dbChar.m_byDftPart_Face - byRaceSexCode * 16
		index = index + 1
		index = index % 5
		dwBaseShape = dwBaseShape + (index << 20)
	else
		dwBaseShape = dwBaseShape + (0xF << 20)
	end

	byErrCode = Sirin.mainThread.modRaceSexClassChange.updateBaseShape(pPlayer, dwBaseShape)

	if byErrCode == 1 then
		-- New shape is same with old shape
	elseif byErrCode == 2 then
		-- Changing is part equipped
	elseif byErrCode == 101 then
		-- invalid part index
	end

	return byErrCode
end
```