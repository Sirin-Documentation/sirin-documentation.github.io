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

> View the Lua Docs to see all available options for your own scripts

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