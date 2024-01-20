# Guard Config

Configuration files are found in `sirin-scripts\config-guard\filename.lua`

`sirin-scripts\config-guard\ModExpMAU.lua`
```lua
-- Do not remove these lines
sirinGuardConfig.modExpMAU = {}
local config = {}
--------------------------

-- Configuration BEGIN

-- 2232 only. AoP have MAU exp by default.
-- bool. Aloow gain exp in MAU.
config.Enable = false

-- float. MAY hit exp rate. Used for fine tuning.
config.MAUExpHitRate = 1.0

-- Configuration END

-- Do not remove these lines
sirinGuardConfig.modExpMAU.Config = config
--------------------------
```

Each config file will alter how the ZoneServer functions, each file will contain comments to what the setting will affect

> Most configurations require restarting of the server to apply changes
