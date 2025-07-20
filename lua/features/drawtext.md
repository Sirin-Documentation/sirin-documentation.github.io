# Screen Text

Display custom text anywhere on screen, positioned from top left corner

<img style="border:1px solid black" src="img/sirin_text_custom.png"/> \
`Example of screen text - Script below will only show "Custom Text"`

```lua
{ "text screen", "111100", "111",
        ---@param pPlayer CPlayer
        ---@return boolean
        function (pPlayer)
            local send = {}
            send.ct = 1 -- Operation Mode (See table below)
            send.data = {}

            -- Insert draw text entry into send.data
            table.insert(send.data, {
                id = 1, -- unique id per text block 
                type = 0, -- 0: Screen Text  1: Sidebar Text
                visible = true,
                text = { str = "Custom Text", color = 0xFFFFFFFF },
                x = 250, -- X Position from top left
                y = 250, -- Y Position from top left
                flags = 0x40000020, -- Display flags (See table below)
                scale = 1, -- Display scale (Changes with flag)
            })

            local netOP = NetOP:new()
            netOP:SendData(pPlayer, "sirin.proto.onScreentext", send, true)
            return true
        end
},
```
> Example using a GM command but logic can be applied in any script

| Operation Mode  | Result   |
|---|---|
| 0  | Clear internal data (no update) |
| 1  | Set/Replace text with id |
| 2  | Delete text with id |
| 3  | Modify existing with id (1 or more parameter ) |

Text size and style can be adjusted with `scale` and `flags`

| Flags  | Result   |
|---|---|
| 0x30000000  | Standard text - No Outline  |
| 0x30000010  | Standard text - Drop Shadow |
| 0x30000020  | Standard text - Black Outline |
| 0x40000000  | Large text - No Outline  |
| 0x40000010  | Large text - Drop Shadow |
| 0x40000020  | Large text - Black Outline |

> Large text supports fewer characters


***

# Sidebar Text

Updating the Client sidebar using Lua scripting

<img style="border:1px solid black" src="img/sirin_text_side2.png"/> \
`Example of text visible in sidebar`

```lua
{ "text draw", "111100", "111",
        ---@param pPlayer CPlayer
        ---@return boolean
        function (pPlayer)
            local send = {}
            send.ct = 1 -- Operation Mode (See table below)
            send.data = {}

            -- Insert draw text entry into send.data
            table.insert(send.data, {
                id = 1, -- id 
                type = 1, -- 0: Screen Text  1: Sidebar Text
                visible = true,
                text = { str = "Value", color = 0xFFFFFFFF },
                name = { str = "Prefix", color = 0xFFFF0000 },
                x = 0, -- Tab Index in sidebar
                y = 0, -- Line Number (Do not skip over non created lines)
            })

            local netOP = NetOP:new()
            netOP:SendData(pPlayer, "sirin.proto.onScreentext", send, true)
            return true
        end
},
```
> Example using a GM command but logic can be applied in any script

See GM Command examples `%Text Draw`, `%Text Update`, `%Text Swap` in `ReloadableScripts\GMCommands\SirinCommands.lua`

| Operation Mode  | Result   |
|---|---|
| 0  | Clear internal data (no sidebar update) |
| 1  | Set/Replace row with id |
| 2  | Delete row and all ids on row |
| 3  | Modify existing row with id (1 or more parameter ) |