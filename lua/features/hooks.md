# User Scripts / Hooks [Sirin 0.40+]

user scripts are self contained scripts that contain everything needed to listen for `Events` on the server and run custom code

> [Full list of usable Hooks](lua/hooks.md)


#### Where to place scripts

Scripts can go anywhere in the `sirin-lua` Folder but to ensure a smooth experience upgrading Sirin to new versions - we recomend using the following locations

* `sirin-lua/YourScript.lua`
* `sirin-lua/YourFolderName/YourScript.lua`
* `sirin-lua/Custom/YourScript.lua`

> Below is the default starter template for your own scripts

```lua
local projectName = 'yourproject' -- Example: MyProject
local moduleName = 'module_unique_name' -- Example: ModuleMgr

local script = {
    m_strUUID = projectName .. ".lua." .. moduleName,
}

-- Hook Hander for CMonster__Destroy
function script.hookHandler1(pMonster, byDestroyCode, pAttObj) 
	-- Send annoucement of monster death
	NetMgr.monsterLifeStateInform(
            1,
            Sirin.mainThread.baseToMonsterCharacter(pMonster.m_pRecordSet), 
            pMonster.m_pCurMap, 
            Sirin.mainThread.objectToPlayer(pAttObj)
        )
end

function script.onThreadBegin()
    -- Your optional initialization routine here
end

function script.onThreadEnd()
	-- Your optional destructor routine here
end

local function autoInit()
    if not _G[moduleName] then -- One time initialization during Lua thread life
        _G[moduleName] = script -- Bind your script to a global variable. Variable name must be unique.

        table.insert(SirinLua.onThreadBegin, function() _G[moduleName].onThreadBegin() end)
        table.insert(SirinLua.onThreadEnd, function() _G[moduleName].onThreadEnd() end)
    else
        _G[moduleName] = script -- On reload 
    end

	-- Release any hooks already set (Used when reloading script)
    SirinLua.HookMgr.releaseHookByUID(script.m_strUUID)

	-- Example hook for CMonster__Destroy
    SirinLua.HookMgr.addHook("CMonster__Destroy", HOOK_POS.after_event, script.m_strUUID, script.hookHandler1)
    
	-- Additional Hooks
	-- SirinLua.HookMgr.addHook("hook_fuction_name", HOOK_POS.original, script.m_strUUID, script.hookHandler2)

    -- your optional initialization routine below this line
end

-- Ensure autoinit() is called
autoInit()
```
## Using Hooks
Hooks can be found in the [Full list of usable Hooks](lua/hooks.md)

Each hook contains

* Function name  : `CPlayer__pc_NewPosStart`
* Function parameters : `CPlayer pPlayer`

> Use these parameters to create your hook handler. 

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