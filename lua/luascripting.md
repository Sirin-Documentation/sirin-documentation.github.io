# Lua Scripting [Sirin 0.27+]

> Many features from Sirin 0.27+ will rely on lua scripting for customization. This takes customization far beyond what is possible with config files.

## Code Comments

A comment starts anywhere with a double hyphen (--) and runs until the end of the line

```lua
local five = 5  -- (comment start) Code comment that won't be executed

```

## Conditional Operators

```
Lua provides the following Conditional operators:

    <   >   <=  >=  ==  ~=
```
* `<`  -  Less than
* `>`  -  Greater than
* `<=`  -  Less than or equal
* `>=`  -  Greater than or equal
* `==`  -  Equal
* `~=`  -  Not Equal

## If Else statement

Core of scripting - testing a condition and acting if it is true or false

```lua
local five = 5

if five == 5 then
	-- do something if true
else
	-- else do something
end
```

## String Combining (concatenation)

Lua denotes the string concatenation operator by ".." (two dots). If any values are a number, Lua converts that number to a string.

```lua
    "RF " .. "Online"  		--> "RF Online"
    "Sirin Guard " .. 0.27		--> "Sirin Guard 0.27"
```

## Random

The random() method can be called with or a without a number using the following syntax:

```lua
math.random() -- random number between 0 and 1 (decimal)
> 0.38808095006413

math.random(5) -- random number between 1 and x
> 3

math.random(10, 50) -- random number between x and y
> 27
```

----------

# Example Scripts

> View the Lua API to see all available options for your own scripts

#### Printing to the server console

The `print()` command outputs text to the server console window, useful for debugging or logging.

```lua
print("Hello from Lua!")
```

#### Scripted GM Command example : Spawning between 10 and 30 flems

```lua
{ "flems", "111100", "111",
	function (pPlayer)
		sirin.mainThread.processCheatCommand(pPlayer, "moncall 00000 " .. math.random(10, 30))
	end
},
```

#### Scripted GM Command example : Teleporting to town for the operators race

```lua
{ "town", "111100", "111",
	function (pPlayer)
		local pMap, x, y, z = sirin.mainThread.g_MapOper:GetPosStartMap(pPlayer:GetObjRace(), false)
		
		if pMap ~= nil then
			sirin.mainThread.teleportPlayer(pPlayer, pMap, x, y, z, 0)
			return true
		else
			return false
		end
	end
},
```

#### Scripted GM Command example : Adjusting item durability

Adjust the durability of a specific item in the player's inventory. For stackable items, the durability value represents the stack count.
- **Positive values (+)** - Adds items up to the maximum item stack
- **Negative values (-)** - Reduces the stack count until the item disappears when stack count = 0

**Usage:** `%adjamount <item_code> <durability_value>`
- `item_code` - The string code of the target item
- `durability_value` - The amount to adjust durability by (stack count for stackable items)

```lua
{
	"adjamount", "111100", "111",
	---@param pPlayer CPlayer
	---@return boolean
	function (pPlayer)
		-- check we input at least 2 parameters
		if Sirin.mainThread.getCheatWordNum() < 2 then return false end

		-- read cheat parameter 1
		local code = Sirin.mainThread.getCheatWord(0)

		-- read cheat parameter 2
		local adjsutValue = math.floor(tonumber(Sirin.mainThread.getCheatWord(1)) or 0)

			
		-- if not a number or 0 then return
		if adjsutValue == 0 then return false end
			
		-- get item type by string code
		local nTblCode = Sirin.mainThread.GetItemTableCode(code)
			
		-- if invalid code then return
		if nTblCode == -1 then return false end
			

		-- get _base_fld* by item type and string code
		local pFld = Sirin.mainThread.g_Main:m_tblItemData_get(nTblCode):GetRecordByHash(code, 2, 5)

		-- if not found then return
		if not pFld then return false end

		-- loop though every existing slot
		for j = 0, pPlayer.m_Param.m_dbInven.m_nUsedNum - 1 do
			-- get pointer
			local pCon = pPlayer.m_Param.m_dbInven:m_List_get(j)

			-- check slot is loaded and not locked
			if pCon.m_byLoad == 1 and not pCon.m_bLock then

				-- check item is target item
				-- todo: quantity check
				if pCon.m_byTableCode == nTblCode and pCon.m_wItemIndex == pFld.m_dwIndex then

					-- bSend = true informs client about changed durability. if bSend = false 
					local dwLeftDur = pPlayer:Emb_AlterDurPoint(STORAGE_POS.inven, pCon.m_byStorageIndex, adjsutValue, false, true)

					-- SendMsg_AdjustAmountInform required for stackable items.
					if dwLeftDur ~= 0 then
						-- Inform client of stack count on item
						pPlayer:SendMsg_AdjustAmountInform(STORAGE_POS.inven, pCon.m_wSerial, adjsutValue)
					end

					break
				end
			end
		end

		return true
	end
},

```