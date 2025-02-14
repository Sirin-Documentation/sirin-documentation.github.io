# Debugging
These features relate to debugging and inspecting how your server is running

## Debugging Player Stats (Server Side Data)

GM Command `%method [player name]` will dump server side info on the player targeted

> Use `%method *` to target self

`Notice: method >> OK` A new file will be created `Zoneserver\ZoneServerLog\CharLog\` `PlayerName_Method_TimeStamp.log`

>> 

Glitching of items in the client can show altered stats in the UI. But `%method` you can be sure what values are used by the server.

The server has full authority over how damage/modifiers are calculated no matter what is shown in the client.

```lua
>> PARAM ###########
Name: PlayerName
Serial: 16
HP cur: 14491; max: 14479; lim: 15926
FP cur: 3995; max: 4061; lim: 4467
SP cur: 2780; max: 2780; lim: 2780
>> POSITION ########
MAP: NeutralA
POS: -7344, 1035, -4507
TOWN: 2
STATE: stop; MODE: run; STAND: stand
>> RATE ############
[0] = 1.4500	GE_AttFc_
[1] = 1.4500	GA1
[2] = 1.4500	SK_AttFc_
[3] = 1.4500	SA1
[4] = 1.4500	FC_AttFc
[5] = 1.0000	GE_Stun
[6] = 1.1000	DefFc
[7] = 1.0000	FP_Consum
[8] = 1.0000	FC_CtDm_Tm
[9] = 1.1000	HP_Mx
[10] = 1.1000	FP_Mx
[11] = 1.0000	SP_Mx
[12] = 1.0000	HP_Absorb
[13] = 1.0000	FP_Absorb
[14] = 1.0000	HP_Rev
...
[88] = 0.0000	Near_Enchant_Unit
[89] = 0.0000	Far_Enchant_Unit
[90] = 0.0000	FC_Enchant_Unit
[91] = 0.0000	Def_Enchant_Unit
```

## Debug Menu (UI)

First open the main settings window `o` by default, then enter the key combo `CTRL` + `ALT` + `D`

> This displays the debug menu that contains the following

* Sirin Client build date
* Frame time and FPS
* Debug options to disable Sirin UI elements

