<img width="100px" style="margin-left:18px; margin-bottom:10px" src="sirin-logo.svg"/>

- [Feature List](featurelist.md)
- [Download](download.md)

- Server Installation
    - [Requirements](requirements.md)
    - [Database](databases.md)
      - [User Mapping](databases.md#user-mapping)
      - [Migrating Database](databases.md#migrating-databases)
  - [Startup](copyfiles.md)
  - [Common Errors](errors.md)
    - [Database Connection Errors](errors.md#database-connection-errors)
    - [Server Launch Errors](errors.md#server-launch-errors)


- Client Installation
  - [Client](client.md)
  - [Account Creation](accountcreate.md)
  - [Game Launcher](launcher.md)

- Launcher SDK
  - [Demo Launcher](demolauncher.md)
  - [SDK](launchersdk.md)
    - [C++ SDK](launchersdk.md#c-sdk)
    - [C# Wrapper](launchersdk.md#c-wrapper)

- Server Console
  - [Commands](consolebasics.md)
  - [Register/Bind](bind.md)
    - [Register](bind.md#register)
    - [Bind Server](bind.md#bind-server-to-account)
    - [Bind license](bind.md#bind-license-to-server)
  - [Enable/Disable Features](plugins.md)

- Server
  - [GM Commands (Default)](gmcommands.md)
    - [Modding Gm Commands](gmcommands.md#modding-gm-commands)
  - [GM Commands (Extended)](gmcommandsadv.md)
    - [Item Give](gmcommandsadv.md#item-give-command)
    - [Alter Currency](gmcommandsadv.md#alter-currency)
    - [Remove/replace items](gmcommandsadv.md#removereplace-items)
    - [Teleport Player(s)](gmcommandsadv.md#teleport-players)
    - [Spawn Monster](gmcommandsadv.md#spawn-monsters-at-coords)
  - [GM Commands (Scripted)](gmcommandsscripted.md)
  - [Guard Config](serverconfigs.md)
  - [Potion Effects](potions.md)
    - [Potion Types](potions.md#potion-types)
    - [Infinite Potions](potions.md#infinite-potions)
    - [Cure Potion](potions.md#cure-potions)
  - [Loot Boxes (BoxItemOut)](lootboxes.md)
  - [Server Portals (Rifts)](portals.md)
  - [NPC Buttons](npcbuttons.md)
  - [Client File Encryption](cencrypt.md)
  - [Error Logs](loglocations.md)

- Lua
  - [Lua Scripting](lua/luascripting.md)
  - [Common Formulas](lua/formulas.md)
    - [Upgrade String](lua/formulas.md#upgrade-value)
    - [Durability Value](lua/formulas.md#durability-value)
    - [Storage Mask](lua/formulas.md#storage-mask)
  - Globals
    - mainThread
      - [teleportPlayer](lua/mainThread.md#teleportPlayer)
      - [giveItemByName](lua/mainThread.md#giveitembyname)
      - [giveItemBySerial](lua/mainThread.md#giveitembyserial)
      - [takeItemBySerial](lua/mainThread.md#takeitembyserial)
      - [getPlayerBySerial](lua/mainThread.md#getPlayerBySerial)
      - [objectToPlayer](lua/mainThread.md#objectToPlayer)
      - [createMonster](lua/mainThread.md#createmonster)
      - [createItemBox](lua/mainThread.md#createitembox)
  - Classes
    - [CMapData](lua/cmapdata.md)
    - [CPlayer](lua/cplayer.md)
    - [CMapOperation](lua/cmapoperation.md)

- Localization
  - [Sirin Scripts](scriptlocal.md#localization)
  - [Interface](uilocal.md#localization)
  - [(Parser) ND Files](ndlocal.md#localization)