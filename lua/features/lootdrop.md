# Scripted Monster Drops [Sirin 0.40+]

Scripted and reloadable monster loot drops

> Reload monster drops using the GM command `%restart lua thread sirin.guard.mainThread`

***

#### Basic Operation

Enable scripted looting on the main thread by uncommenting (remove `--`)

`sirin-lua\threads\main\initMainThread.lua` → `SirinLua.onThreadBegin`

```lua
SirinLua.onThreadBegin = {
	...
	function() MonsterScheduleMgr.initHooks(); MonsterScheduleMgr.loadScripts(); SirinLua.LoopMgr.addMainLoopCallback(MonsterScheduleMgr.m_strUUID, function() MonsterScheduleMgr.onLoop() end, 1000) end,
	function() LootingMgr.initHooks(); LootingMgr.loadScripts(); SirinLua.LoopMgr.addMainLoopCallback(LootingMgr.m_strUUID, function() LootingMgr.onLoop() end, 100) end,
}
```
This will enable the scripted looting system, and cause any scripts at

`sirin-lua\threads\main\ReloadableScripts\ItemLooting` to be loaded

```lua
local lt = {}
local mlt = {}
local function canDropStdLoot() return true end

mlt = lt["00000"] or {}; lt["00000"] = mlt; table.insert(mlt, {canDropStdLoot, 1503215615, 0, 2, 6, "iyyyy01", "iyyyy02", "iyyyy03", "iyyyy04", "iyyyy05", "iyyyy06"})
mlt = lt["00000"] or {}; lt["00000"] = mlt; table.insert(mlt, {canDropStdLoot, 32211763, 0, 1, 5, "ihawa04", "iuawa04", "ilawa04", "igawa04", "isawa04"})
mlt = lt["00000"] or {}; lt["00000"] = mlt; table.insert(mlt, {canDropStdLoot, 32211763, 0, 1, 5, "ihawb04", "iuawb04", "ilawb04", "igawb04", "isawb04"})
```

Each row is equal to the rows found in `MonsterLooting.dat` but fully scripted and better suited for tracking edits

***

#### Adv Operation

> This is a fully editable script. So all the logic for how data is loaded can be adjusted

* Your monster loot data could be generated on server startup based on rules

\+ more options using [Sirin Scripting](lua/threads/MainThread) 

Manager script at `sirin-lua\threads\main\_system\manager\itemLooting.lua`
```lua
---@return boolean
function sirinLootingMgr.loadScripts()
	local bSucc = false

	local dLoadStart = os.clock()
	print "Looting table load start"

	repeat
		SirinTmp_ItemLooting = FileLoader.LoadChunkedTable(".\\sirin-lua\\threads\\main\\ReloadableScripts\\ItemLooting", true)

		if not SirinTmp_ItemLooting then
			Sirin.console.LogEx_NoFile(ConsoleForeground.RED, ConsoleBackground.BLACK, "Failed to load 'ItemLooting' scripts!\n")
			Sirin.WriteA(sirinLootingMgr.m_pszLogPath, "Failed to load 'ItemLooting' scripts!\n", true, true)
			break
		end

		if not sirinLootingMgr.validateScriptData() then
			break
		end

		sirinLootingMgr.init()
```