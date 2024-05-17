# CPlayer
: public [CCharacter](lua/classes/CCharacter.md)
 
## Functions
 
> `bool` IsApplyPcbangPrimium(`void`)
 
> `bool` IsChaosMode(`void`)
 
> `bool` IsPunished(`unsigned char`,`bool`)
 
> `int` GetMaxFP(`void`)
 
> `int` GetFP(`void`)
 
> `int` GetMaxSP(`void`)
 
> `int` GetSP(`void`)
 
> `void` ReCalcMaxHFSP(`bool`,`bool`)
 
> `void` SendData_ChatTrans(`unsigned char`,`unsigned long`,`unsigned char`,`bool`,`const` `char` *,`unsigned char`,`const` `char` *)
 
> `bool` IsRidingUnit(`void`)
 
> `bool` IsSiegeMode(`void`)
 
> `int` Emb_UpdateStat(`unsigned long`,`unsigned long`,`unsigned long`)
 
> `void` SendMsg_StatInform(`unsigned char`,`unsigned long`,`unsigned char`)
 
> `struct` [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md)* Emb_AddStorage(`unsigned char`,`struct` [_STORAGE_LIST___storage_con](lua/classes/_STORAGE_LIST___storage_con.md) *,`bool`,`bool`)
 
> `void` SendMsg_TakeNewResult(`unsigned char`,`struct` [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md) *)
 
> `bool` Emb_DelStorage(`unsigned char`,`unsigned char`,`bool`,`bool`,`const` `char` *)
 
> `void` SendMsg_DeleteStorageInform(`unsigned char`,`unsigned short`)
 
> `unsigned long` Emb_AlterDurPoint(`unsigned char`,`unsigned char`,`int`,`bool`,`bool`)
 
> `void` SendMsg_AdjustAmountInform(`unsigned char`,`unsigned short`,`unsigned long`)
 
> `void` AlterDalant(`double`)
 
> `void` AlterGold(`double`)
 
> `void` SendMsg_AlterMoneyInform(`unsigned char`)
 
> `void` SubActPoint(`unsigned char`,`unsigned long`)
 
> `void` SendMsg_Alter_Action_Point(`unsigned char`,`unsigned long`)
 
> `void` AlterPvPPoint(`double`,`enum PVP_ALTER_TYPE`,`unsigned long`)
 
> `void` AlterPvPCashBag(`double`,`enum PVP_MONEY_ALTER_TYPE`)
 
> `void` IncPvPPoint(`double`,`enum PVP_ALTER_TYPE`,`unsigned int`)
 
> `void` SetLevel(`unsigned char`)
 
> `void` SetLevelD(`unsigned char`)
 
> `void` AlterMaxLevel(`unsigned char`)
 
> `unsigned long` _check_mastery_cum_lim(`unsigned char`,`unsigned char`)
 
> `int` _GetPartyMemberInCircle(`struct` `lua_State` *)
 
> `int` OutOfMap(`struct` `lua_State` *)
 
> `void` SendMsg_CombineItemExResult(`struct` [_combine_ex_item_result_zocl](lua/classes/_combine_ex_item_result_zocl.md) *)
 
> `void` SendMsg_RewardAddItem(`struct` [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md) *,`unsigned char`)
 
> `void` SendMsg_AlterItemDurInform(`unsigned char`,`unsigned short`,`unsigned __int64`)
 
## Members
 
> `bool` m_bLoad
 
> `bool` m_bOper
 
> `bool` m_bPostLoad
 
> `bool` m_bFullMode
 
> `unsigned char` m_byUserDgr
 
> `unsigned char` m_bySubDgr
 
> `bool` m_bFirstStart
 
> `bool` m_bOutOfMap
 
> `unsigned char` m_byMoveDirect
 
> `unsigned char` m_byPlusKey
 
> `unsigned short` m_wXorKey
 
> `unsigned int` m_dwMoveCount
 
> `unsigned int` m_dwTargetCount
 
> `unsigned int` m_dwAttackCount
 
> `bool` m_bBaseDownload
 
> `bool` m_bInvenDownload
 
> `bool` m_bForceDownload
 
> `bool` m_bCumDownload
 
