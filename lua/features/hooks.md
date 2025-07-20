## Hooks
Hooks can be found in the [Full list of usable Hooks](lua/hooks.md)

Each hook contains

* Function name  : `CPlayer__pc_NewPosStart`
* Function parameters : `CPlayer pPlayer`

> Use these parameters to create your hook handler in your [Custom Module](/lua/features/module.md)

```lua
function script.MyHookHandler(pPlayer) 
{
	-- pPlayer is the CPlayer object
}
```

* Purpose : description of what the hook does
* Hook Position : When this hook triggers your code. Some hooks have more than one option

	* original
	* pre_event
	* after_event
	* special

> Check the hook you are using to see which hook positions you can use

Use this to construct your hook function and hook handler

```lua
function script.MyHookHandler(pPlayer)
{
	-- Your code that runs when the CPlayer__pc_NewPosStart is triggered
}

-- Function name = CPlayer__pc_NewPosStart
-- Hook Position = after_event
SirinLua.HookMgr.addHook("CPlayer__pc_NewPosStart", HOOK_POS.after_event, script.m_strUUID, script.MyHookHandler)
```

## Example: Custom Quest objectives

This example uses hooks to add additional custom quest conditions. 

The conditions can be used in your `quest.xlsx` data to add additional quest objectives

|QuestType | ActType | ActSub | Result   |
|---|---|---|---|
| 0 (Solo Quest) | 30  | "Sette" | Teleporting to map "Sette" will complete the objective |

```lua
local projectName = 'sirin' -- example: MyProject
local moduleName = 'demo_quest_condition' -- name must be unique across all the code.

local script = {
m_strUUID = projectName .. ".lua." .. moduleName,
}

---@param pPlayer CPlayer
function script.CPlayer__pc_NewPosStart(pPlayer) -- each hook must have own handler
    -- params: actType, actSub, count towards quest, isParty (Apply to rest of party)
    pPlayer:Emb_CheckActForQuest(30, pPlayer.m_pCurMap.m_pMapSet.m_strCode, 1, false)
end

function script.onThreadBegin()
-- your optional load state routine here
end

function script.onThreadEnd()
-- your optional save state routine here
end

local function autoInit()
    if not _G[moduleName] then
        _G[moduleName] = script -- bind your script to a global variable. moduleName name must be unique.

        table.insert(SirinLua.onThreadBegin, function() _G[moduleName].onThreadBegin() end)
        table.insert(SirinLua.onThreadEnd, function() _G[moduleName].onThreadEnd() end)
    else
        _G[moduleName] = script -- On reload 
    end

    -- Release Hooks (Used when reloading)
    SirinLua.HookMgr.releaseHookByUID(script.m_strUUID)

    -- Add hooks
    SirinLua.HookMgr.addHook("CPlayer__pc_NewPosStart", HOOK_POS.after_event, script.m_strUUID, script.CPlayer__pc_NewPosStart)
end

autoInit()
```