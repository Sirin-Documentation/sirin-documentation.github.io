# Interface Localization [Sirin 0.26+]

>> Language strings for the custom ui are set in `Client/DataTable/LangPair/ui.lang` language pairs from [script localization](scriptlocal)

* For default GU - `Client/DataTable/en-gb/ui.lang`
* For default AoP -  `Client/DataTable/en-ph/ui.lang`

```html
-- Btn
ui.btn.off=Off
ui.btn.on=On
ui.btn.ok=Ok
ui.btn.cancel=Cancel
ui.btn.reset=Reset
ui.btn.apply=Apply
ui.btn.select=Select
ui.btn.take=Take
-- UI
ui.monster=Monster
ui.bellato=Bellato
ui.cora=Cora
ui.notice=Notice
ui.accretia=Accretia
```

> Without `ui.lang` loaded, interface strings will appear as `ui.settings.gameSettings` indicating a locale sting can't be found

> If every piece of text is displayed as `ui.settings.gameSettings`, `ui.chat.rep` then you haven't added the `ui.lang` file 

#### Breakdown ####

`ui.bellato=Bellato`

`string` : `ui.bellato` String used by the interface that is to be replaced\
`string` : `Bellato` String that is seen when the localization is loaded, `change this to anything for your language`

>> Save your `ui.lang` file as UTF-8 if you are using non latin characters