> `bool` m_bQuestDownload
 
> `bool` m_bSpecialDownload
 
> `bool` m_bLinkBoardDownload
 
> `bool` m_bAMPInvenDownload
 
> `bool` m_bGuildListDownload
 
> `bool` m_bGuildDownload
 
> `bool` m_bBuddyListDownload
 
> `bool` m_bBlockParty
 
> `bool` m_bBlockWhisper
 
> `bool` m_bBlockTrade
 
> `bool` m_bCreateComplete
 
> `unsigned int` m_dwSelfDestructionTime
 
> `float` m_fSelfDestructionDamage
 
> `bool` m_bTakeGravityStone
 
> `bool` m_bBlockGuildBattleMsg
 
> `bool` m_bInGuildBattle
 
> `bool` m_bNotifyPosition
 
> `unsigned char` m_byGuildBattleColorInx
 
> `bool` m_bTakeSoccerBall
 
> `struct` [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md)* m_pSoccerItem
 
> `class` [CUserDB](lua/classes/CUserDB.md)* m_pUserDB
 
> `class` [CPartyPlayer](lua/classes/CPartyPlayer.md)* m_pPartyMgr
 
> `class` [CPlayerDB](lua/classes/CPlayerDB.md) m_Param
 
> `struct` [_CLID](lua/classes/_CLID.md) m_id
 
> `unsigned char` m_byMoveType
 
> `unsigned char` m_byModeType
 
> `unsigned char` m_byStandType
 
> `class` `CRealMoveRequestDelayChecker` m_kMoveDelayChecker
 
> `struct` [_WEAPON_PARAM](lua/classes/_WEAPON_PARAM.md) m_pmWpn
 
> `struct` `_DTRADE_PARAM` m_pmTrd
 
> `struct` [_MASTERY_PARAM](lua/classes/_MASTERY_PARAM.md) m_pmMst
 
> `struct` [_TOWER_PARAM](lua/classes/_TOWER_PARAM.md) m_pmTwr
 
> `struct` [_TRAP_PARAM](lua/classes/_TRAP_PARAM.md) m_pmTrp
 
> `struct` `_BUDDY_LIST` m_pmBuddy
 
> `class` `CQuestMgr` m_QuestMgr
 
> `class` [ItemCombineMgr](lua/classes/ItemCombineMgr.md) m_ItemCombineMgr
 
> `unsigned char` m_byMapInModeBuffer
 
> `int` m_nVoteSerial
 
> `bool` m_bWarCount
 
> `unsigned int` m_dwLastCheckRegionTime
 
> `unsigned short` m_wRegionMapIndex
 
> `unsigned short` m_wRegionIndex
 
> `unsigned char` m_byHSKQuestCode
 
> `class` `MiningTicket` m_MinigTicket
 
> `int` m_nHSKPvpPoint
 
> `unsigned short` m_wKillPoint
 
> `unsigned char` m_byHSKTime
 
> `unsigned short` m_wDiePoint
 
> `unsigned char` m_byCristalBattleDBInfo
 
> `class` `CSetItemEffect` m_clsSetItem
 
> `class` `CDarkHoleChannel`* m_pDHChannel
 
> `float` m_fTalik_DefencePoint
 
> `float` m_fTalik_AvoidPoint
 
> `bool` m_bCheat_100SuccMake
 
> `bool` m_bCheat_makeitem_no_use_matrial
 
> `bool` m_bCheat_Matchless
 
> `bool` m_bFreeRecallWaitTime
 
> `bool` m_bFreeSFByClass
 
> `bool` m_bLootFree
 
> `bool` m_bNeverDie
 
> `int` m_nMaxAttackPnt
 
> `bool` m_bSpyGM
 
> `int` m_nAnimusAttackPnt
 
> `int` m_nTrapMaxAttackPnt
 
> `unsigned char` m_byDamagePart
 
> `bool` m_bRecvMapChat
 
> `bool` m_bRecvAllChat
 
> `class` `CEquipItemSFAgent` EquipItemSFAgent
 
> `struct` `_CRYMSG_LIST` m_pmCryMsg
 
> `bool` m_bSnowMan
 
> `unsigned char` m_byStoneMapMoveInfo
 
