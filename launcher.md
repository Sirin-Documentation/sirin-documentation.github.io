# Game Launcher

Demo Launcher is provided with [Sirin](README#download) `!Client -> Launcher -> Bin` `x64` or `x86 (32 bit)`

The Launcher enables you to start the game and connect to a server

```
Copy all the Launcher files `Including folders` into your client folder (Replace any files that already exist)
```

> There is no auto update with this demo launcher\
> To develop your own Launcher with auto update that is compatible with Sirin see [Launcher SDK](launchersdk.md)

## Launcher Settings 
`QtDemoLauncher.exe` `File` -> `Settings`
### Client Version

Client version - GU (2232) or AoP (4.15)

### Client Language

Client language to launch the game with
> Requires a language folder in your dataTable folder that matches

* `GU`  en-gb (English UK)
* `AoP` en-ph (English Philippines)
* `AoP` ru-ru (Russian)

> [Sirin Script Localization](localization.md) For more advanced options

### Login Server

IP and Port for login server

`127.0.0.1` `10001`  - If running a server locally with default ports

> Can be adjusted in `sirin-scripts\config-core\ModAccountLoginService.lua`

```config
-- integer. Port of internal login server
config.LoginPort = 10001
```