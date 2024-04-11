# Common Formula's used in Lua Scripting

### Upgrade Value

> Used frequently for spawning items - Max slot count and inserted talics

|   | Breakdown   |
|---|---|
| `3fffffff`  | Full string  |
| `3`  | Slots on weapon/armour  `0 to 7` |
| `fffffff`  | The 7 talics inserted  |

|   | Talic   | |  |    | |
|---|---|---|---|---|---|
| F  | None  | 5  | Favor  | B  | Grace  |
| 0  | Keen  | 6  | Wisdom  | C  | Mercy  |
| 1  | Destruction  | 7  | SacredFire  | D  | Resto  |
| 2  | Darkness  | 8  | Belief  |
| 3  | Chaos  | 9  | Guard  |
| 4  | Hatred  | A  | Glory  |

> This is converted into a number using a Hexadecimal to Decimal converter

### Durability Value

> Used frequently for spawning items

- For `Animus and Force reavers` use `Number` - Sets the Level of Reaver/Animus Lv
- For `Stackable Items` use `Number` - Set number of items in the stack
- For `Ammo Items (Ammo or Seige Kits)` use `Number` - Sets number of shots

### Storage Mask

- `Number` - scan mask 

`00000001` - inventory \
`00000010` - equipment \
`00000100` - embellish (rings, amulets, bullets) \
`00001000` - force item storage (where you put magic to use it) \
`00010000` - animus storage (same for Force) \
`00100000` - account storage \
`10000000` - extended account storage

`Binary` 00000001 `inventory` \
`Binary` 00000010 `equipment` \
`Binary` 00010000 `animus storage` \

`Binary` 00010011 to `Decimal` = `19`

You can mix values: A binary to Decimal converter can aid with this [Binary to Decimal](https://www.rapidtables.com/convert/number/binary-to-decimal.html)