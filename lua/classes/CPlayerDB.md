# CPlayerDB
 
## Functions
 
> `unsigned int` GetCharSerial(`void`)
 
> `double` GetPvPPoint(`void`)
 
> `int` GetRaceCode(`void`)
 
> `unsigned int` GetDalant(`void`)
 
> `unsigned int` GetGold(`void`)
 
> `unsigned short` GetNewItemSerial(`void`)
 
## Members
 
> `unsigned char` m_byPvPGrade
 
> `struct` [_character_db_load](lua/classes/_character_db_load.md) m_dbChar
 
> `struct` [_bag_db_load](lua/classes/_bag_db_load.md) m_dbInven
 
> `struct` [_equip_db_load](lua/classes/_equip_db_load.md) m_dbEquip
 
> `struct` [_embellish_db_load](lua/classes/_embellish_db_load.md) m_dbEmbellish
 
> `struct` [_force_db_load](lua/classes/_force_db_load.md) m_dbForce
 
> `struct` [_animus_db_load](lua/classes/_animus_db_load.md) m_dbAnimus
 
> `struct` [_trunk_db_load](lua/classes/_trunk_db_load.md) m_dbTrunk
 
> `struct` [_Exttrunk_db_load](lua/classes/_Exttrunk_db_load.md) m_dbExtTrunk
 
> `struct` [_STORAGE_LIST](lua/classes/_STORAGE_LIST.md)* m_pStoragePtr_get(`int`)
 
> `struct` [_UNIT_DB_BASE](lua/classes/_UNIT_DB_BASE.md) m_UnitDB
 
> `struct` `_QUEST_DB_BASE` m_QuestDB
 
> `struct` `_SFCONT_DB_BASE` m_SFContDB
 
> `struct` [_ITEMCOMBINE_DB_BASE](lua/classes/_ITEMCOMBINE_DB_BASE.md) m_ItemCombineDB
 
> `class` `CPostStorage` m_PostStorage
 
> `class` `CPostReturnStorage` m_ReturnPostStorage
 
> `bool` m_bPersonalAmineInven
 
> `class` [AutominePersonal](lua/classes/AutominePersonal.md)* m_pAPM
 
> `struct` [_personal_amine_inven_db_load](lua/classes/_personal_amine_inven_db_load.md) m_dbPersonalAmineInven
 
> `unsigned short` m_wCuttingResBuffer_get(`int`)
 
> `unsigned char` m_byNameLen
 
> `unsigned int` m_dwAlterMastery_get(`int`)
 
> `struct` [_class_fld](lua/classes/_class_fld.md)* m_pClassData
 
> `struct` [_class_fld](lua/classes/_class_fld.md)* m_pClassHistory_get(`int`)
 
> `struct` [_class_fld](lua/classes/_class_fld.md)* m_ppHistoryEffect_get(`int`)
 
> `struct` `_quick_link`* m_QLink_get(`int`)
 
> `class` `CGuild`* m_pGuild
 
> `struct` `_guild_member_info`* m_pGuildMemPtr
 
> `unsigned char` m_byClassInGuild
 
> `class` `CGuild`* m_pApplyGuild
 
> `bool` m_bGuildLock
 
> `bool` m_bTrunkOpen
 
> `const` `char`* m_wszTrunkPasswd
 
> `double` m_dTrunkDalant
 
> `double` m_dTrunkGold
 
> `unsigned char` m_byTrunkSlotNum
 
> `unsigned char` m_byTrunkHintIndex
 
> `const` `char`* m_wszTrunkHintAnswer
 
> `unsigned char` m_byExtTrunkSlotNum
 
> `unsigned char` m_byTrunkIteg
 
> `int` m_nMakeTrapMaxNum
 
> `double` m_dPvpPointLeak
 
> `bool` m_bLastAttBuff
 
> `unsigned __int64` m_dwGuildEntryDelay
 
> `unsigned char` m_byPlayerInteg
 
> `unsigned short` m_wSerialCount
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pThis
 
> `const` `char`* m_aszName
 
