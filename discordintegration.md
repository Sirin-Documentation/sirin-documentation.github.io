# Discord Integration

Allows players to show gameplay status on discord when playing the server

***

### Create your Discord App

Create your discord application to obtain your unique Application ID

[https://discord.com/developers/applications](https://discord.com/developers/applications) → `New Application` 

> The name used for the app will be displayed on the players status info


### Configure Script

`sirin-scripts\config-guard\ModDiscordIntergration.lua` 

```lua
-- Configuration BEGIN

-- boolean. Enable discord integration
-- configure your discord app at https://discord.com/developers/applications
config.Use = true

-- integer. 
-- Application ID of your discord app 
config.id = 0

-- string. Additional info displayed below "Now Playing". Max len 128 bytes.
config.details = "Info for server"

-- Rich Presence -> Art Assets
-- string. Asset Key for icon. Max len 64 bytes.
config.icon = "icon"

-- Configuration END

```

### Icons / Images

To add custom assets navigate to your [app settings](https://discord.com/developers/applications) and click Rich Presence on the left-hand sidebar

1) Add Image(s) - Select an image from your pc
2) Assign a name for the asset - name is used for `config.icon`

> Minimum size for assets `512px x 512px` recommended size `1024px x 1024px`