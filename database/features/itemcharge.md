# Item Charge

Allows the sending of items to players instantly by inserting data into the database; Known as the item charge table

***



```lua
-- Sirin_InsertPlayerChargeItem SQL stored procedure
DECLARE @ChSerial INT = 123456;  -- Example Character Serial Number
DECLARE @ItemCode CHAR(8) = 'iyyyy02';  -- Example Item Code (must be 8 characters)
DECLARE @Dur BIGINT = 1000;  -- Example Duration
DECLARE @Upg INT = 0;  -- Example Upgrade Level
DECLARE @Time INT = 0;  -- Example Time in seconds

EXEC [dbo].[Sirin_InsertPlayerChargeItem]
    @ChSerial,
    @ItemCode,
    @Dur,
    @Upg,
    @Time;
```

> ChSerial

Character serial to send item to - Find this in `dbo.tbl_base` → `serial`

> ItemCode

Server item code eg. `iyyyy02`, `ipbhp02` 

> Dur

Data value for the item - same as [Loot boxes](/lua/features/lootboxes.md#extra-item-data-stacks-summons-upgrades-ammo)

##### Stackable Items
    Dur is used for the stack size `99`
##### Ammo
    Dur is used for size of the ammo stack `1000`

##### SeigeKits
    Dur is used for the number of shots in the seige kit `1500`

##### Force Spells / Animus Reavers
    Dur is used for the reaver level (Spells) `1 to 7` (Animus) `1 to max level`

> Upg

Sets both the upgrade and slot count on the weapon/armour `hex value`

|   | Breakdown   |
|---|---|
| `0x3fffffff`  | Full code  |
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


> Time
Expiration time (Seconds)