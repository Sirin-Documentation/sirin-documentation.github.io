# Enable | Disable features
After [Registering](bind#register) an account features can be enabled / disabled \
View all available features with `show f`
Every feature has its own id `#`
```console
xxxx@xxx.xxx>show f
# - Is Active - Can disable - Name
[1]      - yes   - yes   - [Fix] Accept GvG with no money
[2]      - yes   - yes   - [Fix] Animation cancel
[3]      - yes   - yes   - [Fix] Animus recall lock on level up
[4]      - yes   - yes   - [Fix] AoP disable bugged post check
[5]      - yes   - yes   - [Fix] AoP hero combinations delay
[6]      - yes   - yes   - [Fix] AoP ore processing result
[7]      - yes   - yes   - [Fix] AoP unit repair
[8]      - yes   - yes   - [Fix] Apex crash (packet 98)
[9]      - yes   - yes   - [Fix] Bullet usage with non range weapons
[10]     - yes   - yes   - [Fix] Crash server through guild manage
[11]     - yes   - yes   - [Fix] Crash server through trade
[12]     - yes   - yes   - [Fix] Create character (name, base shape)
[13]     - yes   - yes   - [Fix] Create tower request
[14]     - yes   - yes   - [Fix] Create trap request
[15]     - yes   - yes   - [Fix] Dark Hole non party key hijack
[16]     - yes   - yes   - [Fix] Drop empty stack
[17]     - yes   - yes   - [Fix] Dupe on logout
...
[59]     - yes   - yes   - [Mod] Aura for chip destroyer only
```
To enable/disable a `can disable` feature use the command `feature` `[on/off]` `[id]`

```console
xxxx@xxx.xxx>feature off 59 
```
Some features require a server restart - you'll be notified if required