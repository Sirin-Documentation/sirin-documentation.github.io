# Sirin Features

> View all available features with `show f` from the Server Console

After [Registering](bind#register) an account features can be [enabled / disabled](plugins.md)

## Core Features 

Account and Login servers fully rewritten (64 char hashed passwords) with 2 factor authentication. 
- Mutli-Threaded Networking Engine
- Port flood and DDoS mitigation
- Limits for max number of clients per player
- Threaded loading of Maps (during server boot)

#### Free to Developers
- Under 50 players online you can use Sirin free of charge _Perfect for a team of developers_

#### Simplification of Server
- Account and Login servers. (Both servers no longer used)
- Launch the ZoneServer and your server is running

## Scripted Features 

> All Reloadable without restarting

- [Server Side Portals](portals.md) _No client edits required_ reload and players will see them
    - Open/Close schedules (exact time or repeating operations)
    - Item/equipment/upgrade/level/grade requirements [Config options](portals.md)
    - Limit uses per open portal before despawning

- [Scripted potions](potions.md) (buffs, currency, pt's, cash points, mob spawning, upgrade failure protection)

- [Scripted open-able boxes](lootboxes.md) (pre-upgraded items, slot counts, race specific results)

- Scripted upgrade rates to modify success/loss/destroy

## Configurable Features

> View all features with `show f` in the server console

-  StackExt (stack limit increase up-to 255)
-  Potion effect save on logout
-  Expanded effect system up-to 20 buffs/debuffs/potions with extended durations (1yr+)
-  Remove potion effects on right click
-  Client file encryption (with encryption tool)
-  AutoLoot  (charm, auto convert to currency, loot in MAU/SeigeKit)
-  BoxOpen  (mix between scripted boxes and original)
-  CustomClientCodePage
-  CustomItemEnchanting (protective potions in case of item upgrade failure)
-  DisableCashShopAds
-  DisableTutorial (skip new character tutorial)
-  EventSetDuration
-  ExpMAU
-  MauKeyDestory (Fixes and enables the destruction of MAU keys on death)
-  HolyStoneHP
-  LootNameHide (Hide name of loot items with custom name)
-  MapNum (client map count)
-  MaxGuardTowerNum
-  MaxLevel
-  ParallelLoading
-  PlayerZOOM
-  PotionEffect (config for scripted potions)
-  PvPShare
-  ReturnGate
-  SeeDistance
-  SkipMovie (skip intro vids)
\
...

## Bug Fixes

> View all bug fixes with `show f`,  new fixes added with every update

-  Sync MAU/siege state of other players
-  Animus re-summon after teleport
-  Animus update battle stats after level up without re-summon
-  Character creation vulnerability (whitespace characters in name, transparent body)
-  Ammo vulnerability (use ammo's attack bonus with melee weapon)
-  Animation hack (use next different skill without waiting for completion of current animation)
-  Siege skills hacks (use siege skills with non siege mode and vice versa)
-  Player move: SH, WH, FH
-  Player Attack/buf/debuf WH
-  GM Command backdoor
-  Empty stack vulnerability (ground throw/mail send/open box 0 items in stack)
-  Premium item hack
-  Crash server (Guild manage, Trade, Chinese client)
-  GvG Reward hack
-  Set item effect hack
-  Trade dupe
-  NPC store (purchase value overflow) !partial fix
-  Post dupe
-  Init class by gold
-  Rare server crash using empty auto-mining machine battery
-  Pickup item error
-  Ore mining hack (mine +4 ore)
-  Race Debuff potion release hack
-  System Guard tower passive while friendly race attacked by monster
-  Tower re-roll after disconnect
-  Tower make vulnerability (WH, FH, Level check, map loading)
-  Trap make vulnerability (WH, FH, Level check, map loading)
-  Unit delivery vulnerability (WH, FH)
-  Permanent CW buff after leaving guild
-  Player can use free teleport to HQ for GM
-  Trunk swap and dupe
-  Embellish storage check
-  NPC quest simultaneous completion
-  Rename potion SQL Injection
-  Long Distance Attack/Debuf
-  Teleport in battle mode
-  Guild Room teleportation check
-  Client crash when auto-mining machine under attack (Russian ndLanguage.edf issue)
-  Zone crash at exit
-  Guild honor setup \
...