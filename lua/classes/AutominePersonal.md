# AutominePersonal

---@class (exact) AutominePersonal: CCharacter
 
## Members
 
> `bool` m_bDBLoad
 
> `bool` m_bOpenUI_Inven
 
> `bool` m_bOpenUI_Battery
 
> `bool` m_bInstalled
 
> `bool` m_bInvenFull
 
> `bool` m_bStart
 
> `unsigned char` m_bySelOre
 
> `unsigned short` m_wItemSerial
 
> `unsigned char` m_byFilledSlotCnt
 
> `unsigned int` m_dwNextSendTime_CurState
 
> `unsigned char` m_dwDelaySec
 
> `unsigned int` m_dwDelay
 
> `unsigned int` m_dwNextMineTime
 
> `unsigned int` m_dwChangeSendTime
 
> `int` m_nMaxHP
 
> `struct` [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md)* m_pItem
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pOwner
 
> `unsigned char` m_byUseBattery
 
> `struct` `AP_BatterySlot`* m_pBatterySlot
 
> `bool` m_bChanged
 
> `struct` `_personal_amine_mineore_zocl` m_changed_packet
 
> `unsigned int` m_dwMineCount_get(`int`)
 
> `void` m_dwMineCount_set(`int`,`unsigned int`)
 
> `struct` `_qry_case_update_mineore` m_update_mineore_old
 
> `struct` `_qry_case_update_mineore` m_update_mineore_new
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logProcess
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logSysErr
 
