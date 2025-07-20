# Custom Window States (State Flags)

Each custom window exists in two parts 
* The static client data `Identical data that all clients receive`
* Persistant client state `Unique data per player` Updated with state flags



### Updating All State Flags 
To display the buttons we must send state flags to the client \
This can be done in any server side `.lua` script \
For this example we will use a [scripted GM command](gmcommandsscripted.md). 

> Send this to any client connecting with values that match what that player should see `Unique data per player`

```lua
{ "custom window", "111100", "111",
        ---@param pPlayer CPlayer
        ---@return boolean
        function (pPlayer)
            local send = {}
			send.ct = 3 -- operation mode
			send.data = {}
			local w = {}
			table.insert(send.data, w)
			w.id = 2 -- Custom Window Index (Always 1 for Function Menu)
			w.data = {}

			for i = 1, 4 do -- Loop through number of components
				local data = {}
				data.id = i -- Object id
				data.stateFlags = tonumber("101", 2)  -- set state flag  [IsButton,  Not Disabled, Visible]
				data.overlayFlags = tonumber("1",2) -- overlay flags
				data.delay = { 1, 1 } -- Delay Remaining / Delay Total
				data.counter = { -1, -1 } -- Counter Stack sizes, 4/5 and skin data
				table.insert(w.data, data)
			end

			-- Send packet to player with data
			local netOP = NetOP:new()
			netOP:SendData(pPlayer, "sirin.proto.customWindows", send, true)
            return true
        end
},
```

| Operation Mode  | Result   |
|---|---|
| 0  | Clear Internal Data (no update) |
| 1  | Add/Set & Replace |
| 2  | Delete |
| 3  | Modify Existing |

## State Flags
```lua
data.stateFlags = tonumber("101", 2) -- state flags
```
State flags are set in binary: Use the helper `tonumber("",2)` to set them \
Starting from the `Right Side` is `Bit 1`

| Bit (Right to Left) | Action|
|-------|------------------------------|
| 1     | Component is visible|
| 2     | Component is Disabled / Component is Disabled|
| 3     | Component is a Button and can be clicked|
| 4     | Send Server request on Button click|
| 5     | Force Modal Popup `(For Custom Window Only)`|
| 6     | Selectable `(For Custom Window Only)`|
| 7 - 32     | Set overlay by index |

---

### Visibility / Disabled (Bit 1 & 2)

```lua
data.stateFlags = tonumber("011", 2) -- state flags
```
| Bit (Right to Left) |Value| Action|
|-------|---|------------------------------|
| 1     |1| Component is visible|
| 2     |1| Component is Disabled |
| 3     |0| Component is __Not__ a Button and can be clicked|
| 4 +   |0| No more flags used|

---

### Buttons (Bit 3)