> `unsigned int` m_dwPatriarchAppointTime
 
> `unsigned char` m_byPatriarchAppointPropose
 
> `bool` m_bAfterEffect
 
> `bool` m_bSFDelayNotCheck
 
> `struct` `_RENAME_POTION_USE_INFO` m_ReNamePotionUseInfo
 
> `bool` m_bCommunionEffectAnimus
 
> `unsigned char` m_byCommunionStep
 
> `bool` m_bGeneratorAttack
 
> `unsigned char` m_byUnitEffectAttackStep
 
> `bool` m_bGeneratorDefense
 
> `unsigned char` m_byUnitEffectDefenseStep
 
> `union CPlayer__CashChangeStateFlag` m_CashChangeStateFlag
 
> `struct` `_NPCQuestIndexTempData` m_NPCQuestIndexTempData
 
> `unsigned short` m_wVisualVer
 
> `int` m_nLastBeatenPart
 
> `unsigned __int64` m_dwLastState
 
> `unsigned __int64` m_dwLastStateEx
 
> `unsigned int` m_dwExpRate
 
> `int` m_nAddDfnMstByClass
 
> `int` m_nAddPointByClass_get(`int`)
 
> `void` m_nAddPointByClass_set(`int`,`int`)
 
> `int` m_nMaxPoint_get(`int`)
 
> `void` m_nMaxPoint_set(`int`,`int`)
 
> `int` m_nTolValue_get(`int`)
 
> `void` m_nTolValue_set(`int`,`int`)
 
> `int` m_nMaxDP
 
> `short` m_zLastTol_get(`int`)
 
> `void` m_zLastTol_set(`int`,`short`)
 
> `float` m_fEquipSpeed
 
> `int` m_nOldPoint_get(`int`)
 
> `void` m_nOldPoint_set(`int`,`int`)
 
> `int` m_nOldMaxDP
 
> `float` m_fSendTarPos_x
 
> `float` m_fSendTarPos_y
 
> `unsigned char` m_byLastDirect
 
> `float` m_fLastRecvPos_x
 
> `float` m_fLastRecvPos_y
 
> `float` m_fLastRecvPos_z
 
> `unsigned char` m_byLastRecvMapIndex
 
> `unsigned int` m_dwLastTakeItemTime
 
> `int` m_nCheckMovePacket
 
> `bool` m_bCheckMovePacket
 
> `unsigned char` m_byDefMatCount
 
> `struct` `_100_per_random_table` m_MakeRandTable
 
> `class` [CMapData](lua/classes/CMapData.md)* m_pBindMapData
 
> `struct` [_dummy_position](lua/classes/_dummy_position.md)* m_pBindDummyData
 
> `unsigned int` m_dwNextTimeDungeonDie
 
> `unsigned int` m_dwLastTimeCheckUnitViewOver
 
> `unsigned int` m_dwUnitViewOverTime
 
> `struct` [_UNIT_DB_BASE___LIST](lua/classes/_UNIT_DB_BASE___LIST.md)* m_pUsingUnit
 
> `class` `CParkingUnit`* m_pParkingUnit
 
> `unsigned char` m_byUsingWeaponPart
 
> `int` m_nUnitDefFc
 
> `struct` [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md)* m_pSiegeItem
 
> `bool` m_bIsSiegeActing
 
> `class` `CMyTimer` m_tmrSiegeTime
 
> `struct` [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md)* m_pRecalledAnimusItem
 
> `class` [CAnimus](lua/classes/CAnimus.md)* m_pRecalledAnimusChar
 
> `unsigned int` m_dwLastRecallTime
 
> `unsigned char` m_byNextRecallReturn
 
> `unsigned short` m_wTimeFreeRecallSerial
 
> `class` `CMyTimer` m_tmrIntervalSec
 
> `unsigned int` m_dwLastSetPointTime
 
> `class` `CMyTimer` m_tmrBilling
 
> `float` m_fBeforeDungeonPos_x
 
> `float` m_fBeforeDungeonPos_y
 
> `float` m_fBeforeDungeonPos_z
 
> `class` [CMapData](lua/classes/CMapData.md)* m_pBeforeDungeonMap
 
