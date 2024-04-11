# CPlayer

> [Scripted GM commands](gmcommandsscripted.md) will pass the CPlayer class (pPlayer)

## Functions

> `Number` GetMaxFP()

> `Number` GetFP()

> `Number` GetMaxSP()

> `Number` GetSP()

> SendData_ChatTrans(byChatType, dwSenderSerial, byRaceCode, bFilter, pwszMessage, byPvpGrade, pwszSender)

Send chat message to the player

`Number` `byChatType` - Chat type\
`Number` `dwSenderSerial` - Player Serial\
`Number` `byRaceCode` - Race Code\
`Bool` `bFilter` - Filter\
`String` `pwszMessage` - Message\
`Number` `byPvpGrade` - Pvp Grade\
`String` `pwszSender` - Sender

> `Bool` IsRidingUnit()

> `Bool` IsSiegeMode()

## Members

> m_bLoad

> m_bOper

> m_bPostLoad

> m_bFullMode

> m_byUserDgr

> m_bySubDgr

> m_bFirstStart

> m_bOutOfMap

> m_byMoveDirect

> m_byPlusKey

> m_wXorKey

> m_dwMoveCount

> m_dwTargetCount

> m_dwAttackCount

> m_bBaseDownload

> m_bInvenDownload

> m_bForceDownload

> m_bCumDownload

> m_bQuestDownload

> m_bSpecialDownload

> m_bLinkBoardDownload

> m_bAMPInvenDownload

> m_bGuildListDownload

> m_bGuildDownload

> m_bBuddyListDownload

> m_bBlockParty

> m_bBlockWhisper

> m_bBlockTrade

> m_bCreateComplete

> m_dwSelfDestructionTime

> m_fSelfDestructionDamage

> m_bTakeGravityStone

> m_bBlockGuildBattleMsg

> m_bInGuildBattle

> m_bNotifyPosition

> m_byGuildBattleColorInx

> m_bTakeSoccerBall

> m_pSoccerItem

> m_pUserDB

> m_pPartyMgr

> m_Param

> m_id

> m_byMoveType

> m_byModeType

> m_byStandType

> m_kMoveDelayChecker

> m_pmWpn

> m_pmTrd

> m_pmMst

> m_pmTwr

> m_pmTrp

> m_pmBuddy

> m_QuestMgr

> m_ItemCombineMgr

> m_byMapInModeBuffer

> m_nVoteSerial

> m_bWarCount

> m_dwLastCheckRegionTime

> m_wRegionMapIndex

> m_wRegionIndex

> m_byHSKQuestCode

> m_MinigTicket

> m_nHSKPvpPoint

> m_wKillPoint

> m_byHSKTime

> m_wDiePoint

> m_byCristalBattleDBInfo

> m_clsSetItem

> m_pDHChannel

> m_fTalik_DefencePoint

> m_fTalik_AvoidPoint

> m_bCheat_100SuccMake

> m_bCheat_makeitem_no_use_matrial

> m_bCheat_Matchless

> m_bFreeRecallWaitTime

> m_bFreeSFByClass

> m_bLootFree

> m_bNeverDie

> m_nMaxAttackPnt

> m_bSpyGM

> m_nAnimusAttackPnt

> m_nTrapMaxAttackPnt

> m_byDamagePart

> m_bRecvMapChat

> m_bRecvAllChat

> EquipItemSFAgent

> m_pmCryMsg

> m_bSnowMan

> m_byStoneMapMoveInfo

> m_dwPatriarchAppointTime

> m_byPatriarchAppointPropose

> m_bAfterEffect

> m_bSFDelayNotCheck

> m_ReNamePotionUseInfo

> m_bCommunionEffectAnimus

> m_byCommunionStep

> m_bGeneratorAttack

> m_byUnitEffectAttackStep

> m_bGeneratorDefense

> m_byUnitEffectDefenseStep

> m_CashChangeStateFlag

> m_NPCQuestIndexTempData

> m_wVisualVer

> m_nLastBeatenPart

> m_dwLastState

> m_dwLastStateEx

> m_dwExpRate

> m_nAddDfnMstByClass

> m_nAddPointByClass[4]

> m_nAddPointByClass_get

> m_nAddPointByClass_set

> m_nMaxPoint[4]

> m_nMaxPoint_get

> m_nMaxPoint_set

> m_nTolValue[4]

> m_nTolValue_get