* [Text Buttons](/lua/features/customwindow/window.md#text-buttons)
* [Sprite Buttons](/lua/features/customwindow/window.md#icon--sprites)
* [Item Buttons](/lua/features/customwindow/window.md#items-and-item-tooltips)

```lua
data.stateFlags = tonumber("101", 2) -- state flags
```
| Bit (Right to Left) |Value| Action|
|-------|---|------------------------------|
| 1     |1| Component is visible|
| 2     |0| Component is __Not__ Disabled |
| 3     |1| Component is a Button and can be clicked|


Add extra paramaters to your [Function Menu](/lua/features/customwindow/functionMenu.md) or [Custom Window](/lua/features/customwindow/window.md) to _open_ client side windows with buttons

#### Opening Client Windows (Client Action)
```lua
{
    icon = { 4, 13, 4, 0 },
    clientWindow = 1, -- window index from table below
}
```
First basic operation, opening clientside window

| Index | Window To Open            | Index | Window To Open                  |
|-------|----------------------------|-------|--------------------------------|
| 1     | Character info             | 15    | *Hero Combine                 |
| 2     | Inventory                  | 16    | Ore Process                    |
| 3     | Skill                      | 17    | Talic Mixture Exchange        |
| 4     | Force                      | 18    | Tax Rate                       |
| 5     | Summon                     | 19    | Archon Shout Macro             |
| 6     | Macro                      | 20    | *MAU Vendor                    |
| 7     | Party                      | 21    | UMT Storage                    |
| 8     | Guild                      | 22    | Dungeon Gate                   |
| 9     | Mail                       | 23    | Cash Shop                      |
| 10    | Archon Rep                 | 24    | *Npc Store (See Below)        |
| 11    | Friends List               | 25    | *Bank Storage                  |
| 12    | Quest                      | 26    | *Auction House (Purchase)     |
| 13    | Race LeaderBoard           | 27    | *Auction House (Register)     |
| 14    | *Item Upgrader             |       |                                |

> \* Client window requires ModNpcLinkBypass hook to use away from npc location

#### ModNpcLinkBypass

Activate the required [hook](/lua/hooks.md#canuseauctionwithnobeeperpplayer-byoperation) by returning true to allow use of vendors away from NPC location

* canUseNPCStoreWithNoBeeper
* canUseTrunkWithNoBeeper
* canUseAuctionWithNoBeeper
* canUseMAUVendorWithNoBeeper
* canUseHeroCombineWithNoBeeper
* canUseWithNoTool

See [Hooks](/lua/hooks.md) for full description and function definitions

#### Open Auction House
```lua
{
	icon = { 4, 13, 3, 0 },
	clientWindow = 26, -- auction house (Purchase)
	npcCode = "0A0B1", -- NPC code `NPCharacter.xlsx` for auction house (UTS)
},
{
	icon = { 4, 13, 3, 0 },
	clientWindow = 27, -- auction house (Register Items)
},
```

> Requires the [hook](/lua/hooks.md) `canUseAuctionWithNoBeeper`

#### Open Bank Storage
```lua
{
	icon = { 4, 13, 3, 0 },
	clientWindow = 25, -- bank storage
},
```
> Requires the [hook](/lua/hooks.md) `canUseTrunkWithNoBeeper`


#### Open NPC Stores
```lua
{
	icon = { 4, 13, 3, 0 },
	clientWindow = 24, -- NPC store window
	npcCode = "131A7", -- NPC code `NPCharacter.xlsx` (Quest Npc Elan)
},
```
Fill npcCode with the `NPC code` of the store the button should access

> Store code __Must__ match the race accessing it. Create 3 buttons and hide based on race if required 

> Requires the [hook](/lua/hooks.md) `canUseNPCStoreWithNoBeeper`


#### Open Custom Windows (Client Action)

Opening custom sirin created windows see [CustomWindows](/lua/features/customwindow/window.md)
```lua
{
    icon = { 4, 13, 4, 0 },
    customWindow = 1, -- your custom window index
}
```

---

### Sending Server Request (Bit 4) (Client to Server Action)

```lua
data.stateFlags = tonumber("1101", 2) -- state flags
```
| Bit (Right to Left) |Value| Action|
|-------|---|------------------------------|
| 1     |1| Component is visible|
| 2     |0| Component is __Not__ Disabled |
| 3     |1| Component is a Button and can be clicked|
| 4     |1| Send Server Request on Button Click|

> Bit 3 is required for Bit 4 as button press is the action to send the request

Catch these requests from the [onPressCustomWindowButton Hook](/lua/hooks.md#onpresscustomwindowbuttonpplayer-dwactwindowid-dwactbuttonid-dwparentwindowid-dwselectedid)

```lua
-- Respond to 'onPressCustomWindowButton' hook
-- Action: Clicking the GM button in Function Menu
function script.onButtonPress(pPlayer, dwActWindowID, dwActButtonID, dwParentWindowID, dwSelectedID)
	-- React to Hook
end

-- Add hook to respond to clicks from Custom Window or Function Menu. Call -> onButtonPressed
SirinLua.HookMgr.addHook("onPressCustomWindowButton", HOOK_POS.after_event, script.m_strUUID, script.onButtonPress)
```

---

### Force Modal (Bit 5) (Custom Window Only)
<img style="border:1px solid black" src="img/sirin_cwmodal.png"/>

```lua
data.stateFlags = tonumber("10101", 2) -- state flags
```
| Bit (Right to Left) |Value| Action|
|-------|---|------------------------------|
| 1     |1| Component is visible|
| 2     |0| Component is __Not__ Disabled |
| 3     |1| Component is a Button and can be clicked|
| 4     |0| __Don't__ Send Server Request on Button Click|
| 5		|1| Force Modal Popup on Button Click|

> Bit 3 is required for Bit 5 as button press is the action to open modal

State Flag `Force Modal: bit 5` will force a popup after a button click - To confirm the action - Clicking yes will continue the action

> Modal text and buttons can be customized per window

```lua
strModal_Ok = { -- optional.
			default = "OK",
		},
		strModal_Cancel = { -- optional.
			default = "Cancel",
		},
		strModal_Text = { -- optional.
			default = "Are you sure?",
		},
```
[Uses localization strings](scriptlocal.md#script-localization-sirin-026)

---

### Selection (Bit 6) (Custom Window Only)
<img style="border:1px solid black" src="img/sirin_cwsel.png"/>

```lua
data.stateFlags = tonumber("100101", 2) -- state flags
```
| Bit (Right to Left) |Value| Action|
|-------|---|------------------------------|
| 1     |1| Component is visible|
| 2     |0| Component is __Not__ Disabled |
| 3     |1| Component is a Button and can be clicked|
| 4     |0| __Don't__ Send Server Request on Button Click|
| 5		|0| __Don't__ Force Modal Popup on Button Click|
| 6		|1| Component is selectable|

> Bit 3 is required for Bit 6 as button press is the action to select selectable

State Flag `Selectable: bit 6` 
On click will switch to a highlighted state. Clicking on any other button with `Server request: bit 4` will also send this selected component index 

>Only one selecatble can be selected - Clicking another will switch what is selected

---

## Overlays (Bits 7-32)
<img style="border:1px solid black" src="img/sirin_cwover.png"/>

Overlays are sprites layed ontop of existing sprites. Used to show states like __Locked__, __Claimed__,__Accepted__ up to 25 pre-defined overlays can be used per window

```lua
data.stateFlags = tonumber("01000001", 2) -- state flags
```
| Bit (Right to Left) |Value| Action|
|-------|---|------------------------------|
| 1     |1| Component is visible|
| 2     |0| Component is __Not__ Disabled |
| 3     |0| Component is __Not__ a Button and can be clicked|
| 4     |0| __Don't__ Send Server Request on Button Click|
| 5		|0| __Don't__ Force Modal Popup on Button Click|
| 6		|0| Component is __Not__ selectable|
| 7		|1| Display Overlay 1|
| 8		|0| __Don't__ Display Overlay 2|

Overlays set in [Custom Windows](/lua/features/customwindow/window.md#overlays-for-icons) or [Function Menu](/lua/features/customwindow/functionMenu.md#overlays) are enabled/disabled using [State Flags](lua/features/customwindow/stateFlags.md)


### Durability (Stack Counters)
```lua
data.counter = { -1, -1 } -- durability (stack sizes, skins) [Not used in Function Menu]
```
<img style="border:1px solid black" src="img/sirin_cw_counter.png"/>

Used to display values in [Text Counters](/lua/features/customwindow/window.md#text-counters)

<img style="border:1px solid black" src="img/sirin_cwpotion.png"/>

Used to display item counts for [Items](/lua/features/customwindow/window.md#items-and-item-tooltips) and [Sprites](/lua/features/customwindow/window.md#icon--sprites)

> If no stack counter is to be displayed or only a single value used the Durability value is set to `0xFFFFFFFF`

Used to display Skin data on tooltips. This value is displayed differently depending on item type

#### Countdown Timers

<img style="border:1px solid black" src="img/sirin_funcwindowtimers.png"/><br> `Example showing multiple active timers`

```lua
data.delay = { 1, 1 } -- delay remaining in seconds
```
Every icon can display its own countdown timer which can be updated at any time by sending state flag updates  
Timers prevent interaction if active so can work as cooldowns for buttons

<img style="border:1px solid black" src="img/sirin_cw_progressbar.png"/>

Timers can also be used to show progress bars if delay is set on a text object. 

Any text will be used within the bar.

> If a countdown state was already active on logout track this value and re-apply on reconnect \
> Setting the remaining and total from when counter first applied

You manage the data server side and update only the current state on the client

---

### Custom Window: Example

See `threads\main\custom\demo\customWindowDemo.lua` for complete example of a custom window



<img style="border:1px solid black" src="img/sirin_cw_demogm.png"/>

> This example is loaded by default on new installs and can be triggered to open using the GM button from the function menu

<img style="border:1px solid black" src="img/sirin_cw_demo.png"/>

This uses the [Module Template](/lua/features/module.md) to ensure all logic is contained within the module