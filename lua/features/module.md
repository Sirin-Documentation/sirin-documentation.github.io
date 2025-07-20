# User Scripted Modules

user scripts are self contained scripts that contain everything needed to listen for `Events` on the server and run custom code

> [Full list of usable Hooks](lua/hooks.md)


#### Where to place Modules

Modules can go anywhere in the `sirin-lua` Folder but to ensure a smooth experience upgrading Sirin to new versions - we recomend using the following locations

* `sirin-lua/threads/main/custom/YourModule.lua`
* `sirin-lua/YourFolderName/YourModule.lua`
* `sirin-lua/Custom/YourModule.lua`

***

## Initalize your Module

Each module needs to be added to one of the `init` files with `require()`

```lua
-- place here your required files

require('threads.main.custom.YourModule')
...
```

Depending on script location use one of the following

* `sirin-lua/threads/main/initMainThread.lua`
* `sirin-lua/threads/main/custom/init.lua`

***

### Module Template

> Below is the default starter template for your own module script

Find the latest version of this template at `threads\main\custom\module_template.lua`


```lua

local projectName = 'yourproject' -- example: MyProject
local moduleName = 'module_unique_name' -- example: `ModuleMgr` name must be unique across all the code.

local script = {
	m_strUUID = projectName .. ".lua." .. moduleName,
}

function script.hookHandler() -- each hook must have own handler

end

function script.onThreadBegin()
	-- your optional load state routine here
end

function script.onThreadEnd()
	-- your optional save state routine here
end

local function autoInit()
	if not _G[moduleName] then
		_G[moduleName] = script
		table.insert(SirinLua.onThreadBegin, function() _G[moduleName].onThreadBegin() end)
		table.insert(SirinLua.onThreadEnd, function() _G[moduleName].onThreadEnd() end)
	else
		_G[moduleName] = script
	end

	SirinLua.HookMgr.releaseHookByUID(script.m_strUUID)
	--SirinLua.HookMgr.addHook("function_name1", HOOK_POS.original, script.m_strUUID, script.hookHandler1) -- add necessary hooks
	--SirinLua.HookMgr.addHook("function_name2", HOOK_POS.original, script.m_strUUID, script.hookHandler2) -- add necessary hooks

	-- your optional initialization routine below this line

end

autoInit()

-- other logic below this line

```

