# Script Localization [Sirin 0.26+]

Client languages are defined in `RF_Bin\luaScript`

>> By default the following language pairs are defined and a default of en-gb is set

| id  | pair | Type   |
|---|---|---|
| default| en-gb | default language string, default pair set in `language.lua`  |
| strBR| pt-br  | Brazilian language string  |
| strCN| zn-cn  | Chinese language string  |
| strGB| en-gb  | English language string  |
| strID| en-id  | Indonesian  language string  |
| strJP| ja-jp  | Japanese language string  |
| strPH| en-ph  | Filipino language string  |
| strRU| ru-ru  | Russian language string  |
| strTW| zh-tw  | Taiwanese  language string  |
| strUS| en-us  | USA language string  |
| strTH| th-th  | Thai language string  |

Additional languages can be added in `language.lua`

>> Many of the scripted feature use this format

> NPCButtons

```lua
[169] = {
	actionType = 1,
	clientName = {
		default = "[Trade 5 red socks]",
	},
```


Additional languages can be added using the pairs from `language.lua`

```lua
[169] = {
	actionType = 1,
	clientName = {
		default = "[Trade 5 red socks]",
        strRU = "[Обменять 5 красных носков]",
	},
```
When the client loads with the language (ru-ru) the strRU language string will be used

> Dynamic Portals
```lua
buttonName = {
	default = 'Button name',
    strRU = "",
    strPH = "",
},
description = {
	default = 'Description line 1\nDescription line 2\nDescription line 3',
    strRU = "",
    strPH = "",
},
```
> Long description lines can be split using `\n` [does not work for button names]

