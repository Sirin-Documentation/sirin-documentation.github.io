# Custom Window (Misc)

### Opening Windows from other Scripts
Custom windows can be opened from any other script

> Can also be used to trigger opening default Client windows directly from any `.lua` scripts

```lua
---@param pPlayer CPlayer
---@param dwWindowID integer
---@param byType integer
local function example_openWindow(pPlayer, dwWindowID, byType)
	local buf = Sirin.mainThread.CLuaSendBuffer.Instance()
	buf:Init()
	buf:PushUInt8(byType) -- 0 default window, 1 custom window
	buf:PushUInt32(dwWindowID) -- window index
	buf:PushUInt32(0) -- NPC Code for store and AH buy. in other case 0. Example: tonumber("01234", 16)
	buf:SendBuffer(pPlayer, 80, 15)
end
```

> See [Opening Client Window](/lua/features/customwindow/stateFlags.md#open-custom-windows-client-action) For full window list

#### Example

Opening Auction House with [Scripted Potion](/lua/features/potions.md#scripted-potions-sirin-040) `ipcsa01`

```lua
---@param pActChar CCharacter
---@param pTargetChar CCharacter
---@return integer
ipcsa01 = function(pActChar, pTargetChar)
	-- Get Player from target of Potion (ipcsa01 target = self)
	local pPlayer = Sirin.mainThread.objectToPlayer(pTargetChar)
	
	local buf = Sirin.mainThread.CLuaSendBuffer.Instance()
	buf:Init()
	buf:PushUInt8(0) -- 0 Open default client window
	buf:PushUInt32(26) -- window index 26 for Auction House (Purchase)
	buf:PushUInt32(tonumber("0A0B1",16)) -- NPC Code for Auction House
	
	-- Send packet to player with data in buffer `buf`
	buf:SendBuffer(pPlayer, 80, 15)
    return 1
end,
```

> Auction House window requires ModNpcLinkBypass hook `canUseAuctionWithNoBeeper` to use  [away from npc location](/lua/features/customwindow/stateFlags.md#modnpclinkbypass)