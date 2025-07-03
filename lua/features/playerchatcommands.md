# Player Chat Commands

Pre-defined commands that any player can type into the chatbox - all commands handled by scripted server hooks

> Commands executed by  `@MyCommandName` `Text input after command name`

### Define Commands per language
Define each command in `Client\DataTable\en-ph\ui.lang` replace `en-ph` with [language string](/scriptlocal.md)

```lua
-- Custom Chat Commands
ui.chat.cmd.1=MyCommandName 
ui.chat.cmd.2=Command2
ui.chat.cmd.3=Command3
ui.chat.cmd.4=Command4
...
ui.chat.cmd.20=Command20
```

### Chat Command Handler (Hook)

[Hook](/lua/features/hooks.md) `customChatHandler` and construct your scripted handler to parse the input

> Reload handlers using the GM command `%restart lua thread sirin.guard.mainThread`

```lua
local projectName = 'chatCommands' -- Example
local moduleName = 'module_chatCommands' -- Example

local script = {
    m_strUUID = projectName .. ".lua." .. moduleName,
}

function script.hookHandler1(pPlayer, dwID, strData)
    -- Example: Print to server console text input
    -- dwID is chat command index 1-20
    -- Write your own custom handler to paste the input
    print(strData)
end

function script.onThreadBegin()
end

function script.onThreadEnd()
end

local function autoInit()
    if not _G[moduleName] then -- One time initialization during Lua thread life
        _G[moduleName] = script -- Bind your script to a global variable. Variable name must be unique.

        table.insert(SirinLua.onThreadBegin, function() _G[moduleName].onThreadBegin() end)
        table.insert(SirinLua.onThreadEnd, function() _G[moduleName].onThreadEnd() end)
    else
        _G[moduleName] = script -- On reload 
    end

    SirinLua.HookMgr.releaseHookByUID(script.m_strUUID)
    SirinLua.HookMgr.addHook("customChatHandler", HOOK_POS.original, script.m_strUUID, script.hookHandler1)
end

autoInit()
```