> `struct` `_MEM_PAST_WHISPER`* m_PastWhiper_get(`int`)
 
> `unsigned int` m_dwContItemEffEndTime
 
> `class` [CPotionParam](lua/classes/CPotionParam.md) m_PotionParam
 
> `class` `CExtPotionBuf` m_PotionBufUse
 
> `int` m_bCntEnable
 
> `struct` `_SYSTEMTIME` m_tmLoginTime
 
> `struct` `_SYSTEMTIME` m_tmCalcTime
 
> `class` `CMyTimer` m_tmrAccumPlayingTime
 
> `bool` m_bUpCheckEquipEffect
 
> `bool` m_bDownCheckEquipEffect
 
> `unsigned char` m_byEffectEquipCode_get(`int`)
 
> `unsigned char` m_byPosRaceTown
 
> `class` [CMapData](lua/classes/CMapData.md)* m_pBeforeTownCheckMap
 
> `float` m_fBeforeTownCheckPos_x
 
> `float` m_fBeforeTownCheckPos_y
 
> `struct` `CPlayer____target` m_TargetObject
 
> `struct` `CPlayer____target`* m_GroupTargetObject_get(`int`)
 
> `class` `CMyTimer` m_tmrGroupTargeting
 
> `unsigned short` m_wPointRate_PartySend_get(`int`)
 
> `bool` m_bMineMode
 
> `unsigned int` m_dwMineNextTime
 
> `unsigned short` m_wBatterySerialTmp
 
> `unsigned char` m_bySelectOreIndex
 
> `unsigned char` m_byDelaySec
 
> `short` m_zMinePos_x
 
> `short` m_zMinePos_y
 
> `struct` `_ATTACK_DELAY_CHECKER` m_AttDelayChker
 
> `float` m_fUnitPv_AttFc
 
> `float` m_fUnitPv_DefFc
 
> `float` m_fUnitPv_RepPr
 
> `class` `CPvpPointLimiter` m_kPvpPointLimiter
 
> `int` m_nChaosMode
 
> `unsigned int` m_dwChaosModeTime10Per
 
> `unsigned int` m_dwChaosModeEndTime
 
> `int` m_nCashAmount
 
> `float` m_fGroupMapPoint_get(`int`,`int`)
 
> `void` m_fGroupMapPoint_set(`int`,`int`,`float`)
 
> `unsigned char` m_byGroupMapPointMapCode_get(`int`)
 
> `void` m_byGroupMapPointMapCode_set(`int`,`unsigned char`)
 
> `unsigned short` m_wGroupMapPointLayerIndex_get(`int`)
 
> `void` m_wGroupMapPointLayerIndex_set(`int`,`unsigned short`)
 
> `unsigned int` m_dwLastGroupMapPointTime_get(`int`)
 
> `void` m_dwLastGroupMapPointTime_set(`int`,`unsigned int`)
 
> `class` [CPvpOrderView](lua/classes/CPvpOrderView.md) m_kPvpOrderView
 
> `unsigned char` m_byBattleMode
 
> `unsigned int` m_dwBattleTime
 
> `class` `CMyTimer` m_tmrAuraSkill
 
> `class` `CPvpCashPoint` m_kPvpCashPoint
 
> `class` `CCouponMgr` m_kPcBangCoupon
 
> `class` `CMyTimer` m_tmrEffectStartTime
 
> `class` `CMyTimer` m_tmrEffectEndTime
 
> `unsigned char` m_byBattleTournamentGrade
 
> `struct` `_NameChangeBuddyInfo` m_NameChangeBuddyInfo
 
> `unsigned int` m_dwPcBangGiveItemListIndex
 
> `struct` `MiningTicket___AuthKeyTicket` m_dwRaceBuffClearKey
 
> `class` `CMyTimer` m_tmrPremiumPVPInform
 
> `const` `char`* m_szItemHistoryFileName
 
> `const` `char`* m_szLvHistoryFileName
 
> `unsigned int` m_dwUMWHLastTime
 
> `struct` `_other_shape_all_zocl` m_bufShapeAll
 
> `struct` `_other_shape_part_zocl` m_bufSpapePart
 
