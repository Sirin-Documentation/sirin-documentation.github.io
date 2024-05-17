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

> Item reskinning requires the use of lua item combinations to process all the possible combinations
> As you are able to mix and match any item during reskinning

The demo requires the following items

| Item | Count | Desc   |
|---|---|---|
| `Any Armor/Weapon/Jetpack/Shield` | 2 | `These must match the same type; weapon same handed use`  |
| `Ability Combiner` | 1 | `spawned with iymer01`  |

Combine at the hero NPC. The item with the highest item index will be used as the skin. 

You can alter this in the `sirin-lua\Combine_Ex\skins.lua` script


> The script for detecting the correct ingredients 

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