> m_nTolValue_set

> m_nMaxDP

> m_zLastTol[4]

> m_zLastTol_get

> m_zLastTol_set

> m_fEquipSpeed

> m_nOldPoint[4]

> m_nOldPoint_get

> m_nOldPoint_set

> m_nOldMaxDP

> m_fSendTarPos[2]

> m_fSendTarPos_x

> m_fSendTarPos_y

> m_byLastDirect

> m_fLastRecvPos[3]

> m_fLastRecvPos_x

> m_fLastRecvPos_y

> m_fLastRecvPos_z

> m_byLastRecvMapIndex

> m_dwLastTakeItemTime

> m_nCheckMovePacket

> m_bCheckMovePacket

> m_byDefMatCount

> m_MakeRandTable

> m_pBindMapData

> m_pBindDummyData

> m_dwNextTimeDungeonDie

> m_dwLastTimeCheckUnitViewOver

> m_dwUnitViewOverTime

> m_pUsingUnit

> m_pParkingUnit

> m_byUsingWeaponPart

> m_nUnitDefFc

> m_pSiegeItem

> m_bIsSiegeActing

> m_tmrSiegeTime

> m_pRecalledAnimusItem

> m_pRecalledAnimusChar

> m_dwLastRecallTime

> m_byNextRecallReturn

> m_wTimeFreeRecallSerial

> m_tmrIntervalSec

> m_dwLastSetPointTime

> m_tmrBilling

> m_fBeforeDungeonPos[3]

> m_fBeforeDungeonPos_x

> m_fBeforeDungeonPos_y

> m_fBeforeDungeonPos_z

> m_pBeforeDungeonMap

> m_PastWhiper[10]

> m_PastWhiper_get

> m_dwContItemEffEndTime

> m_PotionParam

> m_PotionBufUse

> m_bCntEnable

> m_tmLoginTime

> m_tmCalcTime

> m_tmrAccumPlayingTime

> m_ClientTimeSerial_combine_ex_item_request_clzo

> m_bUpCheckEquipEffect

> m_bDownCheckEquipEffect

> m_byEffectEquipCode[15]

> m_byEffectEquipCode_get

> m_byPosRaceTown

> m_pBeforeTownCheckMap

> m_fBeforeTownCheckPos[2]

> m_fBeforeTownCheckPos_x

> m_fBeforeTownCheckPos_y

> m_TargetObject

> m_GroupTargetObject[3]

> m_GroupTargetObject_get

> m_tmrGroupTargeting

> m_wPointRate_PartySend[4]

> m_wPointRate_PartySend_get

> m_bMineMode

> m_dwMineNextTime

> m_wBatterySerialTmp

> m_bySelectOreIndex

> m_byDelaySec

> m_zMinePos[2]

> m_zMinePos_x

> m_zMinePos_y

> m_AttDelayChker

> m_fUnitPv_AttFc

> m_fUnitPv_DefFc

> m_fUnitPv_RepPr

> m_kPvpPointLimiter

> m_nChaosMode

> m_dwChaosModeTime10Per

> m_dwChaosModeEndTime

> m_nCashAmount

> m_fGroupMapPoint[3][2]

> m_fGroupMapPoint_get

> m_fGroupMapPoint_set

> m_byGroupMapPointMapCode[3]

> m_byGroupMapPointMapCode_get

> m_byGroupMapPointMapCode_set

> m_wGroupMapPointLayerIndex[3]

> m_wGroupMapPointLayerIndex_get

> m_wGroupMapPointLayerIndex_set

> m_dwLastGroupMapPointTime[3]

> m_dwLastGroupMapPointTime_get

> m_dwLastGroupMapPointTime_set

> m_kPvpOrderView

> m_byBattleMode

> m_dwBattleTime

> m_tmrAuraSkill

> m_kPvpCashPoint

> m_kPcBangCoupon

> m_tmrEffectStartTime

> m_tmrEffectEndTime

> m_byBattleTournamentGrade

> m_NameChangeBuddyInfo

> m_dwPcBangGiveItemListIndex

> m_dwRaceBuffClearKey

> m_tmrPremiumPVPInform

> m_szItemHistoryFileName[64]

> m_szItemHistoryFileName

> m_szLvHistoryFileName[64]

> m_szLvHistoryFileName

> m_dwUMWHLastTime

> m_bufShapeAll

> m_bufSpapePart
