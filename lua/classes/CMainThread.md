# CMainThread
 
## Members
 
> `struct` `_SRAND` m_Rand
 
> `class` `CRFWorldDatabase`* m_pWorldDB
 
> `class` `CFrameRate` m_MainFrameRate
 
> `class` `CFrameRate` m_DBFrameRate
 
> `class` `CMsgProcess` m_GameMsg
 
> `class` `CConnNumPHMgr` m_MgrConnNum
 
> `class` `CConnNumPHMgr` m_HisMainFPS
 
> `class` `CConnNumPHMgr` m_HisSendFPS
 
> `class` `CConnNumPHMgr` m_HisDataFPS
 
> `class` `CMyTimer` m_tmServerState
 
> `bool` m_bVerCheck
 
> `class` `CMyTimer` m_tmEconomyState
 
> `int` m_tmDbUpdate
 
> `class` `CNetIndexList` m_listDQSData
 
> `class` `CNetIndexList` m_listDQSDataComplete
 
> `class` `CNetIndexList` m_listDQSDataEmpty
 
> `class` `CCheckSum` m_CheckSum
 
> `int` m_nLimUserNum
 
> `const` `char`* m_szWorldName
 
> `const` `char`* m_wszWorldName
 
> `const` `char`* m_wszMainGreetingMsg
 
> `const` `char`* m_wszRaceGreetingMsg_b
 
> `const` `char`* m_wszRaceGreetingMsg_c
 
> `const` `char`* m_wszRaceGreetingMsg_a
 
> `const` `char`* m_wszGMName
 
> `const` `char`* m_wszBossName_b
 
> `const` `char`* m_wszBossName_c
 
> `const` `char`* m_wszBossName_a
 
> `bool` m_bAwayPartyConsumeItem
 
> `const` `char`* m_strAwayPartyItemCode
 
> `bool` m_bAwayPartyConsumeMoney
 
> `unsigned int` m_dwAwayPartyMoney
 
> `const` `char`* m_strAllRaceChatItemCode
 
> `bool` m_bAllRaceChatItemConsume
 
> `bool` m_bAllRaceChatMoneyConsume
 
> `unsigned int` m_dwAllRaceChatMoney
 
> `unsigned char` m_byWorldCode
 
> `bool` m_bWorldOpen
 
> `bool` m_bWorldService
 
> `const` `char`* m_szWorldDBName
 
> `unsigned int` m_dwMessengerIP
 
> `unsigned int` m_dwAccountIP
 
> `unsigned int` m_dwCheckAccountOldTick
 
> `class` `CMyTimer` m_tmrCheckAvator
 
> `class` `CMyTimer` m_tmrCheckLoop
 
> `class` `CMyTimer` m_tmrAccountPing
 
> `class` `CMyTimer` m_tmrStateMsgGotoWeb
 
> `class` `CMyTimer` m_tmrCheckRadarDelay
 
> `int` m_bFreeServer
 
> `bool` m_bRuleThread
 
> `bool` m_bDQSThread
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblPlayer
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblMonster
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblNPC
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblAnimus
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblClass
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblExp
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblGrade
 
> `class` `CItemLootTable` m_tblItemLoot
 
> `class` `COreCuttingTable` m_tblOreCutting
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblItemMakeData
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblItemCombineData
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblItemExchangeData
 
> `class` [CItemUpgradeTable](lua/classes/CItemUpgradeTable.md) m_tblItemUpgrade
 
> `class` [CRecordData](lua/classes/CRecordData.md)* m_tblItemData_get(`enum TBL_CODE`)
 
> `class` [CRecordData](lua/classes/CRecordData.md)* m_tblEffectData_get(`enum EFF_CODE`)
 
> `class` [CRecordData](lua/classes/CRecordData.md)* m_tblUnitPart_get(`enum UNIT_PART`)
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblUnitBullet
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblUnitFrame
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblEditData
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_MonsterBaseSPData
 
> `class` `CMonsterSPGroupTable` m_MonsterSPGroupTable
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logBillCheck
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logSystemError
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logLoadingError
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logDungeon
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logKillMon
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logServerState
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logDTrade
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logGuild
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logDQS
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logRename
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logAutoTrade
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logEvent
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logMove
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logSave
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logReturnGate
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logHack
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logPvP
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logMonNum
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logAPIBilling
 
> `class` [CLogFile](lua/classes/CLogFile.md) m_logRenewalData
 
> `class` `CMyTimer` m_tmForceUserExit
 
> `int` m_nForceExitSocketIndexOffset
 
> `bool` m_bServerClosing
 
> `bool` m_bCheckOverTickCount
 
> `int` m_nSleepTerm
 
> `int` m_nSleepValue
 
> `int` m_nSleepIgnore
 
> `bool` m_bCheckSumActive
 
> `unsigned char` m_byWebAgentServerNetInx
 
> `bool` m_bConnectedWebAgentServer
 
> `unsigned char` m_byControllServerNetInx
 
> `bool` m_bConnectedControllServer
 
> `int` m_iOldDay
 
> `unsigned char` m_byWorldType
 
> `bool` m_bReleaseServiceMode
 
> `bool` m_bExcuteService
 
> `unsigned char` m_byServiceCompanyMode
 
> `class` `RFEventBase`* m_pRFEvent_ClassRefine
 
> `class` `CNotifyNotifyRaceLeaderSownerUTaxrate` m_kEtcNotifyInfo
 
> `class` `CBattleTournamentInfo` m_BattleTournamentInfo
 
> `struct` `GuildCreateEventInfo` m_GuildCreateEventInfo
 
> `struct` `_server_rate_realtime_load` m_ServerRateLoad
 
> `class` `TimeLimitMgr`* m_pTimeLimitMgr
 
> `class` `CMyTimer` m_tmCheckForceClose
 
> `struct` `_mob_message`* m_MobMessage
 
> `int` m_bLimitPlayerLevel
 
> `unsigned char` m_byLimitPlayerLevel
 
> `bool` m_bFlyOnOff
 
> `bool` m_bFlyLog
 
> `bool` m_bFlyUserCut
 
> `unsigned __int64` m_dwGuildEntryDelay
 
> `unsigned char` m_byPlayerInteg
 
> `unsigned int` m_dwGuildPower_get(`int`)
 
> `void` m_dwGuildPower_set(`int`,`unsigned int`)
 
> `unsigned int` m_dwServerResetToken
 
> `unsigned int` m_dwCheatSetPlayTime
 
> `unsigned short` m_dwCheatSetScanerCnt
 
> `unsigned short` m_dwCheatSetLevel
 
