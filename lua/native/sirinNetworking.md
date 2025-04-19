# sirinNetworking (NetMgr)
### Functions
 
 ---

> NetMgr.privateChatMsg(`pPlayer`, `Msg`, `optMsgType`, `optColor`)

 ```lua
local message = { 
	default = "Private message",
}
NetMgr.privateChatMsg(pPlayer, message, CHAT_TYPE.System, 0xFFFF0000)

```
`pPlayer` - Player to send message to \
`Msg` - Message string or table ([Localization](scriptlocal.md)) \
`MsgType` - Optional message type to simulate messages

| MsgType | |
|--|--|
|CHAT_TYPE.Normal|CHAT_TYPE.Map|
|CHAT_TYPE.Party|CHAT_TYPE.ImportantAll|
|CHAT_TYPE.Guild|CHAT_TYPE.Scramble|
|CHAT_TYPE.System|CHAT_TYPE.PT|
|CHAT_TYPE.Race|CHAT_TYPE.Whole|
|CHAT_TYPE.PM|CHAT_TYPE.Monster|
|CHAT_TYPE.Transport|CHAT_TYPE.Trade|

`optColor` - Optional Color in hex ARGB

---

> NetMgr.SendGlobalChatData(`Msg`, `optMsgType`, `optAnnounceType`, `optRace`, `optColor`)

 ```lua
local announceMsg = { 
	default = "Global Message",
}
NetMgr.SendGlobalChatData(announceMsg, CHAT_TYPE.System, ANN_TYPE.mid3, nil, 0xFF00FF00)

```

`Msg` - Message string or table ([Localization](scriptlocal.md)) \
`optMsgType` - Optional message type to simulate messages \
`optAnnounceType` - Location of message

| Accounnce Type | Desc |
|--|--|
|ANN_TYPE.top| scroll sctring on top of the screen (no color)|
|ANN_TYPE.mid1| position where race shout appears|
|ANN_TYPE.mid2| position where yellow gm notice appears|
|ANN_TYPE.mid3| position where red system message appears|
|nil| Only show message in chat|

`optRace` - 
`optColor` - Optional Color in hex ARGB

---

> NetMgr.alterMoneyInform(`pPlayer`, `dwCurrencyType`, `nAlter`)

`pPlayer` - Player to send alter currency message \
`dwCurrencyType` - Currency type to display being altered \

| Type | Value | Type | Value
|--|--|--|--|
| Race Currency | 0 |Processing Points|4|
| Gold| 1 |Hunting Points |5|
| Certain Points|2 | Gold Point|6|

`nAlter` - Amount to alter currency by

---

### Alias functions

> NetMgr.globalChatMsg(Msg, optMsgType)

> NetMgr.bellatoChatMsg(Msg, optMsgType)

> NetMgr.coraChatMsg(Msg, optMsgType)

> NetMgr.accretiaChatMsg(Msg, optMsgType)

> NetMgr.globalAnnounceMsg(Msg, optAnnType)

> NetMgr.bellatoAnnounceMsg(Msg, optAnnType)

> NetMgr.coraAnnounceMsg(Msg, optAnnType)

> NetMgr.accretiaAnnounceMsg(Msg, optAnnType)

### Examples

Example using Lua scripted GM commands

```lua
{ "test", "111100", "111",
    function (pPlayer)
        local announceMsg = { 
		   default = "Test message",
		}
		NetMgr.SendGlobalChatData(announceMsg, CHAT_TYPE.System, ANN_TYPE.mid3, nil, 0xFF00FF00)
        return true
    end
}, -- dont forget separating comma
```

> Use `%gmc reload` to reload your scripted GM Commands without needing to restart the server

> `%test`  to run the GM command

`Result` "Test Message" will appear middle on the screen in green along with "Test Message" in system chat

