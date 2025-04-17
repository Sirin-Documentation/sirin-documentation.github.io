# CHolyStoneSystem
 
> `int` GetDestroyerState(`void`)
 
> `unsigned int` GetDestroyerSerial(`void`)
 
> `unsigned int` GetDestroyerGuildSerial(`void`)
 
> `unsigned char` GetNumOfTime(`void`)
 
> `int` GetSceneCode(`void`)
 
> `void` SetKeeperDestroyRace(`unsigned char`)
 
## Members
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblQuest
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logQuest
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logQuestDestroy
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logPer10Min
 
> `class` `CMyTimer` m_tmrHSKSystem
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pkDestroyer
 
> `unsigned int` m_dwNextStartTime
 
> `int` m_nHolyStoneNum
 
> `struct` [__holy_keeper_data](lua/classes/__holy_keeper_data.md) m_HolyKeeperData
 
> `struct` [__holy_stone_data](lua/classes/__holy_stone_data.md)* m_HolyStoneData_get(`unsigned __int64`)
 
> `unsigned int` m_dwCheckTime_get(`unsigned __int64`)
 
> `void` m_dwCheckTime_set(`unsigned __int64`,`unsigned int`)
 
> `class` [CHolyScheduleData](lua/classes/CHolyScheduleData.md) m_ScheculeData
 
> `class` [CHolyStoneSaveData](lua/classes/CHolyStoneSaveData.md) m_SaveData
 
> `class` `CMyTimer` m_tmrCumPlayer
 
> `const` `char`* m_strHolyMental
 
> `struct` [_QUEST_CASH](lua/classes/_QUEST_CASH.md)* m_cashQuest_get(`unsigned __int64`)
 
> `float` m_fKeeperHPRate
 
> `float` m_fFirstKeeperHPRate
 
> `int` m_nScheduleCodePre
 
> `struct` [_QUEST_CASH_OTHER](lua/classes/_QUEST_CASH_OTHER.md)* m_cashQuestOther_get(`unsigned __int64`)
 
> `struct` [_portal_dummy](lua/classes/_portal_dummy.md)* m_pPortalDummy_get(`unsigned __int64`)
 
> `void` m_pPortalDummy_set(`unsigned __int64`,`struct` [_portal_dummy](lua/classes/_portal_dummy.md) *)
 
> `int` m_nRaceBattlePoint_get(`unsigned __int64`,`unsigned __int64`)
 
> `void` m_nRaceBattlePoint_set(`unsigned __int64`,`unsigned __int64`,`int`)
 
> `unsigned char` m_byKeeperDestroyRace
 
> `bool` m_bConsumable
 
> `bool` m_pMentalPass
 
> `bool` bFreeMining
 
