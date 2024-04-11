# Interface Localization [Sirin 0.26+]

>> Language strings for the custom ui are set in `Client/LangPair/UITranslation.htm` language pairs from [script localization](scriptlocal)

```html
<!ENTITY chat-filters "Chat Filters">
<!ENTITY chat-alert "Alert">
<!ENTITY chat-local "Local">
<!ENTITY chat-party "Party">
<!ENTITY chat-guild "Guild">
<!ENTITY chat-system "System">
<!ENTITY chat-race "Race">
<!ENTITY chat-rep "Rep">
<!ENTITY chat-leader "Leader">
<!ENTITY chat-privatemessage "PM">
<!ENTITY chat-transport "Transport">
<!ENTITY chat-map "Map">
<!ENTITY chat-server "Server">
<!ENTITY chat-scramble "Scramble">
<!ENTITY chat-pt "PT">
```

> Without `UITranslation.htm` loaded, interface strings will appear as `&chat-party;` indicating a locale sting can't be found

#### Breakdown ####

`<!ENTITY chat-local "Local">`

`string` : `chat-local` String used by the interface that is to be replaced\
`string` : `Local` String that is seen when the localization is loaded, `change this to anything for your language`

>> Save your `UITranslation.htm` file as UTF-8 if you are using non latin characters