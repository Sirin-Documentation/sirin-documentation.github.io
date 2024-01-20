# GM Commands
Full list of GM commands is generated on server start `sirin-log\core\ModGMComm_DEBUG.log`

```lua
2024/01/13 08:52:39.417 [INFO] [**] [4111013633] (grade mask: 001111; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.418 [INFO] [*#] [2362814373] (grade mask: 001111; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.419 [INFO] [altp] [4165316848] (grade mask: 001111; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.420 [INFO] [player to] [2935320358] (grade mask: 001111; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.423 [INFO] [monster to] [4075587802] (grade mask: 001111; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.426 [INFO] [fixdist coef] [3861326964] (grade mask: 001110; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.427 [INFO] [fixdist log] [2923963166] (grade mask: 001110; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.430 [INFO] [fixpos m coef] [1801551571] (grade mask: 001110; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.430 [INFO] [fixpos d coef] [1282289435] (grade mask: 001110; subgrade mask: 111) Cheat add SUCCESS.
2024/01/13 08:52:39.433 [INFO] [fixpos dh] [3391892058] (grade mask: 001110; subgrade mask: 111) Cheat add SUCCESS.
...
```
> Grade and Subgrade Mask

These masks are used in `sirin-scripts\config-core\ModGMCommands.lua` to configure which GM accounts are able to access specific commands. Grade and Subgrade are set when [creating the account](accountcreate)

> Hash after the Command Name "fixpos dh" `3391892058`

Used for identifying the GM command in `sirin-scripts\config-core\ModGMCommands.lua`

# Modding GM Commands 

Gm commands are edited in `sirin-scripts\config-core\ModGMCommands.lua` in 3 ways `disable`, `alias` and `alter`
> disable
```lua
config.alterList = {
	{ 2773184455, "disable"}, -- disable the command 'show me the dalant'
    ...
}
```
Disables the command for everyone
> alias
```lua
config.alterList = {
	{ 2773184455, "alias", "money"}, -- alias for 'show me the dalant'
    ...
}
```
New command `money` that functions exactly the same as `show me the dalant` as well as any permissions this command uses by default. \
Both commands will be usable.
> alter

Used to alter commands
```lua
config.alterList = {
	{ 2773184455, "alter", "money"}, -- "show me the dalant" replaced with "money" command
    ...
}
```
Replaces the original command with the new one

> alter (With permissions change)
```lua
config.alterList = {
	{ 2773184455, "alter", "money", 63, 7}, -- "show me the dalant" replaced with "money" command but with the GM permissions changed
    ...
}
```
Same as above but with permissions changes

Permission are split into `Grade` and `Subgrade`

#### GM Grades [Grade mask binary] (Grade mask decimal):
- 0 [000001] (1) - normal player account. Not recommended
- 1 [000010] (2)
- 2 [000100] (4) - GM Grade that require sub grades. Only this Grade uses Sub Grades.
- 3 [001000] (8)
- 4 [010000] (16) - can use client debug menu Alt+F1
- 5 [100000] (32) - GM Tool. Can be used without player in game. Command handler must support.

Each value on 1 in the binary number - will enable this `grade` to use the command

example:
	4,3,2 [011100] (28) - 28 = 16 + 8 + 4

A binary to Decimal converter can aid with this [Binary to Decimal](https://www.rapidtables.com/convert/number/binary-to-decimal.html)

#### GM Sub Grades [Sub Grade mask binary] (Sub Grade mask decimal):
- 0 [001] (1) - sub grade 0
- 1 [010] (2) - sub grade 1
- 2 [100] (4) - sub grade 2

Each value on 1 in the binary number - will enable this `subgrade` to use the command

examples:
	2,0 [101] (5) - 5 = 4 + 1

#
Grade `28` Subgrade `5` command will be available for GMs: 
- 2-0
- 2-2
- 3-X
- 4-X   `where X is any value`


You can add own sub grades. Possible indexes for sub grade mask 0-30 [0000000000000000000000000000101] \
It is NOT recommended to use Grade > 4 for GM Account. Use Sub Grade to manage permissions.