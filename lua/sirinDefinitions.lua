
---@class (exact) AutominePersonal: CCharacter
---@field m_bDBLoad boolean
---@field m_bOpenUI_Inven boolean
---@field m_bOpenUI_Battery boolean
---@field m_bInstalled boolean
---@field m_bInvenFull boolean
---@field m_bStart boolean
---@field m_bySelOre integer
---@field m_wItemSerial integer
---@field m_byFilledSlotCnt integer
---@field m_dwNextSendTime_CurState integer
---@field m_dwDelaySec integer
---@field m_dwDelay integer
---@field m_dwNextMineTime integer
---@field m_dwChangeSendTime integer
---@field m_nMaxHP integer
---@field m_pItem _STORAGE_LIST___db_con
---@field m_pOwner CPlayer
---@field m_byUseBattery integer
---@field m_pBatterySlot lightuserdata AP_BatterySlot
---@field m_bChanged boolean
---@field m_changed_packet lightuserdata _personal_amine_mineore_zocl
---@field m_update_mineore_old lightuserdata _qry_case_update_mineore
---@field m_update_mineore_new lightuserdata _qry_case_update_mineore
---@field m_logProcess CLogFile
---@field m_logSysErr CLogFile
local AutominePersonal = {}
---@param a1 integer
---@return integer
function AutominePersonal:m_dwMineCount_get(a1) end
---@param a1 integer
---@param a2 integer
function AutominePersonal:m_dwMineCount_set(a1, a2) end

---@class (exact) CActionPointSystemMgr
local CActionPointSystemMgr = {}
---@param a1 integer
---@return integer
function CActionPointSystemMgr:GetEventStatus(a1) end

---@class (exact) CAnimus: CCharacter
---@field m_byClassCode integer
---@field m_nHP integer
---@field m_nFP integer
---@field m_dwExp integer
---@field m_pMaster CPlayer
---@field m_dwMasterSerial integer
---@field m_wszMasterName string
---@field m_aszMasterName string
---@field m_byRoleCode integer
---@field m_dwLastDestroyTime integer
---@field m_fMoveSpeed number
---@field m_byPosRaceTown integer
---@field m_pBeforeTownCheckMap CMapData
---@field m_fBeforeTownCheckPos_x number
---@field m_fBeforeTownCheckPos_y number
---@field m_dwStunTime integer
---@field m_dwBeAttackedTargetTime integer
---@field m_pNextTarget CCharacter
---@field m_nMaxAttackPnt integer
---@field m_tmNextEatMasterFP integer
---@field m_pRecord _animus_fld
---@field m_nMaxHP integer
---@field m_nMaxFP integer
---@field m_Mightiness number
---@field m_dwAIMode integer
---@field m_pTarget CCharacter
local CAnimus = {}
---@param a1 integer
---@return integer
function CAnimus:m_DefPart_get(a1) end
---@param a1 integer
---@param a2 integer
function CAnimus:m_DefPart_set(a1, a2) end
---@param a1 integer
---@return lightuserdata CAITimer
function CAnimus:m_AITimer_get(a1) end
---@param a1 integer
---@return SKILL
function CAnimus:m_Skill_get(a1) end
---@param a1 integer
function CAnimus:AlterExp(a1) end

---@class (exact) CAssetController
local CAssetController = {}
---@return boolean
function CAssetController:makeAllAssetData() end
---@param a1 string
---@return boolean
function CAssetController:makeAssetData(a1) end
---@param a1 string
---@return boolean
function CAssetController:sendAssetData(a1) end
function CAssetController:sendAllAssetData() end

---@class (exact) CAttack
---@field m_pp _attack_param
---@field m_pAttChar CCharacter
---@field m_bIsCrtAtt boolean
---@field m_bActiveSucc boolean
---@field m_nDamagedObjNum integer
---@field m_bFailure boolean
local CAttack = {}
---@param a1 integer
---@return _be_damaged_char
function CAttack:m_DamList_get(a1) end

---@class (exact) CBinaryData
local CBinaryData = {}
---@param a1 string
---@param a2 integer
---@return boolean
function CBinaryData:PushString(a1, a2) end
---@param a1 integer
---@return boolean
function CBinaryData:PushInt8(a1) end
---@param a1 integer
---@return boolean
function CBinaryData:PushInt16(a1) end
---@param a1 integer
---@return boolean
function CBinaryData:PushInt32(a1) end
---@param a1 integer
---@return boolean
function CBinaryData:PushInt64(a1) end
---@param a1 integer
---@return boolean
function CBinaryData:PushUInt8(a1) end
---@param a1 integer
---@return boolean
function CBinaryData:PushUInt16(a1) end
---@param a1 integer
---@return boolean
function CBinaryData:PushUInt32(a1) end
---@param a1 integer
---@return boolean
function CBinaryData:PushUInt64(a1) end
---@param a1 number
---@return boolean
function CBinaryData:PushFloat(a1) end
---@param a1 number
---@return boolean
function CBinaryData:PushDouble(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopString(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopInt8(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopInt16(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopInt32(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopInt64(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopUInt8(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopUInt16(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopUInt32(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopUInt64(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopFloat(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopDouble(a1) end
---@return integer
function CBinaryData:GetReadPos() end
---@param a1 integer
---@return boolean
function CBinaryData:SetReadPos(a1) end
---@return integer
function CBinaryData:GetWritePos() end
---@param a1 integer
---@return boolean
function CBinaryData:SetWritePos(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PushSQLTimeStampStruct(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBinaryData:PopSQLTimeStampStruct(a1) end

---@class (exact) CBsp
local CBsp = {}
---@param a1 lightuserdata lua_State
---@return integer
function CBsp:CanYouGoThere(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CBsp:GetPathFind(a1) end

---@class (exact) CCharacter: CGameObject
---@field m_fTarPos_x number
---@field m_fTarPos_y number
---@field m_fTarPos_z number
---@field m_AroundNum integer
---@field m_dwNextGenAttackTime integer
---@field m_dwEffSerialCounter integer
---@field m_bLastContEffectUpdate boolean
---@field m_wLastContEffect integer
---@field m_EP _effect_parameter
---@field m_wEffectTempValue integer
---@field m_dwPlayerSerial integer
---@field m_wszPlayerName string
---@field m_nContEffectSec integer
---@field m_tmrSFCont lightuserdata CMyTimer
local CCharacter = {}
---@param a1 integer
---@return CCharacter
function CCharacter:m_AroundSlot_get(a1) end
---@param a1 integer
---@param a2 CCharacter
function CCharacter:m_AroundSlot_set(a1, a2) end
---@param a1 integer
---@param a2 integer
---@return _sf_continous
function CCharacter:m_SFCont_get(a1, a2) end
---@param a1 integer
---@param a2 integer
---@return _sf_continous
function CCharacter:m_SFContAura_get(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CCharacter:InsertSFContEffect(a1) end
function CCharacter:UpdateSFCont() end
---@param a1 integer
---@param a2 integer
---@param a3 boolean
---@param a4 boolean
function CCharacter:RemoveSFContEffect(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 integer
function CCharacter:RemoveSFContHelpByEffect(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CCharacter:AssistForce(a1) end
---@param a1 CCharacter
---@param a2 _force_fld
---@param a3 integer
---@return boolean
function CCharacter:AssistForceToOne(a1, a2, a3) end
---@param a1 lightuserdata lua_State
---@return integer
function CCharacter:AssistSkill(a1) end
---@param a1 CCharacter
---@param a2 integer
---@param a3 _skill_fld
---@param a4 integer
---@return boolean
function CCharacter:AssistSkillToOne(a1, a2, a3, a4) end
---@param a1 boolean
---@return boolean
function CCharacter:GetStealth(a1) end
function CCharacter:BreakStealth() end
function CCharacter:Stop() end
---@param a1 lightuserdata lua_State
---@return integer
function CCharacter:FindEffectDst(a1) end
---@param a1 string
---@param a2 CCharacter
---@return boolean
function CCharacter:IsEffectableDst(a1, a2) end

---@class (exact) CDummyRift: CReturnGate
---@field m_strObjectUUID string
local CDummyRift = {}

---@class (exact) CExpInfo
---@field m_fExp number
---@field m_pkMember CPlayer
local CExpInfo = {}

---@class (exact) CExtPotionBuf
---@field m_bExtPotionBufUse boolean
---@field m_bDayChange boolean
---@field m_dwEndPotionTime integer
local CExtPotionBuf = {}

---@class (exact) CGameObject
---@field m_pRecordSet _base_fld
---@field m_ObjID _object_id
---@field m_dwObjSerial integer
---@field m_bLive boolean
---@field m_nTotalObjIndex integer
---@field m_bCorpse boolean
---@field m_bMove boolean
---@field m_bStun boolean
---@field m_bMapLoading boolean
---@field m_dwLastSendTime integer
---@field m_fCurPos_x number
---@field m_fCurPos_y number
---@field m_fCurPos_z number
---@field m_fAbsPos_x number
---@field m_fAbsPos_y number
---@field m_fAbsPos_z number
---@field m_nScreenPos_x integer
---@field m_nScreenPos_y integer
---@field m_fOldPos_x number
---@field m_fOldPos_y number
---@field m_fOldPos_z number
---@field m_pCurMap CMapData
---@field m_rtPer100 _100_per_random_table
---@field m_nCirclePlayerNum integer
---@field m_wMapLayerIndex integer
---@field m_SectorPoint _object_list_point
---@field m_SectorNetPoint _object_list_point
---@field m_dwNextFreeStunTime integer
---@field m_dwOldTickBreakTranspar integer
---@field m_bBreakTranspar boolean
---@field m_bMaxVision boolean
---@field m_bObserver boolean
---@field m_dwCurSec integer
local CGameObject = {}
---@param a1 boolean
function CGameObject:SetStun(a1) end
---@return integer
function CGameObject:CalcCurHPRate() end
---@param a1 boolean
function CGameObject:SendMsg_RealFixPosition(a1) end
function CGameObject:Loop() end
function CGameObject:AlterSec() end
function CGameObject:OutOfSec() end
---@param a1 integer
function CGameObject:SendMsg_FixPosition(a1) end
---@param a1 integer
function CGameObject:SendMsg_RealMovePoint(a1) end
function CGameObject:SendMsg_StunInform() end
function CGameObject:SendMsg_SetHPInform() end
---@return integer
function CGameObject:GetHP() end
---@param a1 integer
---@param a2 boolean
---@return boolean
function CGameObject:SetHP(a1, a2) end
---@return integer
function CGameObject:GetMaxHP() end
---@param a1 CCharacter
function CGameObject:RecvKillMessage(a1) end
---@param a1 integer
---@param a2 integer
---@param a3 boolean
---@param a4 CPlayer
function CGameObject:SFContInsertMessage(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 integer
---@param a3 boolean
---@param a4 boolean
function CGameObject:SFContDelMessage(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function CGameObject:SFContUpdateTimeMessage(a1, a2, a3) end
---@param a1 CCharacter
function CGameObject:BeTargeted(a1) end
---@param a1 CCharacter
---@param a2 integer
---@return boolean
function CGameObject:RobbedHP(a1, a2) end
---@param a1 CCharacter
---@param a2 integer
---@return boolean
function CGameObject:FixTargetWhile(a1, a2) end
---@param a1 integer
function CGameObject:SetAttackPart(a1) end
---@param a1 CCharacter
---@param a2 integer
---@param a3 boolean
---@return integer
function CGameObject:GetGenAttackProb(a1, a2, a3) end
---@param a1 integer
---@param a2 CCharacter
---@param a3 integer
---@param a4 boolean
---@param a5 integer
---@param a6 integer
---@param a7 boolean
---@return integer
function CGameObject:SetDamage(a1, a2, a3, a4, a5, a6, a7) end
---@param a1 lightuserdata lua_State
---@return integer
function CGameObject:GetDefFC(a1) end
---@return integer
function CGameObject:GetFireTol() end
---@return integer
function CGameObject:GetWaterTol() end
---@return integer
function CGameObject:GetSoilTol() end
---@return integer
function CGameObject:GetWindTol() end
---@param a1 integer
---@return number
function CGameObject:GetDefGap(a1) end
---@param a1 integer
---@return number
function CGameObject:GetDefFacing(a1) end
---@return number
function CGameObject:GetWeaponAdjust() end
---@return integer
function CGameObject:GetLevel() end
---@param a1 boolean
---@return integer
function CGameObject:GetDefSkill(a1) end
---@return number
function CGameObject:GetWidth() end
---@return number
function CGameObject:GetAttackRange() end
---@return integer
function CGameObject:AttackableHeight() end
---@return integer
function CGameObject:GetWeaponClass() end
---@return integer
function CGameObject:GetAvoidRate() end
---@return integer
function CGameObject:GetAttackLevel() end
---@return integer
function CGameObject:GetAttackDP() end
---@return integer
function CGameObject:GetObjRace() end
---@param a1 CGameObject
---@return string
function CGameObject:GetObjName(a1) end
---@return boolean
function CGameObject:IsRecvableContEffect() end
---@param a1 boolean
---@return boolean
function CGameObject:IsBeAttackedAble(a1) end
---@return boolean
function CGameObject:IsRewardExp() end
---@param a1 CCharacter
---@return boolean
function CGameObject:IsBeDamagedAble(a1) end
---@return boolean
function CGameObject:IsInTown() end
---@return boolean
function CGameObject:IsAttackableInTown() end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_AttHPtoDstFP_Once(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_ContDamageTimeInc_Once(a1, a2) end
---@param a1 CCharacter
---@return boolean
function CGameObject:SF_Resurrect_Once(a1) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_HPInc_Once(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_STInc_Once(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_ContHelpTimeInc_Once(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_OverHealing_Once(a1, a2) end
---@param a1 CCharacter
---@return boolean
function CGameObject:SF_LateContHelpSkillRemove_Once(a1) end
---@param a1 CCharacter
---@return boolean
function CGameObject:SF_LateContHelpForceRemove_Once(a1) end
---@param a1 CCharacter
---@return boolean
function CGameObject:SF_LateContDamageRemove_Once(a1) end
---@param a1 CCharacter
---@return boolean
function CGameObject:SF_AllContHelpSkillRemove_Once(a1) end
---@param a1 CCharacter
---@return boolean
function CGameObject:SF_AllContHelpForceRemove_Once(a1) end
---@param a1 CCharacter
---@return boolean
function CGameObject:SF_AllContDamageForceRemove_Once(a1) end
---@param a1 number
---@return boolean
function CGameObject:SF_OthersContHelpSFRemove_Once(a1) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_SkillContHelpTimeInc_Once(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_ConvertMonsterTarget(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_TransMonsterHP(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_ReleaseMonsterTarget(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_IncHPCircleParty(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_Stun(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_SPDec(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_FPDec(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_DamageAndStun(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CGameObject:SF_TransDestHP(a1) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_RemoveAllContHelp_Once(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CGameObject:SF_MakePortalReturnBindPositionPartyMember(a1) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_ReturnBindPosition(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_IncreaseDP(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_ConvertTargetDest(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_RecoverAllReturnStateAnimusHPFull(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_MakeZeroAnimusRecallTimeOnce(a1, a2) end
---@param a1 CCharacter
---@param a2 number
---@return boolean
function CGameObject:SF_SelfDestruction(a1, a2) end
---@param a1 CCharacter
---@param a2 boolean
---@return boolean
function CGameObject:SF_TeleportToDestination(a1, a2) end
---@return boolean
function CGameObject:Is_Battle_Mode() end
---@param a1 _object_create_setdata
---@return boolean
function CGameObject:Create(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CGameObject:CircleReport(a1) end
---@return integer
function CGameObject:GetCurSecNum() end
function CGameObject:SendMsg_BreakStop() end

---@class (exact) CGameStatistics
---@field m_day CGameStatistics___DAY
local CGameStatistics = {}
---@return CGameStatistics___DAY
function CGameStatistics:CurWriteData() end

---@class (exact) CGameStatistics___DAY
---@field dwEderEnter_Evt integer
---@field dwMaxUserHour_Hour integer
---@field dwMaxUser_Hour integer
---@field dwDropStdItem_Evt integer
---@field dwDropRareItem_Evt integer
---@field dw4MuUpgradeSucc_Evt integer
---@field dw4EunUpgradeSucc_Evt integer
---@field dw4JaUpgradeSucc_Evt integer
---@field dw5MuUpgradeSucc_Evt integer
---@field dw5EunUpgradeSucc_Evt integer
---@field dw5JaUpgradeSucc_Evt integer
---@field dwDaePokUse_Evt integer
local CGameStatistics___DAY = {}
---@param a1 integer
---@return CGameStatistics___map
function CGameStatistics___DAY:MaxHourPerMap_Hour_get(a1) end

---@class (exact) CGameStatistics___map
---@field dwMaxHourPerMap_Hour integer
local CGameStatistics___map = {}
---@param a1 CGameStatistics___map
---@return string
function CGameStatistics___map:pMapName(a1) end

---@class (exact) CGuardTower: CCharacter
---@field m_nHP integer
---@field m_pMasterTwr CPlayer
---@field m_dwMasterSerial integer
---@field m_byRaceCode integer
---@field m_pItem _STORAGE_LIST___db_con
---@field m_wItemSerial integer
---@field m_bSystemStruct boolean
---@field m_nIniIndex integer
---@field m_dwStartMakeTime integer
---@field m_bComplete boolean
---@field m_bQuick boolean
---@field m_pTarget CCharacter
---@field m_pMasterSetTarget CCharacter
---@field m_dwLastDestroyTime integer
local CGuardTower = {}
---@param a1 integer
---@param a2 boolean
---@return boolean
function CGuardTower:Destroy(a1, a2) end

---@class (exact) CGuild
---@field m_nIndex integer
---@field m_dwSerial integer
---@field m_wszName string
---@field m_aszName string
---@field m_byGrade integer
---@field m_dTotalDalant number
---@field m_dTotalGold number
---@field m_dwEmblemBack integer
---@field m_dwEmblemMark integer
---@field m_byRace integer
---@field m_wszGreetingMsg string
---@field m_MasterData _guild_master_info
---@field m_nMemberNum integer
---@field m_nApplierNum integer
---@field m_bNowProcessSgtMter boolean
---@field m_dwSuggesterSerial integer
---@field m_SuggestedMatter lightuserdata _suggested_matter
---@field m_GuildBattleSugestMatter lightuserdata _guild_battle_suggest_matter
---@field m_bInGuildBattle boolean
---@field m_bPossibleElectMaster boolean
---@field m_dwGuildBattleTotWin integer
---@field m_dwGuildBattleTotDraw integer
---@field m_dwGuildBattleTotLose integer
---@field m_DownPacket_Member lightuserdata _guild_member_download_zocl
---@field m_DownPacket_Applier lightuserdata _guild_applier_download_zocl
---@field m_QueryPacket_Info lightuserdata _guild_query_info_result_zocl
---@field m_MoneyIO_List lightuserdata _guild_money_io_download_zocl
---@field m_Buddy_List lightuserdata _guild_member_buddy_download_zocl
---@field m_nIOMoneyHistoryNum integer
---@field m_bDBWait boolean
---@field m_bIOWait boolean
---@field m_bRankWait boolean
---@field m_byMoneyOutputKind integer
---@field m_nTempMemberNum integer
---@field m_dwLastLoopTime integer
---@field m_szHistoryFileName string
local CGuild = {}
---@param a1 integer
---@return _guild_member_info
function CGuild:m_MemberData_get(a1) end
---@param a1 integer
---@return _guild_member_info
function CGuild:m_pGuildCommittee_get(a1) end
---@param a1 integer
---@param a2 _guild_member_info
function CGuild:m_pGuildCommittee_set(a1, a2) end
---@param a1 integer
---@return _guild_applier_info
function CGuild:m_ApplierData_get(a1) end
---@param a1 integer
---@return _io_money_data
function CGuild:m_IOMoneyHistory_get(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CGuild:GetGuildMemberList(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CGuild:GetGuildApplierList(a1) end

---@class (exact) CGuildRoomSystem
local CGuildRoomSystem = {}
---@param a1 integer
---@param a2 integer
---@return CMapData
function CGuildRoomSystem:GetMapData(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@return boolean
function CGuildRoomSystem:IsGuildRoomMemberIn(a1, a2, a3) end

---@class (exact) CHolyKeeper: CCharacter
---@field m_nHP integer
---@field m_dwLastDestroyTime integer
---@field m_pRec _monster_fld
---@field m_pPosCreate _dummy_position
---@field m_pPosActive _dummy_position
---@field m_pPosCenter _dummy_position
---@field m_nMasterRace integer
---@field m_bExit boolean
---@field m_bChaos boolean
---@field m_dwLastStopTime integer
---@field m_pLastMoveTarget CPlayer
---@field m_at CAttack
---@field m_ap _attack_param
---@field m_bDamageAbleState boolean
---@field m_nCurrLootIndex integer
---@field m_nEndLootIndex integer
---@field m_nCurrDropIndex integer
---@field m_wMagnifications integer
---@field m_wRange integer
---@field m_wDropCntOnce integer
---@field m_tmrDropTime lightuserdata CMyTimer
local CHolyKeeper = {}
---@param a1 integer
---@return integer
function CHolyKeeper:m_nDefPart_get(a1) end
---@param a1 integer
---@param a2 integer
function CHolyKeeper:m_nDefPart_set(a1, a2) end

---@class (exact) CHolyScheduleData
---@field m_bSet boolean
---@field m_pSchedule CHolyScheduleData____HolyScheduleNode
---@field m_nTotalSchedule integer
local CHolyScheduleData = {}

---@class (exact) CHolyScheduleData____HolyScheduleNode
local CHolyScheduleData____HolyScheduleNode = {}
---@param a1 integer
---@return integer
function CHolyScheduleData____HolyScheduleNode:m_nSceneTime_get(a1) end
---@param a1 integer
---@param a2 integer
function CHolyScheduleData____HolyScheduleNode:m_nSceneTime_set(a1, a2) end

---@class (exact) CHolyStone: CCharacter
---@field m_bOper boolean
---@field m_nHP integer
---@field m_nMaxHP integer
---@field m_dwLastDestroyTime integer
---@field m_pRec _monster_fld
---@field m_pDum _dummy_position
---@field m_byMasterRaceCode integer
---@field m_nOldRate integer
---@field m_dwLastRecoverTime integer
---@field m_nCurrLootIndex integer
---@field m_nEndLootIndex integer
---@field m_nCurrDropIndex integer
---@field m_wMagnifications integer
---@field m_wRange integer
---@field m_wDropCntOnce integer
---@field m_wAddCountWithPlayer integer
---@field m_tmrDropTime lightuserdata CMyTimer
local CHolyStone = {}
---@param a1 integer
---@return integer
function CHolyStone:m_nDefPart_get(a1) end
---@param a1 integer
---@param a2 integer
function CHolyStone:m_nDefPart_set(a1, a2) end

---@class (exact) CHolyStoneSaveData
---@field m_nSceneCode integer
---@field m_dwPassTimeInScene integer
---@field m_nStartStoneHP integer
---@field m_nHolyMasterRace integer
---@field m_nDestroyStoneRace integer
---@field m_byNumOfTime integer
---@field m_dwCumPlayerNum integer
---@field m_dwCumCount integer
---@field m_wStartYear integer
---@field m_byStartMonth integer
---@field m_byStartDay integer
---@field m_byStartHour integer
---@field m_byStartMin integer
---@field m_dwDestroyerSerial integer
---@field m_eDestroyerState integer
---@field m_dwOreRemainAmount integer
---@field m_dwOreTotalAmount integer
---@field m_dwDestroyerGuildSerial integer
---@field m_byOreTransferCount integer
---@field m_dwOreTransferAmount integer
local CHolyStoneSaveData = {}
---@param a1 integer
---@return integer
function CHolyStoneSaveData:m_nStoneHP_Buffer_get(a1) end
---@param a1 integer
---@param a2 integer
function CHolyStoneSaveData:m_nStoneHP_Buffer_set(a1, a2) end
---@param a1 integer
---@return integer
function CHolyStoneSaveData:m_dwTerm_get(a1) end
---@param a1 integer
---@param a2 integer
function CHolyStoneSaveData:m_dwTerm_set(a1, a2) end

---@class (exact) CHolyStoneSystem
---@field m_tblQuest CRecordData
---@field m_logQuest CLogFile
---@field m_logQuestDestroy CLogFile
---@field m_logPer10Min CLogFile
---@field m_tmrHSKSystem lightuserdata CMyTimer
---@field m_pkDestroyer CPlayer
---@field m_dwNextStartTime integer
---@field m_nHolyStoneNum integer
---@field m_HolyKeeperData __holy_keeper_data
---@field m_ScheculeData CHolyScheduleData
---@field m_SaveData CHolyStoneSaveData
---@field m_tmrCumPlayer lightuserdata CMyTimer
---@field m_strHolyMental string
---@field m_fKeeperHPRate number
---@field m_fFirstKeeperHPRate number
---@field m_nScheduleCodePre integer
---@field m_byKeeperDestroyRace integer
---@field m_bConsumable boolean
---@field m_pMentalPass boolean
---@field bFreeMining boolean
local CHolyStoneSystem = {}
---@param a1 integer
---@return __holy_stone_data
function CHolyStoneSystem:m_HolyStoneData_get(a1) end
---@param a1 integer
---@return integer
function CHolyStoneSystem:m_dwCheckTime_get(a1) end
---@param a1 integer
---@param a2 integer
function CHolyStoneSystem:m_dwCheckTime_set(a1, a2) end
---@param a1 integer
---@return _QUEST_CASH
function CHolyStoneSystem:m_cashQuest_get(a1) end
---@param a1 integer
---@return _QUEST_CASH_OTHER
function CHolyStoneSystem:m_cashQuestOther_get(a1) end
---@param a1 integer
---@return _portal_dummy
function CHolyStoneSystem:m_pPortalDummy_get(a1) end
---@param a1 integer
---@param a2 _portal_dummy
function CHolyStoneSystem:m_pPortalDummy_set(a1, a2) end
---@param a1 integer
---@param a2 integer
---@return integer
function CHolyStoneSystem:m_nRaceBattlePoint_get(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function CHolyStoneSystem:m_nRaceBattlePoint_set(a1, a2, a3) end
---@return integer
function CHolyStoneSystem:GetDestroyerState() end
---@return integer
function CHolyStoneSystem:GetDestroyerSerial() end
---@return integer
function CHolyStoneSystem:GetDestroyerGuildSerial() end
---@return integer
function CHolyStoneSystem:GetNumOfTime() end
---@return integer
function CHolyStoneSystem:GetSceneCode() end
---@param a1 integer
function CHolyStoneSystem:SetKeeperDestroyRace(a1) end

---@class (exact) CItemBox: CGameObject
---@field m_dwOwnerSerial integer
---@field m_wOwnerIndex integer
---@field m_dwThrowerSerial integer
---@field m_byThrowerID integer
---@field m_wThrowerIndex integer
---@field m_wMonRecIndex integer
---@field m_bBossMob boolean
---@field m_wszThrowerName string
---@field m_aszThrowerName string
---@field m_dwThrowerCharSerial integer
---@field m_szThrowerID string
---@field m_byThrowerRaceCode integer
---@field m_byThrowerDegree integer
---@field m_szThrowerItemHistoryFileName string
---@field m_dwLootStartTime integer
---@field m_nStateCode integer
---@field m_dwLastDestroyTime integer
---@field m_byCreateCode integer
---@field m_dwPartyBossSerial integer
---@field m_bPartyShare boolean
---@field m_bCompDgr boolean
---@field m_dwEventPartyBoss integer
---@field m_dwEventGuildSerial integer
---@field m_byEventRaceCode integer
---@field m_byEventLootAuth integer
---@field m_nHolyScanner integer
---@field m_Item _STORAGE_LIST___db_con
---@field m_bHide boolean
local CItemBox = {}
---@param a1 CPlayer
---@return boolean
function CItemBox:IsTakeRight(a1) end
---@return boolean
function CItemBox:Destroy() end

---@class (exact) CItemStore
---@field m_bLive boolean
---@field m_nIndex integer
---@field m_dwSecIndex integer
---@field m_byNpcRaceCode integer
---@field m_pExistMap CMapData
---@field m_pDum _store_dummy
---@field m_pRec _StoreList_fld
---@field m_nStorageItemNum integer
---@field m_dwLimitInitTime integer
---@field m_bDBDataCheck boolean
---@field m_dwDBSerial integer
---@field m_nLimitStorageItemNum integer
---@field m_bUpdate boolean
---@field m_dwLastTradeDalant integer
---@field m_dwLastTradeGold integer
---@field m_dwLastTradePoint integer
local CItemStore = {}
---@param a1 integer
---@return integer
function CItemStore:m_dwLastTradeActPoint_get(a1) end
---@param a1 integer
---@param a2 integer
function CItemStore:m_dwLastTradeActPoint_set(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CItemStore:GetStoreList(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CItemStore:GetLimitStoreList(a1) end

---@class (exact) CItemUpgradeTable
---@field m_tblItemUpgrade CRecordData
---@field m_nResNum integer
local CItemUpgradeTable = {}
---@param a1 integer
---@return integer
function CItemUpgradeTable:m_pwResIndex_get(a1) end
---@param a1 integer
---@return _ItemUpgrade_fld
function CItemUpgradeTable:GetRecordFromRes(a1) end

---@class (exact) CLanguageAsset
local CLanguageAsset = {}
---@param a1 integer
---@param a2 string
---@param a3 string
---@param a4 integer
function CLanguageAsset:addLanguage(a1, a2, a3, a4) end
---@param a1 integer
function CLanguageAsset:setDefaultLanguage(a1) end
---@param a1 integer
---@return integer
function CLanguageAsset:getPlayerLanguage(a1) end
---@param a1 integer
---@return string
function CLanguageAsset:getPlayerLanguagePrefix(a1) end
---@return boolean
function CLanguageAsset:makeAssetData() end
---@param a1 lightuserdata lua_State
---@return integer
function CLanguageAsset:getLanguageTable(a1) end

---@class (exact) CLevel
---@field mMapName string
---@field mCamPos_x number
---@field mCamPos_y number
---@field mCamPos_z number
---@field mMatView lightuserdata D3DXMATRIX
---@field mIsLoadedBsp integer
---@field mBsp CBsp
---@field mSkyBox lightuserdata CSkyBox
---@field mAutoAniCam lightuserdata CAniCamera
---@field mTimer lightuserdata CTimer
---@field mDummy lightuserdata CExtDummy
---@field mLightTexMemSize integer
---@field mMapTexMemSize integer
---@field mSkyTexMemSize integer
---@field mEntityTexMemSize integer
---@field mEnvironment integer
local CLevel = {}
---@param a1 lightuserdata lua_State
---@return integer
function CLevel:GetNextYposForServerFar(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CLevel:GetNextYposFarProgress(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CLevel:GetNextYposForServer(a1) end

---@class (exact) CLogFile
---@field m_szFileName string
---@field m_dwLogCount integer
---@field m_nWriteAble integer
---@field m_bAddCount boolean
---@field m_bDate boolean
---@field m_bTrace boolean
---@field m_bInit boolean
local CLogFile = {}
---@param a1 CLogFile
---@param a2 string
function CLogFile:Write(a1, a2) end
---@param a1 CLogFile
---@param a2 string
---@param a3 integer
---@param a4 boolean
---@param a5 boolean
---@param a6 boolean
function CLogFile:SetWriteLogFile(a1, a2, a3, a4, a5, a6) end

---@class (exact) CLootingMgr
---@field m_bFirst boolean
---@field m_byUserNode integer
local CLootingMgr = {}
---@param a1 integer
---@return CLootingMgr___list
function CLootingMgr:m_AtterList_get(a1) end

---@class (exact) CLootingMgr___list
---@field pAtter CPlayer
---@field dwAtterSerial integer
---@field dwAttCount integer
---@field dwDamage integer
---@field dwLastAttTime integer
local CLootingMgr___list = {}

---@class (exact) CLuaSendBuffer
local CLuaSendBuffer = {}
---@param a1 string
---@param a2 integer
function CLuaSendBuffer:PushString(a1, a2) end
---@param a1 CPlayer
---@param a2 integer
---@param a3 integer
function CLuaSendBuffer:SendBuffer(a1, a2, a3) end
function CLuaSendBuffer:Init() end
---@param a1 integer
function CLuaSendBuffer:PushInt8(a1) end
---@param a1 integer
function CLuaSendBuffer:PushInt16(a1) end
---@param a1 integer
function CLuaSendBuffer:PushInt32(a1) end
---@param a1 integer
function CLuaSendBuffer:PushInt64(a1) end
---@param a1 integer
function CLuaSendBuffer:PushUInt8(a1) end
---@param a1 integer
function CLuaSendBuffer:PushUInt16(a1) end
---@param a1 integer
function CLuaSendBuffer:PushUInt32(a1) end
---@param a1 integer
function CLuaSendBuffer:PushUInt64(a1) end
---@param a1 number
function CLuaSendBuffer:PushFloat(a1) end
---@param a1 number
function CLuaSendBuffer:PushDouble(a1) end

---@class (exact) CMainThread
---@field m_Rand lightuserdata _SRAND
---@field m_pWorldDB lightuserdata CRFWorldDatabase
---@field m_MainFrameRate lightuserdata CFrameRate
---@field m_DBFrameRate lightuserdata CFrameRate
---@field m_GameMsg lightuserdata CMsgProcess
---@field m_MgrConnNum lightuserdata CConnNumPHMgr
---@field m_HisMainFPS lightuserdata CConnNumPHMgr
---@field m_HisSendFPS lightuserdata CConnNumPHMgr
---@field m_HisDataFPS lightuserdata CConnNumPHMgr
---@field m_tmServerState lightuserdata CMyTimer
---@field m_bVerCheck boolean
---@field m_tmEconomyState lightuserdata CMyTimer
---@field m_tmDbUpdate integer
---@field m_listDQSData lightuserdata CNetIndexList
---@field m_listDQSDataComplete lightuserdata CNetIndexList
---@field m_listDQSDataEmpty lightuserdata CNetIndexList
---@field m_CheckSum lightuserdata CCheckSum
---@field m_nLimUserNum integer
---@field m_szWorldName string
---@field m_wszWorldName string
---@field m_wszMainGreetingMsg string
---@field m_wszGMName string
---@field m_bAwayPartyConsumeItem boolean
---@field m_strAwayPartyItemCode string
---@field m_bAwayPartyConsumeMoney boolean
---@field m_dwAwayPartyMoney integer
---@field m_strAllRaceChatItemCode string
---@field m_bAllRaceChatItemConsume boolean
---@field m_bAllRaceChatMoneyConsume boolean
---@field m_dwAllRaceChatMoney integer
---@field m_byWorldCode integer
---@field m_bWorldOpen boolean
---@field m_bWorldService boolean
---@field m_szWorldDBName string
---@field m_dwMessengerIP integer
---@field m_dwAccountIP integer
---@field m_dwCheckAccountOldTick integer
---@field m_tmrCheckAvator lightuserdata CMyTimer
---@field m_tmrCheckLoop lightuserdata CMyTimer
---@field m_tmrAccountPing lightuserdata CMyTimer
---@field m_tmrStateMsgGotoWeb lightuserdata CMyTimer
---@field m_tmrCheckRadarDelay lightuserdata CMyTimer
---@field m_nFreeServer integer
---@field m_bRuleThread boolean
---@field m_bDQSThread boolean
---@field m_tblPlayer CRecordData
---@field m_tblMonster CRecordData
---@field m_tblNPC CRecordData
---@field m_tblAnimus CRecordData
---@field m_tblClass CRecordData
---@field m_tblExp CRecordData
---@field m_tblGrade CRecordData
---@field m_tblItemLoot lightuserdata CItemLootTable
---@field m_tblOreCutting lightuserdata COreCuttingTable
---@field m_tblItemMakeData CRecordData
---@field m_tblItemCombineData CRecordData
---@field m_tblItemExchangeData CRecordData
---@field m_tblItemUpgrade CItemUpgradeTable
---@field m_tblUnitBullet CRecordData
---@field m_tblUnitFrame CRecordData
---@field m_tblEditData CRecordData
---@field m_MonsterBaseSPData CRecordData
---@field m_MonsterSPGroupTable lightuserdata CMonsterSPGroupTable
---@field m_logBillCheck CLogFile
---@field m_logSystemError CLogFile
---@field m_logLoadingError CLogFile
---@field m_logDungeon CLogFile
---@field m_logKillMon CLogFile
---@field m_logServerState CLogFile
---@field m_logDTrade CLogFile
---@field m_logGuild CLogFile
---@field m_logDQS CLogFile
---@field m_logRename CLogFile
---@field m_logAutoTrade CLogFile
---@field m_logEvent CLogFile
---@field m_logMove CLogFile
---@field m_logSave CLogFile
---@field m_logReturnGate CLogFile
---@field m_logHack CLogFile
---@field m_logPvP CLogFile
---@field m_logMonNum CLogFile
---@field m_logAPIBilling CLogFile
---@field m_logRenewalData CLogFile
---@field m_tmForceUserExit lightuserdata CMyTimer
---@field m_nForceExitSocketIndexOffset integer
---@field m_bServerClosing boolean
---@field m_bCheckOverTickCount boolean
---@field m_nSleepTerm integer
---@field m_nSleepValue integer
---@field m_nSleepIgnore integer
---@field m_bCheckSumActive boolean
---@field m_byWebAgentServerNetInx integer
---@field m_bConnectedWebAgentServer boolean
---@field m_byControllServerNetInx integer
---@field m_bConnectedControllServer boolean
---@field m_iOldDay integer
---@field m_byWorldType integer
---@field m_bReleaseServiceMode boolean
---@field m_bExcuteService boolean
---@field m_byServiceCompanyMode integer
---@field m_pRFEvent_ClassRefine lightuserdata RFEventBase
---@field m_kEtcNotifyInfo lightuserdata CNotifyNotifyRaceLeaderSownerUTaxrate
---@field m_BattleTournamentInfo lightuserdata CBattleTournamentInfo
---@field m_GuildCreateEventInfo lightuserdata GuildCreateEventInfo
---@field m_ServerRateLoad lightuserdata _server_rate_realtime_load
---@field m_pTimeLimitMgr lightuserdata TimeLimitMgr
---@field m_tmCheckForceClose lightuserdata CMyTimer
---@field m_MobMessage lightuserdata _mob_message
---@field m_nLimitPlayerLevel integer
---@field m_byLimitPlayerLevel integer
---@field m_bFlyOnOff boolean
---@field m_bFlyLog boolean
---@field m_bFlyUserCut boolean
---@field m_dwGuildEntryDelay integer
---@field m_byPlayerInteg integer
---@field m_dwServerResetToken integer
---@field m_dwCheatSetPlayTime integer
---@field m_dwCheatSetScanerCnt integer
---@field m_dwCheatSetLevel integer
local CMainThread = {}
---@param a1 integer
---@return lightuserdata _WAIT_ENTER_ACCOUNT
function CMainThread:m_WaitEnterAccount_get(a1) end
---@param a1 integer
---@return string
function CMainThread:m_wszRaceGreetingMsg_get(a1) end
---@param a1 integer
---@param a2 string
function CMainThread:m_wszRaceGreetingMsg_set(a1, a2) end
---@param a1 integer
---@return string
function CMainThread:m_wszBossName_get(a1) end
---@param a1 integer
---@param a2 string
function CMainThread:m_wszBossName_set(a1, a2) end
---@param a1 integer
---@return CRecordData
function CMainThread:m_tblItemData_get(a1) end
---@param a1 integer
---@return CRecordData
function CMainThread:m_tblEffectData_get(a1) end
---@param a1 integer
---@return CRecordData
function CMainThread:m_tblUnitPart_get(a1) end
---@param a1 integer
---@return integer
function CMainThread:m_dwStartNPCQuestCnt_get(a1) end
---@param a1 integer
---@return integer
function CMainThread:m_dwGuildPower_get(a1) end
---@param a1 integer
---@param a2 integer
function CMainThread:m_dwGuildPower_set(a1, a2) end

---@class (exact) CMapData
---@field m_bUse boolean
---@field m_bLoad boolean
---@field m_nMapIndex integer
---@field m_Level CLevel
---@field m_nMapCode integer
---@field m_mb lightuserdata _MULTI_BLOCK
---@field m_Dummy lightuserdata CExtDummy
---@field m_nMapInPlayerNum integer
---@field m_nMapInMonsterNum integer
---@field m_nMonBlockNum integer
---@field m_pMonBlock lightuserdata _mon_block
---@field m_nMonDumNum integer
---@field m_nPortalNum integer
---@field m_pPortal _portal_dummy
---@field m_nItemStoreDumNum integer
---@field m_pItemStoreDummy _store_dummy
---@field m_nStartDumNum integer
---@field m_pStartDummy lightuserdata _start_dummy
---@field m_nBindDumNum integer
---@field m_pBindDummy lightuserdata _bind_dummy
---@field m_nResDumNum integer
---@field m_pResDummy lightuserdata _res_dummy
---@field m_nQuestDumNum integer
---@field m_pQuestDummy lightuserdata _quest_dummy
---@field m_pMapSet _map_fld
---@field m_pExtDummy_Town lightuserdata CExtDummy
---@field m_nSafeDumNum integer
---@field m_pSafeDummy lightuserdata _safe_dummy
---@field m_tbSafeDumPos lightuserdata CDummyPosTable
---@field m_tbMonBlk CRecordData
---@field m_tbPortal CRecordData
---@field m_tbMonDumPos lightuserdata CDummyPosTable
---@field m_tbPortalDumPos lightuserdata CDummyPosTable
---@field m_tbStoreDumPos lightuserdata CDummyPosTable
---@field m_tbStartDumPos lightuserdata CDummyPosTable
---@field m_tbBindDumPos lightuserdata CDummyPosTable
---@field m_tbResDumPosHigh lightuserdata CDummyPosTable
---@field m_tbResDumPosMiddle lightuserdata CDummyPosTable
---@field m_tbResDumPosLow lightuserdata CDummyPosTable
---@field m_tbQuestDumPos lightuserdata CDummyPosTable
---@field m_BspInfo lightuserdata _bsp_info
---@field m_SecInfo _sec_info
---@field m_tmrMineGradeReSet lightuserdata CMyTimer
---@field m_nMonTotalCount integer
local CMapData = {}
---@param a1 integer
---@return _LAYER_SET
function CMapData:m_ls_get(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CMapData:GetRandPosInRange(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CMapData:IsMapIn(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CMapData:GetRectInRadius(a1) end
---@param a1 integer
---@param a2 integer
---@return CObjectList
function CMapData:GetSectorListObj(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CMapData:GetObjectListInRadius(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CMapData:GetPlayerListInRadius(a1) end
---@param a1 CMapData
---@param a2 number
---@param a3 number
---@return integer
function CMapData:GetSectorIndex(a1, a2, a3) end

---@class (exact) CMapOperation
local CMapOperation = {}
---@param a1 lightuserdata lua_State
---@return integer
function CMapOperation:GetPosStartMap(a1) end
---@param a1 string
---@param a2 CGameObject
---@return boolean
function CMapOperation:IsInRegion(a1, a2) end

---@class (exact) CMgrAvatorItemHistory
local CMgrAvatorItemHistory = {}
---@param a1 lightuserdata lua_State
---@return integer
function CMgrAvatorItemHistory:grade_up_item(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CMgrAvatorItemHistory:combine_ex_reward_item(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CMgrAvatorItemHistory:make_item(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CMgrAvatorItemHistory:cheat_make_item_no_material(a1) end

---@class (exact) CMonster: CCharacter
---@field m_bOper boolean
---@field m_bApparition boolean
---@field m_bDungeon boolean
---@field m_dwLastDestroyTime integer
---@field m_dwDestroyNextTime integer
---@field m_dwLastRecoverTime integer
---@field m_fCreatePos_x number
---@field m_fCreatePos_y number
---@field m_fCreatePos_z number
---@field m_fLookAtPos_x number
---@field m_fLookAtPos_y number
---@field m_fLookAtPos_z number
---@field m_bRobExp boolean
---@field m_bRewardExp boolean
---@field m_bStdItemLoot boolean
---@field m_pActiveRec lightuserdata _mon_active
---@field m_pMonRec _monster_fld
---@field m_pDumPosition _dummy_position
---@field m_nHP integer
---@field m_LootMgr CLootingMgr
---@field m_AggroMgr lightuserdata CMonsterAggroMgr
---@field m_MonHierarcy lightuserdata CMonsterHierarchy
---@field m_SFContDamageTolerance lightuserdata MonsterSFContDamageToleracne
---@field m_LifeMax integer
---@field m_LifeCicle integer
---@field m_nCommonStateChunk integer
---@field m_EmotionPresentationCheck lightuserdata EmotionPresentationChecker
---@field m_fYAngle number
---@field m_fStartLookAtPos_x number
---@field m_fStartLookAtPos_y number
---@field m_fStartLookAtPos_z number
---@field m_bRotateMonster boolean
---@field m_MonsterStateData lightuserdata MonsterStateData
---@field m_BeforeMonsterStateData lightuserdata MonsterStateData
---@field m_pTargetChar CCharacter
---@field m_MonsterSkillPool CMonsterSkillPool
---@field m_nEventItemNum integer
---@field m_pEventRespawn lightuserdata _event_respawn
---@field m_pEventSet lightuserdata _event_set
---@field m_AI lightuserdata CMonsterAI
---@field m_LuaSignalReActor lightuserdata CLuaSignalReActor
local CMonster = {}
---@param a1 integer
---@return integer
function CMonster:m_byCreateDate_get(a1) end
---@param a1 integer
---@param a2 integer
function CMonster:m_byCreateDate_set(a1, a2) end
---@param a1 CMonster
---@return integer
function CMonster:m_nMove_State(a1) end
---@param a1 CMonster
---@return integer
function CMonster:m_nCombat_State(a1) end
---@param a1 CMonster
---@return integer
function CMonster:m_nEmotion_State(a1) end
---@param a1 integer
---@return integer
function CMonster:m_DefPar_get(a1) end
---@param a1 integer
---@param a2 integer
function CMonster:m_DefPar_set(a1, a2) end
---@param a1 integer
---@return lightuserdata _event_loot_item
function CMonster:m_eventItem_get(a1) end
---@return integer
function CMonster:GetCritical_Exception_Rate() end
---@param a1 lightuserdata lua_State
---@return integer
function CMonster:GetViewAngleCap(a1) end
---@param a1 integer
---@param a2 CGameObject
---@return boolean
function CMonster:Destroy(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CMonster:UpdateLookAtPos(a1) end
---@param a1 CCharacter
---@return boolean
function CMonster:IsViewArea(a1) end

---@class (exact) CMonsterAttack: CAttack
---@field m_pAttMonster CMonster
local CMonsterAttack = {}

---@class (exact) CMonsterSkill
---@field m_bExit boolean
---@field m_UseType integer
---@field m_nSFCode integer
---@field m_wSFIndex integer
---@field m_pSF_Fld _base_fld
---@field m_pSPConst _monster_sp_fld
---@field m_BefTime integer
---@field m_dwDelayTime integer
---@field m_dwCastDelay integer
---@field m_fAttackDist number
---@field m_nMotive integer
---@field m_nMotivevalue integer
---@field m_nCaseType integer
---@field m_nAccumulationCount integer
---@field m_nSFLv integer
---@field m_Element integer
---@field m_StdDmg integer
---@field m_MinDmg integer
---@field m_MaxDmg integer
---@field m_MinProb integer
---@field m_MaxProb integer
local CMonsterSkill = {}

---@class (exact) CMonsterSkillPool
---@field m_pMyMon CMonster
---@field m_nSize integer
local CMonsterSkillPool = {}
---@param a1 integer
---@return CMonsterSkill
function CMonsterSkillPool:m_MonSkill_get(a1) end
---@param a1 integer
---@return CMonsterSkill
function CMonsterSkillPool:GetMonSkillKind(a1) end

---@class (exact) CNuclearBomb: CCharacter
---@field m_wItemIndex integer
---@field m_wControlSerial integer
---@field m_bUse boolean
---@field m_bIsLive boolean
---@field m_fDropPos_x number
---@field m_fDropPos_y number
---@field m_fDropPos_z number
---@field m_dwStartTime integer
---@field m_dwDurTime integer
---@field m_dwDelayTime integer
---@field m_dwWarnTime integer
---@field m_dwAttInformTime integer
---@field m_dwAttStartTime integer
---@field m_byBombState integer
---@field m_nDamagedObjNum integer
---@field m_nEffObjNum integer
---@field m_nStartDmLoop integer
---@field m_pMaster CPlayer
local CNuclearBomb = {}
---@param a1 integer
---@return _be_damaged_player
function CNuclearBomb:m_DamList_get(a1) end
---@param a1 integer
---@return _be_damaged_char
function CNuclearBomb:m_EffList_get(a1) end

---@class (exact) CNuclearBombMgr
---@field m_szStickCode string
---@field m_dwWarnTime integer
---@field m_dwAttInformTime integer
---@field m_dwAttStartTime integer
local CNuclearBombMgr = {}
---@param a1 integer
---@param a2 integer
---@return CNuclearBomb
function CNuclearBombMgr:m_Missile_get(a1, a2) end

---@class (exact) CObjectList
---@field m_Head _object_list_point
---@field m_Tail _object_list_point
---@field m_nSize integer
local CObjectList = {}

---@class (exact) CParkingUnit: CGameObject
---@field m_pOwner CPlayer
---@field m_dwOwnerSerial integer
---@field m_byFrame integer
---@field m_byCreateType integer
---@field m_byTransDistCode integer
---@field m_dwParkingStartTime integer
---@field m_wHPRate integer
---@field m_dwLastDestroyTime integer
local CParkingUnit = {}
---@param a1 integer
---@return integer
function CParkingUnit:m_byPartCode_get(a1) end
---@param a1 integer
---@param a2 integer
function CParkingUnit:m_byPartCode_set(a1, a2) end

---@class (exact) CPartyModeKillMonsterExpNotify
---@field m_bKillMonster boolean
---@field m_byMemberCnt integer
local CPartyModeKillMonsterExpNotify = {}
---@param a1 integer
---@return lightuserdata CPartyModeKillMonsterExpNotify__CExpInfo
function CPartyModeKillMonsterExpNotify:m_kInfo_get(a1) end
---@param a1 CPlayer
---@param a2 number
---@return boolean
function CPartyModeKillMonsterExpNotify:Add(a1, a2) end

---@class (exact) CPartyPlayer
---@field m_bLogin boolean
---@field m_id _CLID
---@field m_wszName string
---@field m_wZoneIndex integer
---@field m_pPartyBoss CPartyPlayer
---@field m_bLock boolean
---@field m_byLootShareSystem integer
---@field m_pLootAuthor CPartyPlayer
---@field m_pDarkHole lightuserdata CDarkHole
local CPartyPlayer = {}
---@param a1 integer
---@return CPartyPlayer
function CPartyPlayer:m_pPartyMember_get(a1) end
---@param a1 integer
---@param a2 CPartyPlayer
function CPartyPlayer:m_pPartyMember_set(a1, a2) end
---@return boolean
function CPartyPlayer:IsPartyBoss() end
---@return boolean
function CPartyPlayer:IsPartyMode() end
---@return CPlayer
function CPartyPlayer:GetLootAuthor() end
---@param a1 CPlayer
---@return boolean
function CPartyPlayer:IsPartyMember(a1) end

---@class (exact) CPlayer: CCharacter
---@field m_bLoad boolean
---@field m_bOper boolean
---@field m_bPostLoad boolean
---@field m_bFullMode boolean
---@field m_byUserDgr integer
---@field m_bySubDgr integer
---@field m_bFirstStart boolean
---@field m_bOutOfMap boolean
---@field m_byMoveDirect integer
---@field m_byPlusKey integer
---@field m_wXorKey integer
---@field m_dwMoveCount integer
---@field m_dwTargetCount integer
---@field m_dwAttackCount integer
---@field m_bBaseDownload boolean
---@field m_bInvenDownload boolean
---@field m_bForceDownload boolean
---@field m_bCumDownload boolean
---@field m_bQuestDownload boolean
---@field m_bSpecialDownload boolean
---@field m_bLinkBoardDownload boolean
---@field m_bAMPInvenDownload boolean
---@field m_bGuildListDownload boolean
---@field m_bGuildDownload boolean
---@field m_bBuddyListDownload boolean
---@field m_bBlockParty boolean
---@field m_bBlockWhisper boolean
---@field m_bBlockTrade boolean
---@field m_bCreateComplete boolean
---@field m_dwSelfDestructionTime integer
---@field m_fSelfDestructionDamage number
---@field m_bTakeGravityStone boolean
---@field m_bBlockGuildBattleMsg boolean
---@field m_bInGuildBattle boolean
---@field m_bNotifyPosition boolean
---@field m_byGuildBattleColorInx integer
---@field m_bTakeSoccerBall boolean
---@field m_pSoccerItem _STORAGE_LIST___db_con
---@field m_pUserDB CUserDB
---@field m_pPartyMgr CPartyPlayer
---@field m_Param CPlayerDB
---@field m_id _CLID
---@field m_byMoveType integer
---@field m_byModeType integer
---@field m_byStandType integer
---@field m_kMoveDelayChecker lightuserdata CRealMoveRequestDelayChecker
---@field m_pmWpn _WEAPON_PARAM
---@field m_pmTrd lightuserdata _DTRADE_PARAM
---@field m_pmMst _MASTERY_PARAM
---@field m_pmTwr _TOWER_PARAM
---@field m_pmTrp _TRAP_PARAM
---@field m_pmBuddy lightuserdata _BUDDY_LIST
---@field m_QuestMgr CQuestMgr
---@field m_ItemCombineMgr ItemCombineMgr
---@field m_byMapInModeBuffer integer
---@field m_nVoteSerial integer
---@field m_bWarCount boolean
---@field m_dwLastCheckRegionTime integer
---@field m_wRegionMapIndex integer
---@field m_wRegionIndex integer
---@field m_byHSKQuestCode integer
---@field m_MinigTicket lightuserdata MiningTicket
---@field m_nHSKPvpPoint integer
---@field m_wKillPoint integer
---@field m_byHSKTime integer
---@field m_wDiePoint integer
---@field m_byCristalBattleDBInfo integer
---@field m_clsSetItem lightuserdata CSetItemEffect
---@field m_pDHChannel lightuserdata CDarkHoleChannel
---@field m_fTalik_DefencePoint number
---@field m_fTalik_AvoidPoint number
---@field m_bCheat_100SuccMake boolean
---@field m_bCheat_makeitem_no_use_matrial boolean
---@field m_bCheat_Matchless boolean
---@field m_bFreeRecallWaitTime boolean
---@field m_bFreeSFByClass boolean
---@field m_bLootFree boolean
---@field m_bNeverDie boolean
---@field m_nMaxAttackPnt integer
---@field m_bSpyGM boolean
---@field m_nAnimusAttackPnt integer
---@field m_nTrapMaxAttackPnt integer
---@field m_byDamagePart integer
---@field m_bRecvMapChat boolean
---@field m_bRecvAllChat boolean
---@field EquipItemSFAgent lightuserdata CEquipItemSFAgent
---@field m_pmCryMsg lightuserdata _CRYMSG_LIST
---@field m_bSnowMan boolean
---@field m_byStoneMapMoveInfo integer
---@field m_dwPatriarchAppointTime integer
---@field m_byPatriarchAppointPropose integer
---@field m_bAfterEffect boolean
---@field m_bSFDelayNotCheck boolean
---@field m_ReNamePotionUseInfo lightuserdata _RENAME_POTION_USE_INFO
---@field m_bCommunionEffectAnimus boolean
---@field m_byCommunionStep integer
---@field m_bGeneratorAttack boolean
---@field m_byUnitEffectAttackStep integer
---@field m_bGeneratorDefense boolean
---@field m_byUnitEffectDefenseStep integer
---@field m_CashChangeStateFlag union CPlayer__CashChangeStateFlag
---@field m_NPCQuestIndexTempData _NPCQuestIndexTempData
---@field m_wVisualVer integer
---@field m_nLastBeatenPart integer
---@field m_dwLastState integer
---@field m_dwLastStateEx integer
---@field m_dwExpRate integer
---@field m_nAddDfnMstByClass integer
---@field m_nMaxDP integer
---@field m_fEquipSpeed number
---@field m_nOldMaxDP integer
---@field m_fSendTarPos_x number
---@field m_fSendTarPos_y number
---@field m_byLastDirect integer
---@field m_fLastRecvPos_x number
---@field m_fLastRecvPos_y number
---@field m_fLastRecvPos_z number
---@field m_byLastRecvMapIndex integer
---@field m_dwLastTakeItemTime integer
---@field m_nCheckMovePacket integer
---@field m_bCheckMovePacket boolean
---@field m_byDefMatCount integer
---@field m_MakeRandTable _100_per_random_table
---@field m_pBindMapData CMapData
---@field m_pBindDummyData _dummy_position
---@field m_dwNextTimeDungeonDie integer
---@field m_dwLastTimeCheckUnitViewOver integer
---@field m_dwUnitViewOverTime integer
---@field m_pUsingUnit _UNIT_DB_BASE___LIST
---@field m_pParkingUnit CParkingUnit
---@field m_byUsingWeaponPart integer
---@field m_nUnitDefFc integer
---@field m_pSiegeItem _STORAGE_LIST___db_con
---@field m_bIsSiegeActing boolean
---@field m_tmrSiegeTime lightuserdata CMyTimer
---@field m_pRecalledAnimusItem _STORAGE_LIST___db_con
---@field m_pRecalledAnimusChar CAnimus
---@field m_dwLastRecallTime integer
---@field m_byNextRecallReturn integer
---@field m_wTimeFreeRecallSerial integer
---@field m_tmrIntervalSec lightuserdata CMyTimer
---@field m_dwLastSetPointTime integer
---@field m_tmrBilling lightuserdata CMyTimer
---@field m_fBeforeDungeonPos_x number
---@field m_fBeforeDungeonPos_y number
---@field m_fBeforeDungeonPos_z number
---@field m_pBeforeDungeonMap CMapData
---@field m_dwContItemEffEndTime integer
---@field m_PotionParam CPotionParam
---@field m_PotionBufUse CExtPotionBuf
---@field m_nCntEnable integer
---@field m_tmLoginTime lightuserdata _SYSTEMTIME
---@field m_tmCalcTime lightuserdata _SYSTEMTIME
---@field m_tmrAccumPlayingTime lightuserdata CMyTimer
---@field m_bUpCheckEquipEffect boolean
---@field m_bDownCheckEquipEffect boolean
---@field m_byPosRaceTown integer
---@field m_pBeforeTownCheckMap CMapData
---@field m_fBeforeTownCheckPos_x number
---@field m_fBeforeTownCheckPos_y number
---@field m_TargetObject CPlayer____target
---@field m_tmrGroupTargeting lightuserdata CMyTimer
---@field m_bMineMode boolean
---@field m_dwMineNextTime integer
---@field m_wBatterySerialTmp integer
---@field m_bySelectOreIndex integer
---@field m_byDelaySec integer
---@field m_zMinePos_x integer
---@field m_zMinePos_y integer
---@field m_AttDelayChker _ATTACK_DELAY_CHECKER
---@field m_fUnitPv_AttFc number
---@field m_fUnitPv_DefFc number
---@field m_fUnitPv_RepPr number
---@field m_kPvpPointLimiter lightuserdata CPvpPointLimiter
---@field m_nChaosMode integer
---@field m_dwChaosModeTime10Per integer
---@field m_dwChaosModeEndTime integer
---@field m_nCashAmount integer
---@field m_kPvpOrderView CPvpOrderView
---@field m_byBattleMode integer
---@field m_dwBattleTime integer
---@field m_tmrAuraSkill lightuserdata CMyTimer
---@field m_kPvpCashPoint lightuserdata CPvpCashPoint
---@field m_kPcBangCoupon lightuserdata CCouponMgr
---@field m_tmrEffectStartTime lightuserdata CMyTimer
---@field m_tmrEffectEndTime lightuserdata CMyTimer
---@field m_byBattleTournamentGrade integer
---@field m_NameChangeBuddyInfo lightuserdata _NameChangeBuddyInfo
---@field m_dwPcBangGiveItemListIndex integer
---@field m_dwRaceBuffClearKey lightuserdata MiningTicket___AuthKeyTicket
---@field m_tmrPremiumPVPInform lightuserdata CMyTimer
---@field m_szItemHistoryFileName string
---@field m_szLvHistoryFileName string
---@field m_dwUMWHLastTime integer
---@field m_bufShapeAll lightuserdata _other_shape_all_zocl
---@field m_bufSpapePart lightuserdata _other_shape_part_zocl
local CPlayer = {}
---@param a1 integer
---@return integer
function CPlayer:m_nAddPointByClass_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_nAddPointByClass_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayer:m_nMaxPoint_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_nMaxPoint_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayer:m_nTolValue_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_nTolValue_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayer:m_zLastTol_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_zLastTol_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayer:m_nOldPoint_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_nOldPoint_set(a1, a2) end
---@param a1 integer
---@return lightuserdata _MEM_PAST_WHISPER
function CPlayer:m_PastWhiper_get(a1) end
---@param a1 integer
---@return integer
function CPlayer:m_byEffectEquipCode_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_byEffectEquipCode_set(a1, a2) end
---@param a1 integer
---@return CPlayer____target
function CPlayer:m_GroupTargetObject_get(a1) end
---@param a1 integer
---@return integer
function CPlayer:m_wPointRate_PartySend_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_wPointRate_PartySend_set(a1, a2) end
---@param a1 integer
---@param a2 integer
---@return number
function CPlayer:m_fGroupMapPoint_get(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 number
function CPlayer:m_fGroupMapPoint_set(a1, a2, a3) end
---@param a1 integer
---@return integer
function CPlayer:m_byGroupMapPointMapCode_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_byGroupMapPointMapCode_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayer:m_wGroupMapPointLayerIndex_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_wGroupMapPointLayerIndex_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayer:m_dwLastGroupMapPointTime_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:m_dwLastGroupMapPointTime_set(a1, a2) end
---@return boolean
function CPlayer:IsApplyPcbangPrimium() end
---@return boolean
function CPlayer:IsChaosMode() end
---@param a1 integer
---@param a2 boolean
---@return boolean
function CPlayer:IsPunished(a1, a2) end
---@return integer
function CPlayer:GetMaxFP() end
---@return integer
function CPlayer:GetFP() end
---@param a1 integer
---@param a2 boolean
---@return boolean
function CPlayer:SetFP(a1, a2) end
---@return integer
function CPlayer:GetMaxSP() end
---@return integer
function CPlayer:GetSP() end
---@param a1 integer
---@param a2 boolean
---@return boolean
function CPlayer:SetSP(a1, a2) end
---@param a1 boolean
---@param a2 boolean
function CPlayer:ReCalcMaxHFSP(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 boolean
---@param a5 string
---@param a6 integer
---@param a7 string
function CPlayer:SendData_ChatTrans(a1, a2, a3, a4, a5, a6, a7) end
---@return boolean
function CPlayer:IsRidingUnit() end
---@return boolean
function CPlayer:IsSiegeMode() end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@return integer
function CPlayer:Emb_UpdateStat(a1, a2, a3) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function CPlayer:SendMsg_StatInform(a1, a2, a3) end
---@param a1 integer
---@param a2 _STORAGE_LIST___storage_con
---@param a3 boolean
---@param a4 boolean
---@return _STORAGE_LIST___db_con
function CPlayer:Emb_AddStorage(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 _STORAGE_LIST___db_con
function CPlayer:SendMsg_TakeNewResult(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 boolean
---@param a4 boolean
---@param a5 string
---@return boolean
function CPlayer:Emb_DelStorage(a1, a2, a3, a4, a5) end
---@param a1 integer
---@param a2 integer
function CPlayer:SendMsg_DeleteStorageInform(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 boolean
---@param a5 boolean
---@return integer
function CPlayer:Emb_AlterDurPoint(a1, a2, a3, a4, a5) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function CPlayer:SendMsg_AdjustAmountInform(a1, a2, a3) end
---@param a1 number
function CPlayer:AlterDalant(a1) end
---@param a1 number
function CPlayer:AlterGold(a1) end
---@param a1 integer
function CPlayer:SendMsg_AlterMoneyInform(a1) end
---@param a1 integer
---@param a2 integer
function CPlayer:SubActPoint(a1, a2) end
---@param a1 integer
---@param a2 integer
function CPlayer:SendMsg_Alter_Action_Point(a1, a2) end
---@param a1 number
---@param a2 enum PVP_ALTER_TYPE
---@param a3 integer
function CPlayer:AlterPvPPoint(a1, a2, a3) end
---@param a1 number
---@param a2 enum PVP_MONEY_ALTER_TYPE)
function CPlayer:AlterPvPCashBag(a1, a2) end
---@param a1 number
---@param a2 enum PVP_ALTER_TYPE
---@param a3 integer
function CPlayer:IncPvPPoint(a1, a2, a3) end
---@param a1 integer
function CPlayer:SetLevel(a1) end
---@param a1 integer
function CPlayer:SetLevelD(a1) end
---@param a1 integer
function CPlayer:AlterMaxLevel(a1) end
---@param a1 integer
---@param a2 integer
---@return integer
function CPlayer:_check_mastery_cum_lim(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CPlayer:_GetPartyMemberInCircle(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CPlayer:OutOfMap(a1) end
---@param a1 _combine_ex_item_result_zocl
function CPlayer:SendMsg_CombineItemExResult(a1) end
---@param a1 _STORAGE_LIST___db_con
---@param a2 integer
function CPlayer:SendMsg_RewardAddItem(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function CPlayer:SendMsg_AlterItemDurInform(a1, a2, a3) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 integer
function CPlayer:Emb_ItemUpgrade(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 _STORAGE_LIST___db_con
---@param a3 CItemBox
function CPlayer:SendMsg_FanfareItem(a1, a2, a3) end
---@param a1 integer
---@param a2 string
---@param a3 integer
---@param a4 boolean
---@return boolean
function CPlayer:Emb_CheckActForQuest(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 string
---@param a3 integer
function CPlayer:Emb_CheckActForQuestParty(a1, a2, a3) end
---@param a1 integer
---@param a2 _STORAGE_LIST___db_con
function CPlayer:SendMsg_InsertItemInform(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 integer
---@param a5 string
---@param a6 boolean
function CPlayer:Emb_AlterStat(a1, a2, a3, a4, a5, a6) end
---@param a1 CTrap
---@param a2 integer
function CPlayer:_TrapReturn(a1, a2) end
---@param a1 _STORAGE_LIST___db_con
---@return integer
function CPlayer:_TowerReturn(a1) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function CPlayer:SendMsg_BackTowerResult(a1, a2, a3) end
---@param a1 number
---@return boolean
function CPlayer:DecHalfSFContDam(a1) end
---@param a1 boolean
function CPlayer:HideNameEffect(a1) end
---@param a1 integer
---@param a2 number
---@param a3 boolean
---@param a4 integer
function CPlayer:SetMstPt(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 number
---@param a3 boolean
function CPlayer:SetEquipJadeEffect(a1, a2, a3) end
---@param a1 boolean
function CPlayer:ForcePullUnit(a1) end
---@param a1 integer
function CPlayer:_AnimusReturn(a1) end
---@param a1 number
---@param a2 boolean
---@param a3 boolean
---@param a4 boolean
function CPlayer:AlterExp(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 _happen_event_cont
---@return boolean
function CPlayer:Emb_StartQuest(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function CPlayer:Emb_CompleteQuest(a1, a2, a3) end
---@param a1 integer
---@param a2 _QUEST_DB_BASE___LIST
function CPlayer:SendMsg_InsertNextQuest(a1, a2) end
---@param a1 integer
---@param a2 integer
function CPlayer:SendMsg_QuestFailure(a1, a2) end
---@param a1 string
---@param a2 integer
---@return boolean
function CPlayer:Emb_CreateNPCQuest(a1, a2) end
---@param a1 CPlayer
function CPlayer:SendMsg_NpcQuestListResult(a1) end
---@param a1 CPlayer
---@param a2 integer
function CPlayer:SendMsg_InsertNewQuest(a1, a2) end
---@param a1 integer
---@param a2 _STORAGE_LIST___db_con
function CPlayer:SendMsg_ExchangeItemResult(a1, a2) end
---@param a1 integer
---@param a2 _STORAGE_LIST___db_con
function CPlayer:SendMsg_ExchangeLendItemResult(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CPlayer:_pre_check_normal_attack(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CPlayer:_pre_check_skill_attack(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CPlayer:_pre_check_force_attack(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CPlayer:_pre_check_unit_attack(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CPlayer:_pre_check_siege_attack(a1) end
function CPlayer:SenseState() end

---@class (exact) CPlayerAttack: CAttack
---@field m_pAttPlayer CPlayer
local CPlayerAttack = {}

---@class (exact) CPlayerDB
---@field m_byPvPGrade integer
---@field m_dbChar _character_db_load
---@field m_dbInven _bag_db_load
---@field m_dbEquip _equip_db_load
---@field m_dbEmbellish _embellish_db_load
---@field m_dbForce _force_db_load
---@field m_dbAnimus _animus_db_load
---@field m_dbTrunk _trunk_db_load
---@field m_dbExtTrunk _Exttrunk_db_load
---@field m_UnitDB _UNIT_DB_BASE
---@field m_QuestDB _QUEST_DB_BASE
---@field m_SFContDB _SFCONT_DB_BASE
---@field m_ItemCombineDB _ITEMCOMBINE_DB_BASE
---@field m_PostStorage lightuserdata CPostStorage
---@field m_ReturnPostStorage lightuserdata CPostReturnStorage
---@field m_bPersonalAmineInven boolean
---@field m_pAPM AutominePersonal
---@field m_dbPersonalAmineInven _personal_amine_inven_db_load
---@field m_byNameLen integer
---@field m_pClassData _class_fld
---@field m_pGuild CGuild
---@field m_pGuildMemPtr _guild_member_info
---@field m_byClassInGuild integer
---@field m_pApplyGuild CGuild
---@field m_bGuildLock boolean
---@field m_bTrunkOpen boolean
---@field m_wszTrunkPasswd string
---@field m_dTrunkDalant number
---@field m_dTrunkGold number
---@field m_byTrunkSlotNum integer
---@field m_byTrunkHintIndex integer
---@field m_wszTrunkHintAnswer string
---@field m_byExtTrunkSlotNum integer
---@field m_byTrunkIteg integer
---@field m_nMakeTrapMaxNum integer
---@field m_dPvpPointLeak number
---@field m_bLastAttBuff boolean
---@field m_dwGuildEntryDelay integer
---@field m_byPlayerInteg integer
---@field m_wSerialCount integer
---@field m_pThis CPlayer
---@field m_aszName string
local CPlayerDB = {}
---@param a1 integer
---@return _STORAGE_LIST
function CPlayerDB:m_pStoragePtr_get(a1) end
---@param a1 integer
---@param a2 _STORAGE_LIST
function CPlayerDB:m_pStoragePtr_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayerDB:m_wCuttingResBuffer_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayerDB:m_wCuttingResBuffer_set(a1, a2) end
---@param a1 integer
---@return integer
function CPlayerDB:m_dwAlterMastery_get(a1) end
---@param a1 integer
---@param a2 integer
function CPlayerDB:m_dwAlterMastery_set(a1, a2) end
---@param a1 integer
---@return _class_fld
function CPlayerDB:m_pClassHistory_get(a1) end
---@param a1 integer
---@param a2 _class_fld
function CPlayerDB:m_pClassHistory_set(a1, a2) end
---@param a1 integer
---@return _class_fld
function CPlayerDB:m_ppHistoryEffect_get(a1) end
---@param a1 integer
---@return lightuserdata _quick_link
function CPlayerDB:m_QLink_get(a1) end
---@return integer
function CPlayerDB:GetCharSerial() end
---@return number
function CPlayerDB:GetPvPPoint() end
---@return integer
function CPlayerDB:GetRaceCode() end
---@return integer
function CPlayerDB:GetDalant() end
---@return integer
function CPlayerDB:GetGold() end
---@return integer
function CPlayerDB:GetNewItemSerial() end

---@class (exact) CPlayer____target
---@field pObject CGameObject
---@field byKind integer
---@field byID integer
---@field dwSerial integer
---@field wHPRate integer
local CPlayer____target = {}

---@class (exact) CPotionMgr
---@field m_PotionInnerData lightuserdata PotionInnerData
---@field m_tblPotionEffectData CRecordData
---@field m_tblPotionCheckData CRecordData
local CPotionMgr = {}
---@param a1 CPotionMgr
---@param a2 CPlayer
---@param a3 _ContPotionData
---@return integer
function CPotionMgr:RemovePotionContEffect(a1, a2, a3) end
---@param a1 CPotionMgr
---@param a2 CPlayer
---@param a3 _ContPotionData
---@param a4 _skill_fld
---@param a5 integer
---@return integer
function CPotionMgr:InsertPotionContEffect(a1, a2, a3, a4, a5) end
---@param a1 CPlayer
---@param a2 CPlayer
---@param a3 _skill_fld
---@param a4 _CheckPotion_fld
---@param a5 _PotionItem_fld
---@param a6 boolean
---@return integer
function CPotionMgr:ApplyPotion(a1, a2, a3, a4, a5, a6) end
---@param a1 CPotionMgr
---@param a2 CPlayer
---@param a3 _skill_fld
function CPotionMgr:SendMsg_InsertPotionContEffect(a1, a2, a3) end

---@class (exact) CPotionParam
---@field m_StoneOfMovePotionData _ContPotionData
---@field m_pMaster CPlayer
local CPotionParam = {}
---@param a1 integer
---@return _ContPotionData
function CPotionParam:m_ContCommonPotionData_get(a1) end
---@param a1 integer
---@return integer
function CPotionParam:m_dwNextUseTime_get(a1) end
---@param a1 integer
---@param a2 integer
function CPotionParam:m_dwNextUseTime_set(a1, a2) end

---@class (exact) CPvpOrderView
---@field m_dwLastAttackTime integer
---@field m_dwLastDamagedTime integer
---@field m_nKillCnt integer
---@field m_nDeahtCnt integer
---@field m_dTodayPvpPoint number
---@field m_dOriginalPvpPoint number
---@field m_dPvpPoint number
---@field m_dPvpTempCash number
---@field m_dPvpCash number
---@field m_bAttack boolean
---@field m_bDamaged boolean
---@field m_pkInfo _PVP_ORDER_VIEW_DB_BASE
local CPvpOrderView = {}
---@return number
function CPvpOrderView:GetPvpTempCash() end
---@param a1 integer
function CPvpOrderView:Update_ContLoseCash(a1) end
---@param a1 integer
---@param a2 number
function CPvpOrderView:Update_PvpTempCash(a1, a2) end
---@param a1 integer
function CPvpOrderView:Update_ContHaveCash(a1) end
---@return number
function CPvpOrderView:GetPvpCash() end

---@class (exact) CPvpUserAndGuildRankingSystem
---@field m_pkLogger CLogFile
---@field m_bInit boolean
---@field m_kUserRankingProcess lightuserdata CUserRankingProcess
local CPvpUserAndGuildRankingSystem = {}
---@param a1 integer
---@param a2 integer
---@return integer
function CPvpUserAndGuildRankingSystem:GetBossType(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function CPvpUserAndGuildRankingSystem:GetBossListByRace(a1) end

---@class (exact) CQuestMgr
---@field m_pMaster CPlayer
---@field m_pQuestData _QUEST_DB_BASE
---@field m_LastHappenEvent _happen_event_cont
---@field m_dwOldTimeoutChecktime integer
local CQuestMgr = {}
---@param a1 integer
---@return _happen_event_cont
function CQuestMgr:m_pTempHappenEvent_get(a1) end
---@param a1 string
---@return boolean
function CQuestMgr:IsProcNpcQuest(a1) end
---@param a1 CQuestMgr
---@param a2 integer
---@return boolean
function CQuestMgr:IsProcLinkNpcQuest(a1, a2) end
---@param a1 integer
function CQuestMgr:DeleteQuestData(a1) end
---@param a1 string
---@param a2 integer
---@param a3 _NPCQuestIndexTempData
function CQuestMgr:CheckNPCQuestList(a1, a2, a3) end
---@param a1 string
---@param a2 integer
---@return boolean
function CQuestMgr:IsPossibleRepeatNpcQuest(a1, a2) end
---@param a1 integer
---@return boolean
function CQuestMgr:CanGiveupQuest(a1) end
---@param a1 _happen_event_condition_node
---@return boolean
function CQuestMgr:_CheckCondition(a1) end
---@param a1 string
---@param a2 integer
---@return boolean
function CQuestMgr:DeleteQuestItem(a1, a2) end

---@class (exact) CRecordData
---@field m_bLoad boolean
---@field m_szFileName string
---@field m_dwTotalSize integer
---@field m_Header _record_bin_header
---@field m_nLowNum integer
local CRecordData = {}
---@param a1 string
---@param a2 integer
---@return _base_fld
function CRecordData:GetRecord(a1, a2) end
---@param a1 string
---@param a2 integer
---@param a3 integer
---@return _base_fld
function CRecordData:GetRecordByHash(a1, a2, a3) end

---@class (exact) CReturnGate: CGameObject
---@field m_eState enum CReturnGate__STATE
---@field m_pkOwner CPlayer
---@field m_dwOwnerSerial integer
---@field m_pDestMap CMapData
---@field m_fBindPos_x number
---@field m_fBindPos_y number
---@field m_fBindPos_z number
---@field m_dwCloseTime integer
local CReturnGate = {}
function CReturnGate:Clear() end
function CReturnGate:Close() end
---@param a1 CPlayer
---@return integer
function CReturnGate:Enter(a1) end
---@return integer
function CReturnGate:GetIndex() end
---@return CPlayer
function CReturnGate:GetOwner() end
---@return boolean
function CReturnGate:IsClose() end
---@return boolean
function CReturnGate:IsOpen() end
---@return boolean
function CReturnGate:IsValidOwner() end
---@param a1 lightuserdata lua_State
---@return integer
function CReturnGate:IsValidPosition(a1) end
---@param a1 CReturnGateCreateParam
---@return boolean
function CReturnGate:Open(a1) end
function CReturnGate:SendMsg_Create() end
function CReturnGate:SendMsg_Destroy() end
---@param a1 integer
function CReturnGate:SendMsg_FixPosition(a1) end
---@param a1 CPlayer
function CReturnGate:SendMsg_MovePortal(a1) end

---@class (exact) CReturnGateCreateParam: _object_create_setdata
---@field m_pkOwner CPlayer
local CReturnGateCreateParam = {}
---@return CPlayer
function CReturnGateCreateParam:GetOwner() end

---@class (exact) CSQLDatabase
local CSQLDatabase = {}
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:SQLExecDirect(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:SQLBindParam(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:SQLRowCount(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:SQLFetch(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:SQLGetData(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:SQLParamData(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:SQLPutData(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:ErrorAction(a1) end
---@param a1 integer
---@return integer
function CSQLDatabase:SQLFreeStmt(a1) end
---@param a1 boolean
function CSQLDatabase:SetAutoCommitMode(a1) end
---@return boolean
function CSQLDatabase:CommitTransaction() end
---@return boolean
function CSQLDatabase:RollbackTransaction() end
---@param a1 lightuserdata lua_State
---@return integer
function CSQLDatabase:FetchSelected(a1) end

---@class (exact) CSQLResultSet
local CSQLResultSet = {}
---@param a1 lightuserdata lua_State
---@return integer
function CSQLResultSet:GetList(a1) end

---@class (exact) CTranslationAsset
local CTranslationAsset = {}
---@param a1 string
---@param a2 lightuserdata lua_State
function CTranslationAsset:loadTranslationTable(a1, a2) end

---@class (exact) CTrap: CCharacter
---@field m_nHP integer
---@field m_pMaster CPlayer
---@field m_byRaceCode integer
---@field m_dwMasterSerial integer
---@field m_wszMasterName string
---@field m_aszMasterName string
---@field m_dMasterPvPPoint number
---@field m_dwStartMakeTime integer
---@field m_bComplete boolean
---@field m_bBreakTransparBuffer boolean
---@field m_dwLastDestroyTime integer
---@field m_nTrapMaxAttackPnt integer
local CTrap = {}
---@param a1 integer
---@return boolean
function CTrap:Destroy(a1) end

---@class (exact) CUserDB
---@field m_gidGlobal lightuserdata _GLBID
---@field m_idWorld _CLID
---@field m_dwIP integer
---@field m_dwTotalPlayMin integer
---@field m_szAccountID string
---@field m_dwAccountSerial integer
---@field m_ipAddress integer
---@field m_byUserDgr integer
---@field m_bySubDgr integer
---@field m_wszAvatorName string
---@field m_aszAvatorName string
---@field m_dwSerial integer
---@field m_byNameLen integer
---@field m_AvatorData _AVATOR_DATA
---@field m_AvatorData_bk _AVATOR_DATA
---@field m_bActive boolean
---@field m_bField boolean
---@field m_bWndFullMode boolean
---@field m_bDBWaitState boolean
---@field m_pDBPushData lightuserdata _DB_QRY_SYN_DATA
---@field m_bChatLock boolean
---@field m_ss lightuserdata _SYNC_STATE
---@field m_dwOperLobbyTime integer
---@field m_bCreateTrunkFree boolean
---@field m_tmrCheckPlayMin lightuserdata CMyTimer
---@field m_bDataUpdate boolean
---@field m_dwTermContSaveTime integer
---@field m_dwLastContSaveTime integer
---@field m_bNoneUpdateData boolean
---@field m_BillingInfo lightuserdata _BILLING_INFO
---@field m_bBillingNoLogout boolean
---@field m_nTrans integer
---@field m_RadarItemMgr lightuserdata CRadarItemMgr
local CUserDB = {}
---@param a1 integer
---@return _REGED
function CUserDB:m_RegedList_get(a1) end
---@param a1 integer
---@return lightuserdata _NOT_ARRANGED_AVATOR_DB
function CUserDB:m_NotArrangedChar_get(a1) end
---@param a1 integer
---@return integer
function CUserDB:m_dwArrangePassCase0_get(a1) end
---@param a1 integer
---@param a2 integer
function CUserDB:m_dwArrangePassCase0_set(a1, a2) end
---@param a1 integer
---@return integer
function CUserDB:GetActPoint(a1) end
---@param a1 integer
---@param a2 integer
---@return boolean
function CUserDB:Update_User_Action_Point(a1, a2) end
---@param a1 integer
function CUserDB:Update_MaxLevel(a1) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 boolean
---@return boolean
function CUserDB:Update_ItemDur(a1, a2, a3, a4) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 boolean
---@return boolean
function CUserDB:Update_ItemUpgrade(a1, a2, a3, a4) end
---@param a1 integer
---@return boolean
function CUserDB:Update_QuestDelete(a1) end
---@param a1 integer
---@param a2 _QUEST_DB_BASE___LIST
---@return boolean
function CUserDB:Update_QuestInsert(a1, a2) end
---@param a1 integer
---@param a2 _QUEST_DB_BASE___LIST
---@param a3 boolean
---@return boolean
function CUserDB:Update_QuestUpdate(a1, a2, a3) end
---@param a1 CUserDB
---@param a2 _QUEST_DB_BASE___START_NPC_QUEST_HISTORY
---@return boolean
function CUserDB:Update_StartNPCQuestHistory(a1, a2) end
---@param a1 integer
---@return boolean
function CUserDB:Update_TrunkSlotNum(a1) end
---@param a1 integer
---@return boolean
function CUserDB:Update_ExtTrunkSlotNum(a1) end
---@param a1 integer
---@param a2 integer
---@param a3 boolean
---@param a4 string
function CUserDB:ForceCloseCommand(a1, a2, a3, a4) end
---@return boolean
function CUserDB:Lobby_Char_Request() end

---@class (exact) CWorldSQLDatabase: CSQLDatabase
local CWorldSQLDatabase = {}

---@class (exact) EffectData
---@field nEffCode integer
---@field fEffUnit number
---@field fEffUnitMax number
local EffectData = {}

---@class (exact) ILuaContext
local ILuaContext = {}
---@param a1 ILuaContext
function ILuaContext:Lock(a1) end
---@param a1 ILuaContext
function ILuaContext:Unlock(a1) end
---@param a1 ILuaContext
---@param a2 string
---@return boolean
function ILuaContext:DoString(a1, a2) end
---@param a1 ILuaContext
---@param a2 string
---@return boolean
function ILuaContext:DoFile(a1, a2) end
---@param a1 ILuaContext
---@param a2 string
---@param a3 string
---@return boolean
function ILuaContext:MakeGlobalFromString(a1, a2, a3) end
---@param a1 ILuaContext
---@param a2 string
---@param a3 string
---@return boolean
function ILuaContext:MakeGlobalFromFile(a1, a2, a3) end
---@param a1 ILuaContext
---@param a2 string
---@param a3 string
---@return boolean
function ILuaContext:MakeGlobalFromChunkedFile(a1, a2, a3) end
---@param a1 ILuaContext
---@param a2 string
---@param a3 string
---@return boolean
function ILuaContext:MakeGlobalFromChunkedTable(a1, a2, a3) end

---@class (exact) ItemCombineMgr
---@field m_pMaster CPlayer
local ItemCombineMgr = {}
---@param a1 _combine_ex_item_result_zocl
---@return integer
function ItemCombineMgr:UpdateDB_CombineResult(a1) end

---@class (exact) SKILL
---@field m_Type integer
---@field m_Element integer
---@field m_MinDmg integer
---@field m_StdDmg integer
---@field m_MaxDmg integer
---@field m_CritDmg integer
---@field m_MinProb integer
---@field m_MaxProb integer
---@field m_IsCritical integer
---@field m_param _attack_param
---@field m_Len integer
---@field m_CastDelay integer
---@field m_Delay integer
---@field m_bLoad integer
---@field m_Active integer
---@field m_BefTime integer
local SKILL = {}

---@class (exact) UUIDv4
local UUIDv4 = {}
function UUIDv4:rand() end
---@param a1 lightuserdata lua_State
---@return integer
function UUIDv4:str(a1) end

---@class (exact) VoidPtr
local VoidPtr = {}

---@class (exact) _100_per_random_table
---@field m_wCurTable integer
---@field m_wCurPoint integer
local _100_per_random_table = {}
---@return integer
function _100_per_random_table:GetRand() end

---@class (exact) _AIOC_A_MACRODATA
local _AIOC_A_MACRODATA = {}
---@param a1 _AIOC_A_MACRODATA
---@return _AIOC_A_MACRODATA__MACRO_POTIONDATA
function _AIOC_A_MACRODATA:mcr_Potion(a1) end
---@param a1 integer
---@return _AIOC_A_MACRODATA__MACRO_ACTIONDATA
function _AIOC_A_MACRODATA:mcr_Action_get(a1) end
---@param a1 integer
---@return _AIOC_A_MACRODATA__MACRO_CHATDATA
function _AIOC_A_MACRODATA:mcr_Chat_get(a1) end

---@class (exact) _AIOC_A_MACRODATA__MACRO_ACTIONDATA
local _AIOC_A_MACRODATA__MACRO_ACTIONDATA = {}
---@param a1 integer
---@return integer
function _AIOC_A_MACRODATA__MACRO_ACTIONDATA:Action_get(a1) end
---@param a1 integer
---@param a2 integer
function _AIOC_A_MACRODATA__MACRO_ACTIONDATA:Action_set(a1, a2) end

---@class (exact) _AIOC_A_MACRODATA__MACRO_CHATDATA
local _AIOC_A_MACRODATA__MACRO_CHATDATA = {}
---@param a1 integer
---@return string
function _AIOC_A_MACRODATA__MACRO_CHATDATA:Chat_get(a1) end
---@param a1 integer
---@param a2 string
function _AIOC_A_MACRODATA__MACRO_CHATDATA:Chat_set(a1, a2) end

---@class (exact) _AIOC_A_MACRODATA__MACRO_POTIONDATA
local _AIOC_A_MACRODATA__MACRO_POTIONDATA = {}
---@param a1 integer
---@return integer
function _AIOC_A_MACRODATA__MACRO_POTIONDATA:Potion_get(a1) end
---@param a1 integer
---@param a2 integer
function _AIOC_A_MACRODATA__MACRO_POTIONDATA:Potion_set(a1, a2) end
---@param a1 integer
---@return integer
function _AIOC_A_MACRODATA__MACRO_POTIONDATA:PotionValue_get(a1) end
---@param a1 integer
---@param a2 integer
function _AIOC_A_MACRODATA__MACRO_POTIONDATA:PotionValue_set(a1, a2) end

---@class (exact) _ANIMUSKEY
---@field byItemIndex integer
local _ANIMUSKEY = {}

---@class (exact) _ANIMUS_DB_BASE
local _ANIMUS_DB_BASE = {}
---@param a1 integer
---@return _ANIMUS_DB_BASE___LIST
function _ANIMUS_DB_BASE:m_List_get(a1) end

---@class (exact) _ANIMUS_DB_BASE___LIST
---@field Key _ANIMUSKEY
---@field dwExp integer
---@field dwParam integer
---@field dwItemETSerial integer
---@field lnUID integer
---@field byCsMethod integer
---@field dwT integer
---@field dwLendRegdTime integer
local _ANIMUS_DB_BASE___LIST = {}

---@class (exact) _ATTACK_DELAY_CHECKER
---@field dwNextEffTime integer
---@field dwNextGenTime integer
---@field dwLastGnAttackTime integer
---@field dwLastSFAttackTime integer
---@field nFailCount integer
---@field m_nNextAddTime integer
---@field byTemp_EffectCode integer
---@field wTemp_EffectIndex integer
---@field byTemp_EffectMastery integer
local _ATTACK_DELAY_CHECKER = {}
---@param a1 integer
---@return _ATTACK_DELAY_CHECKER___eff_list
function _ATTACK_DELAY_CHECKER:EFF_get(a1) end
---@param a1 integer
---@return _ATTACK_DELAY_CHECKER___mas_list
function _ATTACK_DELAY_CHECKER:MAS_get(a1) end
---@param a1 integer
function _ATTACK_DELAY_CHECKER:SetDelay(a1) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@return boolean
function _ATTACK_DELAY_CHECKER:IsDelay(a1, a2, a3) end

---@class (exact) _ATTACK_DELAY_CHECKER___eff_list
---@field byEffectCode integer
---@field wEffectIndex integer
---@field dwNextTime integer
local _ATTACK_DELAY_CHECKER___eff_list = {}

---@class (exact) _ATTACK_DELAY_CHECKER___mas_list
---@field byEffectCode integer
---@field byMastery integer
---@field dwNextTime integer
local _ATTACK_DELAY_CHECKER___mas_list = {}

---@class (exact) _AVATOR_DATA
---@field dbAvator _AVATOR_DB_BASE
---@field dbLink _LINK_DB_BASE
---@field dbEquip _EQUIP_DB_BASE
---@field dbForce _FORCE_DB_BASE
---@field dbAnimus _ANIMUS_DB_BASE
---@field dbStat _STAT_DB_BASE
---@field dbInven _INVEN_DB_BASE
---@field dbCutting _CUTTING_DB_BASE
---@field dbQuest _QUEST_DB_BASE
---@field dbUnit _UNIT_DB_BASE
---@field dbSfcont _SFCONT_DB_BASE
---@field dbTrade _TRADE_DB_BASE
---@field dbBuddy _BUDDY_DB_BASE
---@field dbTrunk _TRUNK_DB_BASE
---@field dbItemCombineEx _ITEMCOMBINE_DB_BASE
---@field dbMacro _AIOC_A_MACRODATA
---@field dbPostData _POSTDATA_DB_BASE
---@field dbBossCry _CRYMSG_DB_BASE
---@field m_byHSKTime integer
---@field m_byPvpGrade integer
---@field m_wKillPoint integer
---@field m_iPvpPoint integer
---@field m_wDiePoint integer
---@field m_byCristalBattleDBInfo integer
---@field dbPersonalAmineInven _PERSONALAMINE_INVEN_DB_BASE
---@field dbPvpPointLimit _PVPPOINT_LIMIT_DB_BASE
---@field dbPvpOrderView _PVP_ORDER_VIEW_DB_BASE
---@field dbSFDelay _worlddb_sf_delay_info
---@field dbSupplement _SUPPLEMENT_DB_BASE
---@field dbPlayTimeInPcbang _PCBANG_PLAY_TIME
---@field m_nCristalBattleDateUpdate integer
---@field dbPotionNextUseTime _POTION_NEXT_USE_TIME_DB_BASE
---@field dbPcBangFavorItem _PCBANG_FAVOR_ITEM_DB_BASE
---@field dbTimeLimitInfo _TIMELIMITINFO_DB_BASE
local _AVATOR_DATA = {}

---@class (exact) _AVATOR_DB_BASE: _REGED
---@field m_dwHP integer
---@field m_dwFP integer
---@field m_dwSP integer
---@field m_dwDP integer
---@field m_dExp number
---@field m_dLossExp number
---@field m_dPvPPoint number
---@field m_dPvPCashBag number
---@field m_dwPvpRank integer
---@field m_wRankRate integer
---@field m_dwRadarDelayTime integer
---@field m_byBagNum integer
---@field m_byMapCode integer
---@field m_dwClassInitCnt integer
---@field m_byLastClassGrade integer
---@field m_fStartPos_x number
---@field m_fStartPos_y number
---@field m_fStartPos_z number
---@field m_dwTotalPlayMin integer
---@field m_dwStartPlayTime integer
---@field m_szBindMapCode string
---@field m_szBindDummy string
---@field m_dwGuildSerial integer
---@field m_byClassInGuild integer
---@field m_dwGuildExplusDate integer
---@field m_byGuildExplusApprovNum integer
---@field m_byGuildExplusSeniorNum integer
---@field m_dwAccountSerial integer
---@field m_bOverlapVote boolean
---@field m_dwGivebackCount integer
---@field m_dwCashAmount integer
---@field m_dwTakeLastMentalTicket integer
---@field m_dwTakeLastCriTicket integer
---@field m_byMaxLevel integer
---@field m_dPvPPointLeak number
---@field m_dwGuildEntryDelay integer
---@field m_byPlayerInteg integer
local _AVATOR_DB_BASE = {}
---@param a1 integer
---@return integer
function _AVATOR_DB_BASE:m_zClassHistory_get(a1) end
---@param a1 integer
---@param a2 integer
function _AVATOR_DB_BASE:m_zClassHistory_set(a1, a2) end
---@param a1 integer
---@return integer
function _AVATOR_DB_BASE:m_dwPunishment_get(a1) end
---@param a1 integer
---@param a2 integer
function _AVATOR_DB_BASE:m_dwPunishment_set(a1, a2) end
---@param a1 integer
---@return integer
function _AVATOR_DB_BASE:m_dwElectSerial_get(a1) end
---@param a1 integer
---@param a2 integer
function _AVATOR_DB_BASE:m_dwElectSerial_set(a1, a2) end
---@param a1 integer
---@return integer
function _AVATOR_DB_BASE:m_dwRaceBattleRecord_get(a1) end
---@param a1 integer
---@param a2 integer
function _AVATOR_DB_BASE:m_dwRaceBattleRecord_set(a1, a2) end

---@class (exact) _BUDDY_DB_BASE
local _BUDDY_DB_BASE = {}
---@param a1 integer
---@return _BUDDY_DB_BASE___LIST
function _BUDDY_DB_BASE:m_List_get(a1) end

---@class (exact) _BUDDY_DB_BASE___LIST
---@field dwSerial integer
---@field wszName string
local _BUDDY_DB_BASE___LIST = {}

---@class (exact) _CLID
---@field wIndex integer
---@field dwSerial integer
local _CLID = {}

---@class (exact) _COMBINEKEY
---@field byRewardIndex integer
---@field byTableCode integer
---@field wItemIndex integer
local _COMBINEKEY = {}
---@param a1 _COMBINEKEY
function _COMBINEKEY:SetRelease(a1) end
---@param a1 _COMBINEKEY
---@param a2 integer
function _COMBINEKEY:LoadDBKey(a1, a2) end
---@param a1 _COMBINEKEY
---@return integer
function _COMBINEKEY:CovDBKey(a1) end
---@param a1 _COMBINEKEY
---@return boolean
function _COMBINEKEY:IsFilled(a1) end

---@class (exact) _CRYMSG_DB_BASE
local _CRYMSG_DB_BASE = {}
---@param a1 integer
---@return _CRYMSG_DB_BASE___LIST
function _CRYMSG_DB_BASE:m_List_get(a1) end

---@class (exact) _CRYMSG_DB_BASE___LIST
---@field wszCryMsg string
local _CRYMSG_DB_BASE___LIST = {}

---@class (exact) _CUTTING_DB_BASE
---@field m_bOldDataLoad boolean
---@field m_byLeftNum integer
local _CUTTING_DB_BASE = {}
---@param a1 integer
---@return _CUTTING_DB_BASE___LIST
function _CUTTING_DB_BASE:m_List_get(a1) end

---@class (exact) _CUTTING_DB_BASE___LIST
---@field Key _INVENKEY
---@field dwDur integer
local _CUTTING_DB_BASE___LIST = {}

---@class (exact) _ContPotionData
---@field m_dwPotionEffectIndex integer
---@field m_dwStartSec integer
---@field m_wDurCapSec integer
---@field m_dwID integer
local _ContPotionData = {}
---@return boolean
function _ContPotionData:IsLive() end
---@return integer
function _ContPotionData:GetEffectIndex() end

---@class (exact) _DELPOST_DB_BASE
---@field m_bUpdate boolean
---@field m_nMax integer
---@field m_nCum integer
local _DELPOST_DB_BASE = {}
---@param a1 integer
---@return _DELPOST_DB_BASE____list
function _DELPOST_DB_BASE:m_List_get(a1) end

---@class (exact) _DELPOST_DB_BASE____list
---@field dwDelSerial integer
---@field nStorageIndex integer
local _DELPOST_DB_BASE____list = {}

---@class (exact) _EMBELLKEY
---@field bySlotIndex integer
---@field byTableCode integer
---@field wItemIndex integer
local _EMBELLKEY = {}

---@class (exact) _EQUIPKEY
---@field zItemIndex integer
local _EQUIPKEY = {}

---@class (exact) _EQUIP_DB_BASE
local _EQUIP_DB_BASE = {}
---@param a1 integer
---@return _EQUIP_DB_BASE___EMBELLISH_LIST
function _EQUIP_DB_BASE:m_EmbellishList_get(a1) end

---@class (exact) _EQUIP_DB_BASE___EMBELLISH_LIST
---@field Key _EMBELLKEY
---@field wAmount integer
---@field dwItemETSerial integer
---@field lnUID integer
---@field byCsMethod integer
---@field dwT integer
---@field dwLendRegdTime integer
local _EQUIP_DB_BASE___EMBELLISH_LIST = {}

---@class (exact) _Exttrunk_db_load: _STORAGE_LIST
local _Exttrunk_db_load = {}
---@param a1 integer
---@return integer
function _Exttrunk_db_load:m_byItemSlotRace_get(a1) end
---@param a1 integer
---@param a2 integer
function _Exttrunk_db_load:m_byItemSlotRace_set(a1, a2) end
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _Exttrunk_db_load:m_ExtList_get(a1) end

---@class (exact) _FORCEKEY
---@field dwKey integer
local _FORCEKEY = {}

---@class (exact) _FORCE_DB_BASE
local _FORCE_DB_BASE = {}
---@param a1 integer
---@return _FORCE_DB_BASE___LIST
function _FORCE_DB_BASE:m_List_get(a1) end

---@class (exact) _FORCE_DB_BASE___LIST
---@field Key _FORCEKEY
---@field dwItemETSerial integer
---@field lnUID integer
---@field byCsMethod integer
---@field dwT integer
---@field m_dwLendRegdTime integer
local _FORCE_DB_BASE___LIST = {}

---@class (exact) _INVENKEY
---@field bySlotIndex integer
---@field byTableCode integer
---@field wItemIndex integer
local _INVENKEY = {}

---@class (exact) _INVEN_DB_BASE
local _INVEN_DB_BASE = {}
---@param a1 integer
---@return _INVEN_DB_BASE___LIST
function _INVEN_DB_BASE:m_List_get(a1) end

---@class (exact) _INVEN_DB_BASE___LIST
---@field Key _INVENKEY
---@field dwDur integer
---@field dwUpt integer
---@field dwItemETSerial integer
---@field lnUID integer
---@field byCsMethod integer
---@field dwT integer
---@field dwLendRegdTime integer
local _INVEN_DB_BASE___LIST = {}

---@class (exact) _ITEMCOMBINE_DB_BASE
---@field m_bIsResult boolean
---@field m_byItemListNum integer
---@field m_byDlgType integer
---@field m_dwDalant integer
---@field m_dwCheckKey integer
---@field m_bySelectItemCount integer
---@field m_dwResultEffectType integer
---@field m_dwResultEffectMsgCode integer
local _ITEMCOMBINE_DB_BASE = {}
---@param a1 integer
---@return _ITEMCOMBINE_DB_BASE___LIST
function _ITEMCOMBINE_DB_BASE:m_List_get(a1) end
---@param a1 _ITEMCOMBINE_DB_BASE
---@return boolean
function _ITEMCOMBINE_DB_BASE:IsCombineData(a1) end

---@class (exact) _ITEMCOMBINE_DB_BASE___LIST
---@field Key _COMBINEKEY
---@field dwDur integer
---@field dwUpt integer
local _ITEMCOMBINE_DB_BASE___LIST = {}

---@class (exact) _LAYER_SET
---@field m_nSecNum integer
---@field m_pListSectorObj CObjectList
---@field m_pListSectorPlayer CObjectList
---@field m_pListSectorTower CObjectList
---@field m_pMB lightuserdata _MULTI_BLOCK
---@field m_dwStartActiveTime integer
---@field m_dwLastInertTime integer
local _LAYER_SET = {}
---@param a1 integer
---@param a2 integer
---@return lightuserdata _mon_active
function _LAYER_SET:m_MonAct_get(a1, a2) end
---@return boolean
function _LAYER_SET:IsActiveLayer() end

---@class (exact) _LINKKEY
---@field wEffectCode integer
local _LINKKEY = {}

---@class (exact) _LINK_DB_BASE
---@field m_byLinkBoardLock integer
---@field m_dwInven integer
local _LINK_DB_BASE = {}
---@param a1 integer
---@return _LINK_DB_BASE___LIST
function _LINK_DB_BASE:m_LinkList_get(a1) end
---@param a1 integer
---@return integer
function _LINK_DB_BASE:m_dwSkill_get(a1) end
---@param a1 integer
---@param a2 integer
function _LINK_DB_BASE:m_dwSkill_set(a1, a2) end
---@param a1 integer
---@return integer
function _LINK_DB_BASE:m_dwForce_get(a1) end
---@param a1 integer
---@param a2 integer
function _LINK_DB_BASE:m_dwForce_set(a1, a2) end
---@param a1 integer
---@return integer
function _LINK_DB_BASE:m_dwCharacter_get(a1) end
---@param a1 integer
---@param a2 integer
function _LINK_DB_BASE:m_dwCharacter_set(a1, a2) end
---@param a1 integer
---@return integer
function _LINK_DB_BASE:m_dwAnimus_get(a1) end
---@param a1 integer
---@param a2 integer
function _LINK_DB_BASE:m_dwAnimus_set(a1, a2) end
---@param a1 integer
---@return integer
function _LINK_DB_BASE:m_dwInvenBag_get(a1) end
---@param a1 integer
---@param a2 integer
function _LINK_DB_BASE:m_dwInvenBag_set(a1, a2) end

---@class (exact) _LINK_DB_BASE___LIST
---@field Key _LINKKEY
local _LINK_DB_BASE___LIST = {}

---@class (exact) _MASTERY_PARAM
---@field m_byRaceCode integer
---@field m_BaseCum _STAT_DB_BASE
---@field m_mtySuffer integer
---@field m_mtyShield integer
---@field m_mtyStaff integer
---@field m_mtySpecial integer
---@field m_MastUpData _mastery_up_data
---@field m_SkillUpData _skill_lv_up_data
---@field m_bUpdateEquipMast boolean
local _MASTERY_PARAM = {}
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_dwSkillMasteryCum_get(a1) end
---@param a1 integer
---@param a2 integer
function _MASTERY_PARAM:m_dwSkillMasteryCum_set(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_dwForceLvCum_get(a1) end
---@param a1 integer
---@param a2 integer
function _MASTERY_PARAM:m_dwForceLvCum_set(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_mtyWp_get(a1) end
---@param a1 integer
---@param a2 integer
function _MASTERY_PARAM:m_mtyWp_set(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_lvSkill_get(a1) end
---@param a1 integer
---@param a2 integer
function _MASTERY_PARAM:m_lvSkill_set(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_mtySkill_get(a1) end
---@param a1 integer
---@param a2 integer
function _MASTERY_PARAM:m_mtySkill_set(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_mtyForce_get(a1) end
---@param a1 integer
---@param a2 integer
function _MASTERY_PARAM:m_mtyForce_set(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_mtyMakeItem_get(a1) end
---@param a1 integer
---@param a2 integer
function _MASTERY_PARAM:m_mtyMakeItem_set(a1, a2) end
---@param a1 integer
---@param a2 integer
---@return integer
function _MASTERY_PARAM:m_ppdwMasteryCumPtr_get(a1, a2) end
---@param a1 integer
---@param a2 integer
---@return integer
function _MASTERY_PARAM:m_ppbyMasteryPtr_get(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:m_ppbyEquipMasteryPrt_get(a1) end
---@param a1 integer
---@param a2 integer
---@return integer
function _MASTERY_PARAM:GetMasteryPerMast(a1, a2) end
---@param a1 integer
---@return integer
function _MASTERY_PARAM:GetSkillLv(a1) end
---@param a1 integer
---@param a2 integer
---@return integer
function _MASTERY_PARAM:GetCumPerMast(a1, a2) end
---@param a1 integer
---@param a2 integer
---@param a3 integer
function _MASTERY_PARAM:UpdateCumPerMast(a1, a2, a3) end

---@class (exact) _NPCQuestIndexTempData
---@field nQuestNum integer
local _NPCQuestIndexTempData = {}
---@param a1 integer
---@return _NPCQuestIndexTempData___IndexData
function _NPCQuestIndexTempData:IndexData_get(a1) end
function _NPCQuestIndexTempData:Init() end

---@class (exact) _NPCQuestIndexTempData___IndexData
---@field dwQuestHappenIndex integer
---@field dwQuestIndex integer
local _NPCQuestIndexTempData___IndexData = {}

---@class (exact) _PCBANG_FAVOR_ITEM_DB_BASE
local _PCBANG_FAVOR_ITEM_DB_BASE = {}
---@param a1 integer
---@return integer
function _PCBANG_FAVOR_ITEM_DB_BASE:lnUID_get(a1) end
---@param a1 integer
---@param a2 integer
function _PCBANG_FAVOR_ITEM_DB_BASE:lnUID_set(a1, a2) end

---@class (exact) _PCBANG_PLAY_TIME
---@field dwAccSerial integer
---@field dwLastConnTime integer
---@field dwContPlayTime integer
---@field bForcedClose boolean
---@field byReceiveCoupon integer
---@field byEnsureTime integer
local _PCBANG_PLAY_TIME = {}

---@class (exact) _PERSONALAMINE_INVEN_DB_BASE
---@field bUsable boolean
local _PERSONALAMINE_INVEN_DB_BASE = {}
---@param a1 integer
---@return _PERSONALAMINE_INVEN_DB_BASE___LIST
function _PERSONALAMINE_INVEN_DB_BASE:m_List_get(a1) end

---@class (exact) _PERSONALAMINE_INVEN_DB_BASE___LIST
---@field Key _INVENKEY
---@field dwDur integer
local _PERSONALAMINE_INVEN_DB_BASE___LIST = {}

---@class (exact) _POSTDATA_DB_BASE
---@field dbPost _POSTSTORAGE_DB_BASE
---@field dbRetPost _RETURNPOST_DB_BASE
---@field dbDelPost _DELPOST_DB_BASE
local _POSTDATA_DB_BASE = {}

---@class (exact) _POSTSTORAGE_DB_BASE
---@field m_bUpdate boolean
local _POSTSTORAGE_DB_BASE = {}
---@param a1 integer
---@return _POSTSTORAGE_DB_BASE____list
function _POSTSTORAGE_DB_BASE:m_PostList_get(a1) end

---@class (exact) _POSTSTORAGE_DB_BASE____list
---@field dwPSSerial integer
---@field nNumber integer
---@field byState integer
---@field nKey integer
---@field dwDur integer
---@field dwUpt integer
---@field dwGold integer
---@field bUpdate boolean
---@field bRetProc boolean
---@field bNew boolean
---@field bUpdateIndex boolean
---@field wszSendName string
---@field wszRecvName string
---@field wszTitle string
---@field wszContent string
---@field lnUID integer
local _POSTSTORAGE_DB_BASE____list = {}

---@class (exact) _POTION_NEXT_USE_TIME_DB_BASE
local _POTION_NEXT_USE_TIME_DB_BASE = {}
---@param a1 integer
---@return integer
function _POTION_NEXT_USE_TIME_DB_BASE:dwPotionNextUseTime_get(a1) end
---@param a1 integer
---@param a2 integer
function _POTION_NEXT_USE_TIME_DB_BASE:dwPotionNextUseTime_set(a1, a2) end

---@class (exact) _PVPPOINT_LIMIT_DB_BASE
---@field tUpdatedate integer
---@field bUseUp boolean
---@field byLimitRate integer
---@field dOriginalPoint number
---@field dLimitPoint number
---@field dUsePoint number
local _PVPPOINT_LIMIT_DB_BASE = {}

---@class (exact) _PVP_ORDER_VIEW_DB_BASE
---@field tUpdatedate integer
---@field nDeath integer
---@field nKill integer
---@field dTodayStacked number
---@field dPvpPoint number
---@field dPvpTempCash number
---@field dPvpCash number
---@field byContHaveCash integer
---@field byContLoseCash integer
---@field bRaceWarRecvr boolean
local _PVP_ORDER_VIEW_DB_BASE = {}
---@param a1 integer
---@return integer
function _PVP_ORDER_VIEW_DB_BASE:dwKillerSerial_get(a1) end
---@param a1 integer
---@param a2 integer
function _PVP_ORDER_VIEW_DB_BASE:dwKillerSerial_set(a1, a2) end

---@class (exact) _QUEST_CASH
---@field dwAvatorSerial integer
---@field byQuestType integer
---@field nPvpPoint integer
---@field wKillPoint integer
---@field wDiePoint integer
---@field byCristalBattleDBInfo integer
---@field byHSKTime integer
local _QUEST_CASH = {}

---@class (exact) _QUEST_CASH_OTHER
---@field dwAvatorSerial integer
---@field byStoneMapMoveInfo integer
local _QUEST_CASH_OTHER = {}

---@class (exact) _QUEST_DB_BASE
---@field dwListCnt integer
local _QUEST_DB_BASE = {}
---@param a1 integer
---@return _QUEST_DB_BASE___LIST
function _QUEST_DB_BASE:m_List_get(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function _QUEST_DB_BASE:GetActiveQuestList(a1) end
---@param a1 integer
---@return _QUEST_DB_BASE___NPC_QUEST_HISTORY
function _QUEST_DB_BASE:m_History_get(a1) end
---@param a1 integer
---@return _QUEST_DB_BASE___START_NPC_QUEST_HISTORY
function _QUEST_DB_BASE:m_StartHistory_get(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function _QUEST_DB_BASE:GetStartHistoryList(a1) end

---@class (exact) _QUEST_DB_BASE___LIST
---@field byQuestType integer
---@field wIndex integer
---@field dwPassSec integer
local _QUEST_DB_BASE___LIST = {}
---@param a1 integer
---@return integer
function _QUEST_DB_BASE___LIST:wNum_get(a1) end
---@param a1 integer
---@param a2 integer
function _QUEST_DB_BASE___LIST:wNum_set(a1, a2) end
---@param a1 lightuserdata lua_State
---@return integer
function _QUEST_DB_BASE___LIST:GetNumList(a1) end

---@class (exact) _QUEST_DB_BASE___NPC_QUEST_HISTORY
---@field szQuestCode string
---@field nEventNo integer
---@field byLevel integer
---@field dwEventEndTime integer
local _QUEST_DB_BASE___NPC_QUEST_HISTORY = {}

---@class (exact) _QUEST_DB_BASE___START_NPC_QUEST_HISTORY
---@field szQuestCode string
---@field pQuestFld _Quest_fld
---@field byLevel integer
---@field nEndTime integer
local _QUEST_DB_BASE___START_NPC_QUEST_HISTORY = {}
---@param a1 lightuserdata lua_State
---@return integer
function _QUEST_DB_BASE___START_NPC_QUEST_HISTORY:tmStartTime(a1) end

---@class (exact) _REGED: _REGED_AVATOR_DB
local _REGED = {}
---@param a1 integer
---@return integer
function _REGED:m_dwFixEquipLv_get(a1) end
---@param a1 integer
---@param a2 integer
function _REGED:m_dwFixEquipLv_set(a1, a2) end
---@param a1 integer
---@return integer
function _REGED:m_dwItemETSerial_get(a1) end
---@param a1 integer
---@param a2 integer
function _REGED:m_dwItemETSerial_set(a1, a2) end
---@param a1 integer
---@return integer
function _REGED:m_lnUID_get(a1) end
---@param a1 integer
---@param a2 integer
function _REGED:m_lnUID_set(a1, a2) end
---@param a1 integer
---@return integer
function _REGED:m_byCsMethod_get(a1) end
---@param a1 integer
---@param a2 integer
function _REGED:m_byCsMethod_set(a1, a2) end
---@param a1 integer
---@return integer
function _REGED:m_dwET_get(a1) end
---@param a1 integer
---@param a2 integer
function _REGED:m_dwET_set(a1, a2) end
---@param a1 integer
---@return integer
function _REGED:m_dwLendRegdTime_get(a1) end
---@param a1 integer
---@param a2 integer
function _REGED:m_dwLendRegdTime_set(a1, a2) end

---@class (exact) _REGED_AVATOR_DB
---@field m_wszAvatorName string
---@field m_dwRecordNum integer
---@field m_byRaceSexCode integer
---@field m_bySlotIndex integer
---@field m_szClassCode string
---@field m_byLevel integer
---@field m_dwDalant integer
---@field m_dwGold integer
---@field m_dwBaseShape integer
---@field m_dwLastConnTime integer
local _REGED_AVATOR_DB = {}
---@param a1 integer
---@return _EQUIPKEY
function _REGED_AVATOR_DB:m_EquipKey_get(a1) end
---@param a1 integer
---@return integer
function _REGED_AVATOR_DB:m_byEquipLv_get(a1) end
---@param a1 integer
---@param a2 integer
function _REGED_AVATOR_DB:m_byEquipLv_set(a1, a2) end

---@class (exact) _RETURNPOST_DB_BASE
---@field m_bUpdate boolean
---@field m_nMax integer
---@field m_nCum integer
local _RETURNPOST_DB_BASE = {}
---@param a1 integer
---@return integer
function _RETURNPOST_DB_BASE:m_RetSerials_get(a1) end
---@param a1 integer
---@param a2 integer
function _RETURNPOST_DB_BASE:m_RetSerials_set(a1, a2) end

---@class (exact) _SFCONT_DB_BASE
local _SFCONT_DB_BASE = {}
---@param a1 integer
---@param a2 integer
---@return _SFCONT_DB_BASE___LIST
function _SFCONT_DB_BASE:m_List_get(a1, a2) end

---@class (exact) _SFCONT_DB_BASE___LIST
---@field dwKey integer
local _SFCONT_DB_BASE___LIST = {}

---@class (exact) _STAT_DB_BASE
---@field m_dwDefenceCnt integer
---@field m_dwShieldCnt integer
---@field m_dwSpecialCum integer
local _STAT_DB_BASE = {}
---@param a1 integer
---@return integer
function _STAT_DB_BASE:m_dwDamWpCnt_get(a1) end
---@param a1 integer
---@param a2 integer
function _STAT_DB_BASE:m_dwDamWpCnt_set(a1, a2) end
---@param a1 integer
---@return integer
function _STAT_DB_BASE:m_dwSkillCum_get(a1) end
---@param a1 integer
---@param a2 integer
function _STAT_DB_BASE:m_dwSkillCum_set(a1, a2) end
---@param a1 integer
---@return integer
function _STAT_DB_BASE:m_dwForceCum_get(a1) end
---@param a1 integer
---@param a2 integer
function _STAT_DB_BASE:m_dwForceCum_set(a1, a2) end
---@param a1 integer
---@return integer
function _STAT_DB_BASE:m_dwMakeCum_get(a1) end
---@param a1 integer
---@param a2 integer
function _STAT_DB_BASE:m_dwMakeCum_set(a1, a2) end

---@class (exact) _STORAGE_LIST
---@field m_nListNum integer
---@field m_nUsedNum integer
---@field m_nListCode integer
local _STORAGE_LIST = {}
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _STORAGE_LIST:m_pStorageList_get(a1) end
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _STORAGE_LIST:GetPtrFromSerial(a1) end
---@return integer
function _STORAGE_LIST:GetNumEmptyCon() end
---@return integer
function _STORAGE_LIST:GetIndexEmptyCon() end
---@param a1 lightuserdata lua_State
---@return integer
function _STORAGE_LIST:GetUseList(a1) end

---@class (exact) _STORAGE_LIST___db_con: _STORAGE_LIST___storage_con
---@field m_pInList _STORAGE_LIST
---@field m_byStorageIndex integer
local _STORAGE_LIST___db_con = {}

---@class (exact) _STORAGE_LIST___storage_con
---@field m_byLoad integer
---@field m_byTableCode integer
---@field m_byClientIndex integer
---@field m_wItemIndex integer
---@field m_dwDur integer
---@field m_dwLv integer
---@field m_wSerial integer
---@field m_bLock boolean
---@field m_dwETSerialNumber integer
---@field m_lnUID integer
---@field m_byCsMethod integer
---@field m_dwT integer
---@field m_dwLendRegdTime integer
local _STORAGE_LIST___storage_con = {}

---@class (exact) _STORAGE_POS
---@field byStorageCode integer
local _STORAGE_POS = {}

---@class (exact) _STORAGE_POS_INDIV: _STORAGE_POS
---@field wItemSerial integer
---@field byNum integer
local _STORAGE_POS_INDIV = {}

---@class (exact) _SUPPLEMENT_DB_BASE
---@field dPvpPointLeak number
---@field bLastAttBuff boolean
---@field dwBufPotionEndTime integer
---@field dwRaceBuffClear integer
---@field byVoted integer
---@field VoteEnable integer
---@field wScanerCnt integer
---@field dwScanerGetDate integer
---@field dwAccumPlayTime integer
---@field dwLastResetDate integer
---@field dwGuildEntryDelay integer
---@field byPlayerInteg integer
local _SUPPLEMENT_DB_BASE = {}
---@param a1 integer
---@return integer
function _SUPPLEMENT_DB_BASE:dwActionPoint_get(a1) end
---@param a1 integer
---@param a2 integer
function _SUPPLEMENT_DB_BASE:dwActionPoint_set(a1, a2) end

---@class (exact) _Select_ItemList_buff
---@field bySelectNum integer
local _Select_ItemList_buff = {}
---@param a1 integer
---@return integer
function _Select_ItemList_buff:bySelectIndexList_get(a1) end
---@param a1 integer
---@param a2 integer
function _Select_ItemList_buff:bySelectIndexList_set(a1, a2) end

---@class (exact) _TIMELIMITINFO_DB_BASE
---@field dwAccSerial integer
---@field dwFatigue integer
---@field byTLStatus integer
---@field dwLastLogoutTime integer
local _TIMELIMITINFO_DB_BASE = {}

---@class (exact) _TOWER_PARAM
---@field m_nCount integer
local _TOWER_PARAM = {}
---@param a1 integer
---@return _TOWER_PARAM___list
function _TOWER_PARAM:m_List_get(a1) end

---@class (exact) _TOWER_PARAM___list
---@field m_pTowerItem _STORAGE_LIST___db_con
---@field m_wItemSerial integer
---@field m_pTowerObj CGuardTower
local _TOWER_PARAM___list = {}

---@class (exact) _TRADE_DB_BASE
local _TRADE_DB_BASE = {}
---@param a1 integer
---@return _TRADE_DB_BASE___LIST
function _TRADE_DB_BASE:m_List_get(a1) end

---@class (exact) _TRADE_DB_BASE___LIST
---@field byState integer
---@field dwRegistSerial integer
---@field byInvenIndex integer
---@field dwPrice integer
---@field tStartTime integer
---@field bySellTurm integer
---@field dwBuyerSerial integer
---@field dwTax integer
---@field tResultTime integer
---@field wszBuyerName string
---@field szBuyerAccount string
local _TRADE_DB_BASE___LIST = {}

---@class (exact) _TRAP_PARAM
---@field m_nCount integer
local _TRAP_PARAM = {}
---@param a1 integer
---@return _TRAP_PARAM___param
function _TRAP_PARAM:m_Item_get(a1) end

---@class (exact) _TRAP_PARAM___param
---@field pItem CTrap
---@field dwSerial integer
local _TRAP_PARAM___param = {}

---@class (exact) _TRUNK_DB_BASE
---@field wszPasswd string
---@field dDalant number
---@field dGold number
---@field byHintIndex integer
---@field wszHintAnswer string
---@field bySlotNum integer
---@field byExtSlotNum integer
---@field byTrunkInteg integer
local _TRUNK_DB_BASE = {}
---@param a1 integer
---@return _TRUNK_DB_BASE___LIST
function _TRUNK_DB_BASE:m_List_get(a1) end
---@param a1 integer
---@return _TRUNK_DB_BASE___LIST
function _TRUNK_DB_BASE:m_ExtList_get(a1) end

---@class (exact) _TRUNK_DB_BASE___LIST
---@field Key _INVENKEY
---@field dwDur integer
---@field dwUpt integer
---@field byRace integer
---@field dwItemETSerial integer
---@field lnUID integer
---@field byCsMethod integer
---@field dwT integer
---@field dwLendRegdTime integer
local _TRUNK_DB_BASE___LIST = {}

---@class (exact) _UNIT_DB_BASE
local _UNIT_DB_BASE = {}
---@param a1 integer
---@return _UNIT_DB_BASE___LIST
function _UNIT_DB_BASE:m_List_get(a1) end

---@class (exact) _UNIT_DB_BASE___LIST
---@field bySlotIndex integer
---@field byFrame integer
---@field dwGauge integer
---@field nPullingFee integer
---@field dwCutTime integer
---@field wBooster integer
local _UNIT_DB_BASE___LIST = {}
---@param a1 integer
---@return integer
function _UNIT_DB_BASE___LIST:byPart_get(a1) end
---@param a1 integer
---@param a2 integer
function _UNIT_DB_BASE___LIST:byPart_set(a1, a2) end
---@param a1 integer
---@return integer
function _UNIT_DB_BASE___LIST:dwBullet_get(a1) end
---@param a1 integer
---@param a2 integer
function _UNIT_DB_BASE___LIST:dwBullet_set(a1, a2) end
---@param a1 integer
---@return integer
function _UNIT_DB_BASE___LIST:dwSpare_get(a1) end
---@param a1 integer
---@param a2 integer
function _UNIT_DB_BASE___LIST:dwSpare_set(a1, a2) end

---@class (exact) _WEAPON_PARAM
---@field pFixWp _STORAGE_LIST___db_con
---@field pFixUnit _UNIT_DB_BASE___LIST
---@field nGaMaxAF integer
---@field nGaMinAF integer
---@field byGaMinSel integer
---@field byGaMaxSel integer
---@field nMaMaxAF integer
---@field nMaMinAF integer
---@field byMaMinSel integer
---@field byMaMaxSel integer
---@field byAttTolType integer
---@field byWpClass integer
---@field byWpType integer
---@field wGaAttRange integer
---@field wMaAttRange integer
---@field nActiveType integer
---@field strActiveCode_key string
---@field nActiveEffLvl integer
---@field nActiveProb integer
---@field strEffBulletType string
local _WEAPON_PARAM = {}

---@class (exact) __holy_keeper_data
---@field pCreateMap CMapData
---@field CreateDummy _dummy_position
---@field ActiveDummy _dummy_position
---@field CenterDummy _dummy_position
---@field pRec _monster_fld
local __holy_keeper_data = {}

---@class (exact) __holy_stone_data
---@field pCreateMap CMapData
---@field CreateDummy _dummy_position
---@field pRec _monster_fld
---@field nRace integer
local __holy_stone_data = {}

---@class (exact) _action_node
---@field m_nActType integer
---@field m_strActSub string
---@field m_strActSub2 string
---@field m_strActArea string
---@field m_nReqAct integer
---@field m_nSetCntPro_100 integer
---@field m_strLinkQuestItem string
---@field m_nOrder integer
local _action_node = {}

---@class (exact) _animus_create_setdata: _character_create_setdata
---@field nHP integer
---@field nFP integer
---@field dwExp integer
---@field pMaster CPlayer
---@field nMaxAttackPnt integer
local _animus_create_setdata = {}

---@class (exact) _animus_db_load: _STORAGE_LIST
local _animus_db_load = {}
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _animus_db_load:m_List_get(a1) end

---@class (exact) _attack_param
---@field pDst CCharacter
---@field nPart integer
---@field nTol integer
---@field nClass integer
---@field nMinAF integer
---@field nMaxAF integer
---@field nMinSel integer
---@field nMaxSel integer
---@field nExtentRange integer
---@field nShotNum integer
---@field nAddAttPnt integer
---@field nWpType integer
---@field byEffectCode integer
---@field pFld _base_fld
---@field nLevel integer
---@field nMastery integer
---@field bPassCount boolean
---@field nAttactType integer
---@field bMatchless boolean
---@field nMaxAttackPnt integer
---@field bBackAttack boolean
---@field nMinAFPlus integer
---@field nMaxAFPlus integer
---@field nEffShotNum integer
local _attack_param = {}
---@param a1 _attack_param
---@return number
function _attack_param:fArea_x(a1) end
---@param a1 _attack_param
---@return number
function _attack_param:fArea_y(a1) end
---@param a1 _attack_param
---@return number
function _attack_param:fArea_z(a1) end

---@class (exact) _bag_db_load: _STORAGE_LIST
local _bag_db_load = {}
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _bag_db_load:m_List_get(a1) end

---@class (exact) _be_damaged_char
---@field m_pChar CCharacter
---@field m_nDamage integer
---@field m_bActiveSucc boolean
---@field m_nActiveDamage integer
local _be_damaged_char = {}

---@class (exact) _be_damaged_player
---@field m_pChar CCharacter
---@field m_dwDamCharSerial integer
---@field m_nDamage integer
local _be_damaged_player = {}

---@class (exact) _buy_offer
---@field byGoodIndex integer
---@field byGoodAmount integer
---@field byStorageCode integer
---@field Item _STORAGE_LIST___db_con
---@field wSerial integer
local _buy_offer = {}

---@class (exact) _character_create_setdata: _object_create_setdata
local _character_create_setdata = {}

---@class (exact) _character_db_load
---@field m_wszCharID string
---@field m_dwSerial integer
---@field m_byRaceSexCode integer
---@field m_dwHP integer
---@field m_dwFP integer
---@field m_dwSP integer
---@field m_dwDP integer
---@field m_dExp number
---@field m_dLossExp number
---@field m_dwRank integer
---@field m_wRankRate integer
---@field m_dPvPPoint number
---@field m_dPvPCashBag number
---@field m_byLevel integer
---@field m_dwDalant integer
---@field m_dwGold integer
---@field m_sStartMapCode integer
---@field m_byDftPart_Face integer
---@field m_byUseBagNum integer
---@field m_byMaxLevel integer
local _character_db_load = {}
---@param a1 integer
---@return number
function _character_db_load:m_fStartPos_get(a1) end
---@param a1 integer
---@param a2 number
function _character_db_load:m_fStartPos_set(a1, a2) end
---@param a1 integer
---@return integer
function _character_db_load:m_byDftPart_get(a1) end
---@param a1 integer
---@param a2 integer
function _character_db_load:m_byDftPart_set(a1, a2) end

---@class (exact) _combine_ex_item_accept_request_clzo
---@field byDlgType integer
---@field dwCheckKey integer
---@field SelectItemBuff lightuserdata _combine_ex_item_accept_request_clzo___Select_ItemList_buff
local _combine_ex_item_accept_request_clzo = {}

---@class (exact) _combine_ex_item_accept_result_zocl
---@field byErrCode integer
local _combine_ex_item_accept_result_zocl = {}

---@class (exact) _combine_ex_item_request_clzo
---@field wManualIndex integer
---@field byCombineSlotNum integer
---@field nUseNpcLink integer
---@field clientTimeSerial integer
local _combine_ex_item_request_clzo = {}
---@param a1 integer
---@return _combine_ex_item_request_clzo___list
function _combine_ex_item_request_clzo:iCombineSlot_get(a1) end

---@class (exact) _combine_ex_item_request_clzo___list
---@field byStorageCode integer
---@field wItemSerial integer
---@field byAmount integer
local _combine_ex_item_request_clzo___list = {}

---@class (exact) _combine_ex_item_result_zocl
---@field byErrCode integer
---@field byDlgType integer
---@field dwDalant integer
---@field dwCheckKey integer
---@field bySelectItemCount integer
---@field ItemBuff _combine_ex_item_result_zocl___Result_ItemList_Buff
---@field dwResultEffectType integer
---@field dwResultEffectMsgCode integer
local _combine_ex_item_result_zocl = {}

---@class (exact) _combine_ex_item_result_zocl___Result_ItemList_Buff
---@field byItemListNum integer
local _combine_ex_item_result_zocl___Result_ItemList_Buff = {}
---@param a1 integer
---@return _combine_ex_item_result_zocl____item
function _combine_ex_item_result_zocl___Result_ItemList_Buff:RewardItemList_get(a1) end

---@class (exact) _combine_ex_item_result_zocl____item
---@field Key _COMBINEKEY
---@field dwDur integer
---@field dwUpt integer
local _combine_ex_item_result_zocl____item = {}

---@class (exact) _consume_item_list
---@field m_itmNeedItemCode string
---@field m_nNeedItemCount integer
local _consume_item_list = {}

---@class (exact) _cont_param_list
---@field m_nContParamCode integer
---@field m_nContParamIndex integer
local _cont_param_list = {}
---@param a1 integer
---@return number
function _cont_param_list:m_fContValue_get(a1) end
---@param a1 integer
---@param a2 number
function _cont_param_list:m_fContValue_set(a1, a2) end

---@class (exact) _dummy_position
---@field m_szCode string
---@field m_wLineIndex integer
---@field m_bPosAble boolean
---@field m_wActiveMon integer
local _dummy_position = {}
---@param a1 integer
---@return integer
function _dummy_position:m_zLocalMin_get(a1) end
---@param a1 integer
---@param a2 integer
function _dummy_position:m_zLocalMin_set(a1, a2) end
---@param a1 integer
---@return integer
function _dummy_position:m_zLocalMax_get(a1) end
---@param a1 integer
---@param a2 integer
function _dummy_position:m_zLocalMax_set(a1, a2) end
---@param a1 integer
---@return number
function _dummy_position:m_fMin_get(a1) end
---@param a1 integer
---@param a2 number
function _dummy_position:m_fMin_set(a1, a2) end
---@param a1 integer
---@return number
function _dummy_position:m_fMax_get(a1) end
---@param a1 integer
---@param a2 number
function _dummy_position:m_fMax_set(a1, a2) end
---@param a1 integer
---@return number
function _dummy_position:m_fRT_get(a1) end
---@param a1 integer
---@param a2 number
function _dummy_position:m_fRT_set(a1, a2) end
---@param a1 integer
---@return number
function _dummy_position:m_fLB_get(a1) end
---@param a1 integer
---@param a2 number
function _dummy_position:m_fLB_set(a1, a2) end
---@param a1 integer
---@return number
function _dummy_position:m_fCenterPos_get(a1) end
---@param a1 integer
---@param a2 number
function _dummy_position:m_fCenterPos_set(a1, a2) end
---@param a1 integer
---@return number
function _dummy_position:m_fDirection_get(a1) end
---@param a1 integer
---@param a2 number
function _dummy_position:m_fDirection_set(a1, a2) end

---@class (exact) _effect_parameter
---@field m_pDataParam _effect_parameter____param_data
---@field m_bLock boolean
local _effect_parameter = {}
---@param a1 integer
---@return number
function _effect_parameter:GetEff_Rate(a1) end
---@param a1 integer
---@return number
function _effect_parameter:GetEff_Plus(a1) end
---@param a1 integer
---@return boolean
function _effect_parameter:GetEff_State(a1) end
---@param a1 integer
---@return number
function _effect_parameter:GetEff_Have(a1) end
---@param a1 integer
---@param a2 number
---@param a3 boolean
---@return boolean
function _effect_parameter:SetEff_Rate(a1, a2, a3) end
---@param a1 integer
---@param a2 number
---@param a3 boolean
---@return boolean
function _effect_parameter:SetEff_Plus(a1, a2, a3) end
---@param a1 integer
---@param a2 boolean
---@return boolean
function _effect_parameter:SetEff_State(a1, a2) end

---@class (exact) _effect_parameter____param_data
local _effect_parameter____param_data = {}
---@param a1 integer
---@return number
function _effect_parameter____param_data:m_fEff_Rate_get(a1) end
---@param a1 integer
---@param a2 number
function _effect_parameter____param_data:m_fEff_Rate_set(a1, a2) end
---@param a1 integer
---@return number
function _effect_parameter____param_data:m_fEff_Plus_get(a1) end
---@param a1 integer
---@param a2 number
function _effect_parameter____param_data:m_fEff_Plus_set(a1, a2) end
---@param a1 integer
---@return integer
function _effect_parameter____param_data:m_bEff_State_get(a1) end
---@param a1 integer
---@param a2 integer
function _effect_parameter____param_data:m_bEff_State_set(a1, a2) end
---@param a1 integer
---@return number
function _effect_parameter____param_data:m_fEff_Have_get(a1) end
---@param a1 integer
---@param a2 number
function _effect_parameter____param_data:m_fEff_Have_set(a1, a2) end

---@class (exact) _embellish_db_load: _STORAGE_LIST
local _embellish_db_load = {}
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _embellish_db_load:m_List_get(a1) end

---@class (exact) _equip_db_load: _STORAGE_LIST
local _equip_db_load = {}
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _equip_db_load:m_List_get(a1) end

---@class (exact) _force_db_load: _STORAGE_LIST
local _force_db_load = {}
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _force_db_load:m_List_get(a1) end

---@class (exact) _good_storage_info
---@field byItemTableCode integer
---@field wItemIndex integer
---@field bExist integer
---@field byMoneyUnit integer
---@field nStdPrice integer
---@field nStdPoint integer
---@field nGoldPoint integer
---@field nKillPoint integer
---@field nResPoint integer
---@field dwDurPoint integer
---@field dwUpCode integer
---@field byType integer
---@field dwLimitIndex integer
local _good_storage_info = {}

---@class (exact) _guild_applier_info
---@field pPlayer CPlayer
---@field dwApplyTime integer
local _guild_applier_info = {}

---@class (exact) _guild_master_info
---@field dwSerial integer
---@field byPrevGrade integer
---@field pMember _guild_member_info
local _guild_master_info = {}

---@class (exact) _guild_member_info
---@field dwSerial integer
---@field wszName string
---@field byClassInGuild integer
---@field byLv integer
---@field dwPvpPoint integer
---@field byRank integer
---@field byGrade integer
---@field pPlayer CPlayer
---@field bVote boolean
local _guild_member_info = {}

---@class (exact) _happen_event_condition_node
---@field m_nCondType integer
---@field m_nCondSubType integer
---@field m_sCondVal string
local _happen_event_condition_node = {}

---@class (exact) _happen_event_cont
---@field m_pEvent _happen_event_node
---@field m_QtHpType enum QUEST_HAPPEN
---@field m_nIndexInType integer
---@field m_nRaceCode integer
local _happen_event_cont = {}

---@class (exact) _happen_event_node
---@field m_nUse integer
---@field m_nQuestRepeat integer
---@field m_nQuestType integer
---@field m_nSelectQuestManual integer
---@field m_nAcepProNum integer
---@field m_nAcepProDen integer
local _happen_event_node = {}
---@param a1 integer
---@return _happen_event_condition_node
function _happen_event_node:m_CondNode_get(a1) end
---@param a1 integer
---@return string
function _happen_event_node:m_strLinkQuest_get(a1) end
---@param a1 integer
---@param a2 string
function _happen_event_node:m_strLinkQuest_set(a1, a2) end

---@class (exact) _io_money_data
---@field wszIOerName string
---@field dwIOerSerial integer
---@field dIODalant number
---@field dIOGold number
---@field dLeftDalant number
---@field dLeftGold number
local _io_money_data = {}
---@param a1 integer
---@return integer
function _io_money_data:byDate_get(a1) end
---@param a1 integer
---@param a2 integer
function _io_money_data:byDate_set(a1, a2) end

---@class (exact) _keeper_create_setdata: _character_create_setdata
---@field nMasterRace integer
---@field pPosCreate _dummy_position
---@field pPosActive _dummy_position
---@field pPosCenter _dummy_position
local _keeper_create_setdata = {}

---@class (exact) _limit_item_info
---@field bLoad boolean
---@field dwStorageIndex integer
---@field nLimitNum integer
---@field Key _INVENKEY
local _limit_item_info = {}

---@class (exact) _mastery_lim_data
---@field m_nBnsSMastery integer
---@field m_nBnsDefMastery integer
---@field m_nBnsPryMastery integer
local _mastery_lim_data = {}
---@param a1 integer
---@return integer
function _mastery_lim_data:m_nBnsMMastery_get(a1) end
---@param a1 integer
---@param a2 integer
function _mastery_lim_data:m_nBnsMMastery_set(a1, a2) end
---@param a1 integer
---@return integer
function _mastery_lim_data:m_nBnsMakeMastery_get(a1) end
---@param a1 integer
---@param a2 integer
function _mastery_lim_data:m_nBnsMakeMastery_set(a1, a2) end
---@param a1 integer
---@return integer
function _mastery_lim_data:m_nBnsSkillMastery_get(a1) end
---@param a1 integer
---@param a2 integer
function _mastery_lim_data:m_nBnsSkillMastery_set(a1, a2) end
---@param a1 integer
---@return integer
function _mastery_lim_data:m_nBnsForceMastery_get(a1) end
---@param a1 integer
---@param a2 integer
function _mastery_lim_data:m_nBnsForceMastery_set(a1, a2) end

---@class (exact) _mastery_up_data
---@field bUpdate boolean
---@field byCode integer
---@field byIndex integer
---@field byMastery integer
local _mastery_up_data = {}

---@class (exact) _monster_create_setdata: _character_create_setdata
---@field pActiveRec lightuserdata _mon_active
---@field pDumPosition _dummy_position
---@field bDungeon boolean
---@field bRobExp boolean
---@field bRewardExp boolean
---@field pParent CMonster
local _monster_create_setdata = {}

---@class (exact) _nuclear_create_setdata: _character_create_setdata
---@field pMaster CPlayer
---@field nMasterSirial integer
---@field m_dwWarnTime integer
---@field m_dwAttInformTime integer
---@field m_dwAttStartTime integer
local _nuclear_create_setdata = {}

---@class (exact) _object_create_setdata
---@field m_pRecordSet _base_fld
---@field m_pMap CMapData
---@field m_nLayerIndex integer
---@field m_fStartPos_x number
---@field m_fStartPos_y number
---@field m_fStartPos_z number
local _object_create_setdata = {}

---@class (exact) _object_id
---@field m_byKind integer
---@field m_byID integer
---@field m_wIndex integer
local _object_id = {}

---@class (exact) _object_list_point
---@field m_pItem CGameObject
---@field m_pNext _object_list_point
---@field m_pPrev _object_list_point
local _object_list_point = {}

---@class (exact) _param_cash
---@field in_dwAccountSerial integer
---@field in_dwAvatorSerial integer
---@field in_wSockIndex integer
---@field in_bAdjustDiscount boolean
---@field in_bOneN_One boolean
---@field in_bSetDiscount boolean
---@field in_bLimited_Sale boolean
local _param_cash = {}

---@class (exact) _param_cash_update: _param_cash
---@field in_szAcc string
---@field in_szJpnUSN string
---@field in_szSvrName string
---@field in_szAvatorName string
---@field in_nCashAmount integer
---@field in_nNum10 integer
---@field in_bySetKind integer
---@field in_nCouponCnt integer
---@field out_nCashAmount integer
---@field in_dwIP integer
---@field szLogTableName string
---@field out_bReturn integer
local _param_cash_update = {}
---@param a1 integer
---@return _STORAGE_POS_INDIV
function _param_cash_update:in_CouponItem_get(a1) end
---@param a1 integer
---@return integer
function _param_cash_update:dwBillingID_get(a1) end
---@param a1 integer
---@param a2 integer
function _param_cash_update:dwBillingID_set(a1, a2) end
---@param a1 integer
---@return _param_cash_update____item
function _param_cash_update:in_item_get(a1) end
---@param a1 lightuserdata lua_State
---@return integer
function _param_cash_update:GetItemList(a1) end

---@class (exact) _param_cash_update____item
---@field byRet integer
---@field in_strItemCode string
---@field in_byOverlapNum integer
---@field in_byTblCode integer
---@field in_wItemIdx integer
---@field in_nDiscount integer
---@field in_nPrice integer
---@field in_nLendType integer
---@field in_dwLendTime integer
---@field in_nEventType integer
---@field in_nHostEventType integer
---@field in_bIsApplyCoupon boolean
---@field in_lnUID integer
---@field out_cState integer
---@field out_nCashAmount integer
---@field out_nStdPrice integer
---@field out_nBuyPrice integer
---@field out_wItemSerial integer
---@field out_nState integer
---@field out_TransactionId64 integer
---@field out_dwT integer
local _param_cash_update____item = {}

---@class (exact) _personal_amine_inven_db_load: _STORAGE_LIST
local _personal_amine_inven_db_load = {}
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _personal_amine_inven_db_load:m_List_get(a1) end

---@class (exact) _portal_dummy
---@field m_pPortalRec _portal_fld
---@field m_pDumPos _dummy_position
local _portal_dummy = {}

---@class (exact) _quest_check_result
---@field m_byCheckNum integer
local _quest_check_result = {}
---@param a1 integer
---@return _quest_check_result___node
function _quest_check_result:m_List_get(a1) end

---@class (exact) _quest_check_result___node
---@field byQuestDBSlot integer
---@field byActIndex integer
---@field wCount integer
---@field bORComplete boolean
local _quest_check_result___node = {}

---@class (exact) _quest_fail_condition
---@field m_nFailCondition integer
---@field m_strFailCode string
local _quest_fail_condition = {}

---@class (exact) _quest_reward_item
---@field m_strConsITCode string
---@field m_nConsITCnt integer
---@field m_nLinkQuestIdx integer
local _quest_reward_item = {}

---@class (exact) _quest_reward_mastery
---@field m_nConsMasteryID integer
---@field m_nConsMasterySubID integer
---@field m_nConsMasteryCnt integer
local _quest_reward_mastery = {}

---@class (exact) _record_bin_header
---@field m_nRecordNum integer
---@field m_nFieldNum integer
---@field m_nRecordSize integer
local _record_bin_header = {}

---@class (exact) _sec_info
---@field m_nSecNumW integer
---@field m_nSecNumH integer
---@field m_nSecNum integer
local _sec_info = {}

---@class (exact) _sell_offer
---@field pItem _STORAGE_LIST___db_con
---@field byAmount integer
---@field bySlotIndex integer
---@field byStorageCode integer
local _sell_offer = {}

---@class (exact) _sf_continous
---@field m_bExist boolean
---@field m_byEffectCode integer
---@field m_wEffectIndex integer
---@field m_byLv integer
---@field m_dwStartSec integer
---@field m_wDurSec integer
---@field m_dwEffSerial integer
---@field m_nCumulCounter integer
---@field m_dwPlayerSerial integer
---@field m_wszPlayerName string
local _sf_continous = {}

---@class (exact) _sf_continous_ex
---@field m_bExist boolean
---@field m_byLv integer
---@field m_byCumulCounter integer
---@field m_byEffectCode integer
---@field m_dwEffectIndex integer
---@field m_dwDurSec integer
---@field m_dwEffSerial integer
---@field m_tmApplyTime integer
---@field m_tmEndTime integer
local _sf_continous_ex = {}

---@class (exact) _skill_lv_up_data
---@field bUpdate boolean
---@field wIndex integer
---@field byLv integer
local _skill_lv_up_data = {}

---@class (exact) _store_dummy
---@field m_nStoreType integer
---@field m_pStoreRec _base_fld
---@field m_pDumPos _dummy_position
local _store_dummy = {}

---@class (exact) _tower_create_setdata: _character_create_setdata
---@field nHP integer
---@field pMaster CPlayer
---@field byRaceCode integer
---@field pItem _STORAGE_LIST___db_con
---@field nIniIndex integer
---@field bQuick boolean
local _tower_create_setdata = {}

---@class (exact) _trap_create_setdata: _character_create_setdata
---@field nHP integer
---@field pMaster CPlayer
---@field nTrapMaxAttackPnt integer
local _trap_create_setdata = {}

---@class (exact) _trunk_db_load: _STORAGE_LIST
local _trunk_db_load = {}
---@param a1 integer
---@return integer
function _trunk_db_load:m_byItemSlotRace_get(a1) end
---@param a1 integer
---@param a2 integer
function _trunk_db_load:m_byItemSlotRace_set(a1, a2) end
---@param a1 integer
---@return _STORAGE_LIST___db_con
function _trunk_db_load:m_List_get(a1) end

---@class (exact) _worlddb_sf_delay_info
local _worlddb_sf_delay_info = {}
---@param a1 integer
---@return _worlddb_sf_delay_info___eff_list
function _worlddb_sf_delay_info:EFF_get(a1) end
---@param a1 integer
---@return _worlddb_sf_delay_info___mas_list
function _worlddb_sf_delay_info:MAS_get(a1) end

---@class (exact) _worlddb_sf_delay_info___eff_list
---@field byEffectCode integer
---@field wEffectIndex integer
---@field dwNextTime integer
local _worlddb_sf_delay_info___eff_list = {}

---@class (exact) _worlddb_sf_delay_info___mas_list
---@field byEffectCode integer
---@field byMastery integer
---@field dwNextTime integer
local _worlddb_sf_delay_info___mas_list = {}

---@class (exact) cStaticMember_Player
---@field _nMaxLv integer
local cStaticMember_Player = {}
---@param a1 integer
---@return number
function cStaticMember_Player:_pLimExp_get(a1) end
---@param a1 integer
---@param a2 number
function cStaticMember_Player:_pLimExp_set(a1, a2) end

---@class (exact) sell_info
---@field m_strItemCode string
---@field m_nMaxCount integer
local sell_info = {}

---@class (exact) _AmuletItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nItemGrade integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nClassGradeLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_nEffState integer
---@field m_fFireTol number
---@field m_fWaterTol number
---@field m_fSoilTol number
---@field m_fWindTol number
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nEff3Code integer
---@field m_fEff3Unit number
---@field m_nEff4Code integer
---@field m_fEff4Unit number
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_bIsTime integer
local _AmuletItem_fld = {}

---@class (exact) _AnimusItem_fld: _base_fld
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strCivil string
---@field m_strName string
---@field m_nAnimusClass integer
---@field m_nAnimusType integer
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
local _AnimusItem_fld = {}

---@class (exact) _BagItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsTime integer
local _BagItem_fld = {}

---@class (exact) _BatteryItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_nDurUnit integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_bIsTime integer
local _BatteryItem_fld = {}

---@class (exact) _BattleDungeonItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_strMapCode string
---@field m_strDummyName string
---@field m_nGenMob integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bQualification integer
---@field m_fMobAdd number
---@field m_nTerminateTime integer
---@field m_nEndIF integer
---@field m_strMobID string
---@field m_nMobCount integer
---@field m_bItemLooting integer
---@field m_nExp integer
---@field m_nDalant integer
---@field m_nGold integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_strMissionIndex string
---@field m_bIsTime integer
local _BattleDungeonItem_fld = {}

---@class (exact) _BootyItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_bIsTime integer
local _BootyItem_fld = {}

---@class (exact) _BoxItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nClassGradeLim integer
---@field m_nUpLevelLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_nUsePCCash integer
---@field m_bIsTime integer
local _BoxItem_fld = {}

---@class (exact) _BulletItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_strBulletType string
---@field m_strEffBulletType string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_nDurUnit integer
---@field m_fEquipSpeed number
---@field m_nEffectGroup integer
---@field m_nProperty integer
---@field m_fFireTol number
---@field m_fWaterTol number
---@field m_fSoilTol number
---@field m_fWindTol number
---@field m_fGAAF number
---@field m_strEffectIndex string
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_nUsePCCash integer
---@field m_bIsTime integer
local _BulletItem_fld = {}

---@class (exact) _CheckPotion_fld: _base_fld
---@field m_strKOR_name string
---@field m_nContEffectType integer
---@field m_nContAreaType integer
local _CheckPotion_fld = {}
---@param a1 integer
---@return _CheckPotion_fld___CheckEffectCode
function _CheckPotion_fld:m_CheckEffectCode_get(a1) end

---@class (exact) _CheckPotion_fld___CheckEffectCode
---@field m_nContParamCode integer
---@field m_nContParamIndex integer
---@field m_fContValue number
---@field m_nContValSt integer
local _CheckPotion_fld___CheckEffectCode = {}

---@class (exact) _CloakItem_fld: _DfnEquipItem_fld
---@field m_fBoosterSpeed number
local _CloakItem_fld = {}

---@class (exact) _CouponItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nCouponItemPart integer
---@field m_nDiscount integer
---@field m_nPoint integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_nLV integer
---@field m_nUpLevelLim integer
---@field m_nStoragePart integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_bIsTime integer
local _CouponItem_fld = {}

---@class (exact) _DfnEquipItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nItemGrade integer
---@field m_nFixPart integer
---@field m_nHelmetClass integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nClassGradeLim integer
---@field m_nExpertID1 integer
---@field m_nExpertLim1 integer
---@field m_nExpertID2 integer
---@field m_nExpertLim2 integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_nDurUnit integer
---@field m_fEquipSpeed number
---@field m_bRepair integer
---@field m_nRepPrice integer
---@field m_nEffState integer
---@field m_nGASpd integer
---@field m_nProperty integer
---@field m_fFireTol number
---@field m_fWaterTol number
---@field m_fSoilTol number
---@field m_fWindTol number
---@field m_fDefFc number
---@field m_nDefence_DP integer
---@field m_nMaxDP integer
---@field m_fDefGap number
---@field m_fDefFacing number
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nEff3Code integer
---@field m_fEff3Unit number
---@field m_nEff4Code integer
---@field m_fEff4Unit number
---@field m_nDuration integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_nUpgrade integer
---@field m_strTooltipIndex string
---@field m_nDefEffType integer
---@field m_bIsTime integer
local _DfnEquipItem_fld = {}

---@class (exact) _EventItem_fld: _base_fld
---@field m_nIconIDX integer
---@field m_strName string
---@field m_strTooltipIndex string
local _EventItem_fld = {}

---@class (exact) _FIRECRACKER_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_fActDelay number
---@field m_nLevelLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_fEquipSpeed number
---@field m_nDuration integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
local _FIRECRACKER_fld = {}

---@class (exact) _FaceItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModle string
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nDefEffType integer
local _FaceItem_fld = {}

---@class (exact) _ForceItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_strForce_Codekey string
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
local _ForceItem_fld = {}

---@class (exact) _GuardTowerItem_fld: _base_fld
---@field m_strModle string
---@field m_strCharMeshID string
---@field m_strName string
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nExpertLim integer
---@field m_nExpTime integer
---@field m_nEffectGroup integer
---@field m_nIconIDX integer
---@field m_nLevel integer
---@field m_nHeight integer
---@field m_nWidth integer
---@field m_fAttGap number
---@field m_nAttack_DP integer
---@field m_nGADst integer
---@field m_nGASpd integer
---@field m_nAttSklUnit integer
---@field m_nGAMinAF integer
---@field m_nGAMaxAF integer
---@field m_nGAMinSelProb integer
---@field m_nGAMaxSelProb integer
---@field m_nDefSklUnit integer
---@field m_nDefFc integer
---@field m_fDefGap number
---@field m_fDefFacing number
---@field m_nProperty integer
---@field m_nFireTol integer
---@field m_nWaterTol integer
---@field m_nSoilTol integer
---@field m_nWindTol integer
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nDuration integer
---@field m_nMaxHP integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
---@field m_nAttEffType integer
---@field m_nDefEffType integer
---@field m_bIsTime integer
local _GuardTowerItem_fld = {}
---@param a1 integer
---@return _GuardTowerItem_fld____material
function _GuardTowerItem_fld:m_Material_get(a1) end

---@class (exact) _GuardTowerItem_fld____material
---@field strMaterialCode string
---@field nMaterialNum integer
local _GuardTowerItem_fld____material = {}

---@class (exact) _ItemLooting_fld: _base_fld
---@field m_nLootRate integer
---@field m_nLootTime integer
---@field m_nOperationCount integer
---@field m_nLootListCount integer
local _ItemLooting_fld = {}
---@param a1 integer
---@return string
function _ItemLooting_fld:m_itmLootCodeKey_get(a1) end
---@param a1 integer
---@param a2 string
function _ItemLooting_fld:m_itmLootCodeKey_set(a1, a2) end

---@class (exact) _ItemMakeData_fld: _base_fld
---@field m_nMakeMastery integer
---@field m_strCivil string
local _ItemMakeData_fld = {}
---@param a1 integer
---@return _ItemMakeData_fld___material_list
function _ItemMakeData_fld:m_listMaterial_get(a1) end
---@param a1 integer
---@return _ItemMakeData_fld___output_list
function _ItemMakeData_fld:m_listOutput_get(a1) end

---@class (exact) _ItemMakeData_fld___material_list
---@field m_itmPdMat string
---@field m_nPdMatNum integer
local _ItemMakeData_fld___material_list = {}

---@class (exact) _ItemMakeData_fld___output_list
---@field m_itmPdOutput string
---@field m_dwPdProp integer
local _ItemMakeData_fld___output_list = {}

---@class (exact) _ItemUpgrade_fld: _base_fld
---@field m_strName string
---@field m_nJewelType integer
---@field m_fJewelFieldValue number
---@field m_nUpperUp integer
---@field m_nLowerUp integer
---@field m_nGauntletUp integer
---@field m_nShoeUp integer
---@field m_nHelmetUp integer
---@field m_nShieldUp integer
---@field m_nMeleeUp integer
---@field m_nMissileUp integer
---@field m_nUnitUp integer
---@field m_nClockUp integer
---@field m_nDataEffect integer
---@field m_nEffectUnit integer
---@field m_fUp1 number
---@field m_fUp2 number
---@field m_fUp3 number
---@field m_fUp4 number
---@field m_fUp5 number
---@field m_fUp6 number
---@field m_fUp7 number
local _ItemUpgrade_fld = {}

---@class (exact) _MakeToolItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_nDurUnit integer
---@field m_nToolClass integer
---@field m_bRepair integer
---@field m_nEffState integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
---@field m_bIsTime integer
local _MakeToolItem_fld = {}

---@class (exact) _MapItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_strMapCode string
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsTime integer
local _MapItem_fld = {}

---@class (exact) _NPCLink_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_strStore_NPCcode string
---@field m_nNpc_Class1 integer
---@field m_nNpc_Class2 integer
---@field m_nNpc_Class3 integer
---@field m_nNpc_Class4 integer
---@field m_nNpc_Class5 integer
---@field m_nNpc_Class6 integer
---@field m_nNpc_Class7 integer
---@field m_nNpc_Class8 integer
---@field m_nNpc_Class9 integer
---@field m_nNpc_Class10 integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStoragePrice integer
---@field m_nLV integer
---@field m_nStdPoint integer
---@field m_nStoragePart integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
local _NPCLink_fld = {}

---@class (exact) _OreCutting_fld: _base_fld
---@field m_strResource_Item string
---@field m_nCutting_probability integer
local _OreCutting_fld = {}

---@class (exact) _OreItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nOre_List integer
---@field m_nOre_Level integer
---@field m_dwOreProbability integer
---@field m_nKindClt integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nProcessPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_nmin_C_random integer
---@field m_nmax_C_random integer
---@field m_nProcessPrice integer
---@field m_strTooltipIndex string
---@field m_bIsTime integer
local _OreItem_fld = {}

---@class (exact) _PotionItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_strActTaget string
---@field m_nPotionCheck integer
---@field m_nUseState integer
---@field m_strTargetEff string
---@field m_fActDelay number
---@field m_nDelayType integer
---@field m_nUseRange integer
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nPotionLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_fEquipSpeed number
---@field m_strEffCode string
---@field m_nEffArea integer
---@field m_nEffAreaVal integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_nUsePCCash integer
---@field m_bIsTime integer
local _PotionItem_fld = {}
---@param a1 integer
---@return integer
function _PotionItem_fld:m_nMapCode_get(a1) end
---@param a1 integer
---@param a2 integer
function _PotionItem_fld:m_nMapCode_set(a1, a2) end

---@class (exact) _QuestHappenEvent_fld: _base_fld
---@field m_nEevntNo integer
local _QuestHappenEvent_fld = {}
---@param a1 integer
---@return _happen_event_node
function _QuestHappenEvent_fld:m_Node_get(a1) end

---@class (exact) _Quest_fld: _base_fld
---@field m_nLimLv integer
---@field m_nQuestType integer
---@field m_bQuestRepeat integer
---@field m_dRepeatTime number
---@field m_nDifficultyLevel integer
---@field m_n2 integer
---@field m_bSelectQuestMenual integer
---@field m_bCompQuestType integer
---@field m_nMaxLevel integer
---@field m_dConsExp number
---@field m_nConsContribution integer
---@field m_nConsDalant integer
---@field m_nConspvppoint integer
---@field m_nConsGold integer
---@field m_bSelectConsITMenual integer
---@field m_strConsSkillCode string
---@field m_nConsSkillCnt integer
---@field m_strConsForceCode string
---@field m_nConsForceCnt integer
---@field m_nLinkQuestGroupID integer
---@field m_bFailCheck integer
---@field m_strFailBriefCode string
---@field m_nLinkDummyCond integer
---@field m_strLinkDummyCode string
---@field m_strFailLinkQuest string
---@field m_nViewportType integer
---@field m_strViewportCode string
---@field m_nStore_trade integer
---@field m_txtQTExp string
local _Quest_fld = {}
---@param a1 integer
---@return _action_node
function _Quest_fld:m_ActionNode_get(a1) end
---@param a1 integer
---@return _quest_reward_item
function _Quest_fld:m_RewardItem_get(a1) end
---@param a1 integer
---@return _quest_reward_mastery
function _Quest_fld:m_RewardMastery_get(a1) end
---@param a1 integer
---@return string
function _Quest_fld:m_strLinkQuest_get(a1) end
---@param a1 integer
---@param a2 string
function _Quest_fld:m_strLinkQuest_set(a1, a2) end
---@param a1 integer
---@return _quest_fail_condition
function _Quest_fld:m_QuestFailCond_get(a1) end

---@class (exact) _RadarItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_fActDelay number
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_fEquipSpeed number
---@field m_strEffSort string
---@field m_nSucPro integer
---@field m_nDuration integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
---@field m_bIsTime integer
local _RadarItem_fld = {}
---@param a1 integer
---@return _consume_item_list
function _RadarItem_fld:m_ConsumeItemList_get(a1) end

---@class (exact) _RecoveryItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_bMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_nMinRecoveryPro integer
---@field m_nMaxRecoveryPro integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_bIsTime integer
local _RecoveryItem_fld = {}

---@class (exact) _ResourceItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_nItemSerise integer
---@field m_strCivil string
---@field m_nMixNum integer
---@field m_fNeedNum number
---@field m_strLastItem string
---@field m_nMoney integer
---@field m_nAncStdPrice integer
---@field m_nExStdPrice integer
---@field m_nMecaStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_nStartTime integer
---@field m_nEffContTime integer
---@field m_nEffType1 integer
---@field m_nUIPrint integer
---@field m_nItemUiTip integer
---@field m_nEffectDataNum integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_nUsePCCash integer
---@field m_bIsTime integer
local _ResourceItem_fld = {}
---@param a1 integer
---@return EffectData
function _ResourceItem_fld:m_EffectData_get(a1) end

---@class (exact) _RingItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nItemGrade integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nClassGradeLim integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_nEffState integer
---@field m_fFireTol number
---@field m_fWaterTol number
---@field m_fSoilTol number
---@field m_fWindTol number
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nEff3Code integer
---@field m_fEff3Unit number
---@field m_nEff4Code integer
---@field m_fEff4Unit number
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_bIsTime integer
local _RingItem_fld = {}

---@class (exact) _SetItemEff_fld: _base_fld
---@field m_strCivil string
---@field m_strset_head string
---@field m_strset_upper string
---@field m_strset_lower string
---@field m_strset_shoes string
---@field m_strset_gauntlet string
---@field m_strset_weapon string
---@field m_strset_shield string
---@field m_strset_amulet1 string
---@field m_strset_amulet2 string
---@field m_strset_ring1 string
---@field m_strset_ring2 string
---@field m_strset_cloak string
---@field m_strEffrule string
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nEff3Code integer
---@field m_fEff3Unit number
---@field m_nEff4Code integer
---@field m_fEff4Unit number
---@field m_nEff5Code integer
---@field m_fEff5Unit number
---@field m_nEff6Code integer
---@field m_fEff6Unit number
---@field m_nEff7Code integer
---@field m_fEff7Unit number
---@field m_nEff8Code integer
---@field m_fEff8Unit number
local _SetItemEff_fld = {}

---@class (exact) _SiegeKitItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nItemGrade integer
---@field m_nUsableTyoe integer
---@field m_nSubType integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nExpertID1 integer
---@field m_nExpertLim1 integer
---@field m_nExpertID2 integer
---@field m_nExpertLim2 integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_nDurUnit integer
---@field m_bRepair integer
---@field m_nRepPrice integer
---@field m_nEffState integer
---@field m_fMinDst number
---@field m_fMaxDst number
---@field m_nGACorSpd integer
---@field m_fGAAF number
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nEff3Code integer
---@field m_fEff3Unit number
---@field m_nEff4Code integer
---@field m_fEff4Unit number
---@field m_nDuration integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_nUpgrade integer
---@field m_strTooltipIndex string
---@field m_nAttEffType integer
---@field m_bIsTime integer
local _SiegeKitItem_fld = {}

---@class (exact) _StoreList_fld: _base_fld
---@field m_strBinding_DummyName string
---@field m_strStore_NPCcode string
---@field m_strStore_NPCname string
---@field m_strStore_MAPcode string
---@field m_nStore_trade integer
---@field m_bSet_NPCangle integer
---@field m_nStore_NPCangle integer
---@field m_nStore_LISTcount integer
---@field m_nLimit_Listcount integer
---@field m_nLimitItem_InitTime integer
---@field m_nPriceSet integer
---@field m_nItemUpCode integer
local _StoreList_fld = {}
---@param a1 integer
---@return integer
function _StoreList_fld:m_nNpc_Class_get(a1) end
---@param a1 integer
---@param a2 integer
function _StoreList_fld:m_nNpc_Class_set(a1, a2) end
---@param a1 integer
---@return string
function _StoreList_fld:m_strItemlist_get(a1) end
---@param a1 integer
---@param a2 string
function _StoreList_fld:m_strItemlist_set(a1, a2) end
---@param a1 integer
---@return sell_info
function _StoreList_fld:m_sellLimitList_get(a1) end

---@class (exact) _TOWNItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_strMapCode string
---@field m_strDummyName string
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_nLV integer
---@field m_nUpLevelLim integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsCash integer
---@field m_nUsePCCash integer
---@field m_bIsTime integer
local _TOWNItem_fld = {}

---@class (exact) _TicketItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nFixPart integer
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_strMapCode string
---@field m_strDummyName string
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
---@field m_bIsTime integer
local _TicketItem_fld = {}

---@class (exact) _TimeItem_fld: _base_fld
---@field m_strLendItemCode string
---@field m_nCheckType integer
---@field m_nUseTime integer
local _TimeItem_fld = {}

---@class (exact) _TrapItem_fld: _base_fld
---@field m_bExist integer
---@field m_nType integer
---@field m_strModel string
---@field m_strCharMeshID string
---@field m_strName string
---@field m_strCivil string
---@field m_nLevel integer
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nExpertLim integer
---@field m_nExpTimeSec integer
---@field m_bDisjointable integer
---@field m_nUpkeepTimeMin integer
---@field m_nIconIDX integer
---@field m_fReactionDst number
---@field m_fAttGap number
---@field m_nAttack_DP integer
---@field m_fGADst number
---@field m_bSetTarget integer
---@field m_nAttSklUnit integer
---@field m_nGAMinAF integer
---@field m_nGAMaxAF integer
---@field m_nGAMinSelProb integer
---@field m_nGAMaxSelProb integer
---@field m_fMaxHP number
---@field m_nDefSklUnit integer
---@field m_nDefFc integer
---@field m_fDefGap number
---@field m_fDefFacing number
---@field m_strEffcode string
---@field m_nProperty integer
---@field m_nFireTol integer
---@field m_nWaterTol integer
---@field m_nSoilTol integer
---@field m_nWindTol integer
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nDuration integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bDismantle integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
---@field m_nAttEffType integer
---@field m_nDefEffType integer
---@field m_bIsTime integer
local _TrapItem_fld = {}

---@class (exact) _UNmannedminer_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_strCharMeshID string
---@field m_strName string
---@field m_strCivil string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nExpTime integer
---@field m_nIconIDX integer
---@field m_nLevel integer
---@field m_nHeight integer
---@field m_nWidth integer
---@field m_nDefSklUnit integer
---@field m_nDefFc integer
---@field m_fDefGap number
---@field m_fDefFacing number
---@field m_nFireTol integer
---@field m_nWaterTol integer
---@field m_nSoilTol integer
---@field m_nWindTol integer
---@field m_nMaxHP integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_bUpgrade integer
---@field m_strTooltipIndex string
---@field m_nDefEffType integer
---@field m_bIsCash integer
---@field m_bIsTime integer
local _UNmannedminer_fld = {}

---@class (exact) _UnitBullet_fld: _base_fld
---@field m_strModle string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nWPType integer
---@field m_bAbr integer
---@field m_nDurUnit integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_fGAAF number
---@field m_strEffectIndex string
---@field m_strTooltipIndex string
local _UnitBullet_fld = {}

---@class (exact) _UnitFrame_fld: _base_fld
---@field m_nFRAType integer
---@field m_nUnit_HP integer
---@field m_fDefGap number
---@field m_fDefFacing number
---@field m_fMoveRate_Seed number
---@field m_fHeight number
---@field m_fWidth number
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_nRepPrice integer
---@field m_bDestroy integer
---@field m_bRepair integer
---@field m_strDFHead string
---@field m_strDFUpper string
---@field m_strDFLower string
---@field m_strDFArms string
---@field m_strDFShoulder string
---@field m_strDFBack string
---@field m_strDFBtA string
---@field m_strDFBtS string
local _UnitFrame_fld = {}

---@class (exact) _UnitKeyItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_strCivil string
---@field m_nFRAType integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_strTooltipIndex string
local _UnitKeyItem_fld = {}

---@class (exact) _UnitPart_fld: _base_fld
---@field m_strModle string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nFixPart integer
---@field m_strDefFrame string
---@field m_nWPType integer
---@field m_nEffectGroup integer
---@field m_nNeedBt integer
---@field m_bAbr integer
---@field m_nDurUnit integer
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nExpertID1 integer
---@field m_nExpertLim1 integer
---@field m_nExpertID2 integer
---@field m_nExpertLim2 integer
---@field m_fAttGap number
---@field m_nAttack_DP integer
---@field m_fAttackRange number
---@field m_nAttackDel integer
---@field m_fMoveSpdRev number
---@field m_nGAMinAF integer
---@field m_nGAMaxAF integer
---@field m_nAttMastery integer
---@field m_nGAMinSelProb integer
---@field m_nGAMaxSelProb integer
---@field m_nDefFc integer
---@field m_nDefMastery integer
---@field m_nProperty integer
---@field m_nFireTol integer
---@field m_nWaterTol integer
---@field m_nSoilTol integer
---@field m_nWindTol integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nRepPrice integer
---@field m_nDesrepPrice integer
---@field m_nBstCha integer
---@field m_fBstSpd number
---@field m_nBackSlt integer
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nEff3Code integer
---@field m_fEff3Unit number
---@field m_nEff4Code integer
---@field m_fEff4Unit number
---@field m_strTooltipIndex string
---@field m_nAttEffType integer
---@field m_nDefEffType integer
local _UnitPart_fld = {}

---@class (exact) _WeaponItem_fld: _base_fld
---@field m_bExist integer
---@field m_strModel string
---@field m_nIconIDX integer
---@field m_strName string
---@field m_nKindClt integer
---@field m_nItemGrade integer
---@field m_nActiveType integer
---@field m_strActiveCode_key string
---@field m_nActiveEffLvl integer
---@field m_fActiveProba number
---@field m_nFixPart integer
---@field m_strBulletType string
---@field m_strEffBulletType string
---@field m_nType integer
---@field m_nSubType integer
---@field m_strCivil string
---@field m_strClassLim string
---@field m_nLevelLim integer
---@field m_nUpLevelLim integer
---@field m_nClassGradeLim integer
---@field m_nExpertID1 integer
---@field m_nExpertLim1 integer
---@field m_nExpertID2 integer
---@field m_nExpertLim2 integer
---@field m_nMoney integer
---@field m_nStdPrice integer
---@field m_nStdPoint integer
---@field m_nGoldPoint integer
---@field m_nKillPoint integer
---@field m_nProcPoint integer
---@field m_nStoragePrice integer
---@field m_bAbr integer
---@field m_nDurUnit integer
---@field m_fEquipSpeed number
---@field m_bRepair integer
---@field m_nRepPrice integer
---@field m_nEffState integer
---@field m_nProperty integer
---@field m_fFireTol number
---@field m_fWaterTol number
---@field m_fSoilTol number
---@field m_fWindTol number
---@field m_fAttGap number
---@field m_nAttack_DP integer
---@field m_fGADst number
---@field m_nGASpd integer
---@field m_nGAMinSelProb integer
---@field m_fGAMinAF number
---@field m_nGAMaxSelProb integer
---@field m_fGAMaxAF number
---@field m_nMADst integer
---@field m_nMASpd integer
---@field m_nMAMinSelProb integer
---@field m_fMAMinAF number
---@field m_nMAMaxSelProb integer
---@field m_fMAMaxAF number
---@field m_nEff1Code integer
---@field m_fEff1Unit number
---@field m_nEff2Code integer
---@field m_fEff2Unit number
---@field m_nEff3Code integer
---@field m_fEff3Unit number
---@field m_nEff4Code integer
---@field m_fEff4Unit number
---@field m_nDuration integer
---@field m_bSell integer
---@field m_bExchange integer
---@field m_bGround integer
---@field m_bStoragePossible integer
---@field m_bUseableNormalAcc integer
---@field m_nUpgrade integer
---@field m_strTooltipIndex string
---@field m_nAttEffType integer
---@field m_bIsTime integer
local _WeaponItem_fld = {}

---@class (exact) _animus_fld: _base_fld
---@field m_nLevel integer
---@field m_nForLvUpExp integer
---@field m_nUseFP integer
---@field m_fPenalty number
---@field m_fAttGap number
---@field m_nAttack_DP integer
---@field m_nAttFcStd integer
---@field m_nMinAFSelProb integer
---@field m_nMaxAFSelProb integer
---@field m_nAttSklUnit integer
---@field m_nDefSklUnit integer
---@field m_fWeakPart number
---@field m_nStdDefFc integer
---@field m_fDefGap number
---@field m_fDefFacing number
---@field m_nFireTol integer
---@field m_nWaterTol integer
---@field m_nSoilTol integer
---@field m_nWindTol integer
---@field m_nForceLevel integer
---@field m_nForceMastery integer
---@field m_nForceAttStd integer
---@field m_strAttTechID1 string
---@field m_nAttTech1UseProb integer
---@field m_nAttTechID1MotionTime integer
---@field m_strPSecTechID string
---@field m_nPSecTechIDMotionTime integer
---@field m_strMSecTechID string
---@field m_nMSecTechIDMotionTime integer
---@field m_nMaxHP integer
---@field m_nHPRecDelay integer
---@field m_nHPRecUnit integer
---@field m_nMaxFP integer
---@field m_nFPRecDelay integer
---@field m_nFPRecUnit integer
---@field m_nAttSpd integer
---@field m_nAttMoTime1 integer
---@field m_nAttMoTime2 integer
---@field m_nCrtMoTime integer
---@field m_nViewExt integer
---@field m_nRefExt integer
---@field m_nAttExt integer
---@field m_nMovSpd integer
---@field m_nScaleRate integer
---@field m_nWidth integer
---@field m_nAttEffType integer
---@field m_nDefEffType integer
local _animus_fld = {}

---@class (exact) _base_fld
---@field m_dwIndex integer
---@field m_strCode string
local _base_fld = {}

---@class (exact) _class_fld: _base_fld
---@field m_nRaceCode integer
---@field m_nClass integer
---@field m_nIconIDX integer
---@field m_nGrade integer
---@field m_nUpGradeLv integer
---@field m_strTemp string
---@field m_strKorName string
---@field m_strEngName string
---@field m_nConLim integer
---@field m_bUnitUsable integer
---@field m_bAnimusUsable integer
---@field m_bLauncherUsable integer
---@field m_bWMKToolUsable integer
---@field m_bDMKToolUnitUsable integer
---@field m_bBMKToolUnitUsable integer
---@field m_nMakeTrapMaxNum integer
---@field m_nBnsForHP integer
---@field m_nBnsForFP integer
---@field m_nBnsForSP integer
---@field m_nUpValueDefMastery integer
---@field m_MasteryLim _mastery_lim_data
---@field m_bSelectRewardItem integer
local _class_fld = {}
---@param a1 integer
---@return string
function _class_fld:m_strCh_Class_get(a1) end
---@param a1 integer
---@param a2 string
function _class_fld:m_strCh_Class_set(a1, a2) end
---@param a1 integer
---@return string
function _class_fld:m_strLinkClassSkill_get(a1) end
---@param a1 integer
---@param a2 string
function _class_fld:m_strLinkClassSkill_set(a1, a2) end
---@param a1 integer
---@return _class_fld___bns_item
function _class_fld:m_DefaultItem_get(a1) end

---@class (exact) _class_fld___bns_item
---@field strDefaultItem string
---@field nAmount integer
local _class_fld___bns_item = {}

---@class (exact) _force_fld: _base_fld
---@field m_nClass integer
---@field m_nIconIDX integer
---@field m_nMastIndex integer
---@field m_strMastKorName string
---@field m_strMastEngName string
---@field m_strKorName string
---@field m_strEngName string
---@field m_nLv integer
---@field m_bActivate integer
---@field m_bEnable integer
---@field m_strUsableRace string
---@field m_strActableDst string
---@field m_strGradeLimit string
---@field m_nNeedMastIndex integer
---@field m_strFixWeapon string
---@field m_bFixshield integer
---@field m_nSpecialType integer
---@field m_nNeedSpecialType integer
---@field m_nNeedHP integer
---@field m_nNeedFP integer
---@field m_nNeedSP integer
---@field m_fActDelay number
---@field m_bCumulType integer
---@field m_nCumulCounter integer
---@field m_nNewEffCount integer
---@field m_strEffectCode string
---@field m_bAttackable integer
---@field m_nProperty integer
---@field m_nEffectGroup integer
---@field m_fAttFormulaConstant number
---@field m_nActDistance integer
---@field m_strRangeEffCode string
---@field m_nTempEffectType integer
---@field m_nTempParamCode integer
---@field m_nContEffectType integer
---@field m_nContAreaType integer
---@field m_nEffectClass integer
local _force_fld = {}
---@param a1 integer
---@return _consume_item_list
function _force_fld:m_ConsumeItemList_get(a1) end
---@param a1 integer
---@return number
function _force_fld:m_fTempValue_get(a1) end
---@param a1 integer
---@param a2 number
function _force_fld:m_fTempValue_set(a1, a2) end
---@param a1 integer
---@return _cont_param_list
function _force_fld:m_ContParamList_get(a1) end
---@param a1 integer
---@return integer
function _force_fld:m_nContEffectSec_get(a1) end
---@param a1 integer
---@param a2 integer
function _force_fld:m_nContEffectSec_set(a1, a2) end

---@class (exact) _map_fld: _base_fld
---@field m_strFileName string
---@field m_nMapType integer
---@field m_nLayerNum integer
---@field m_nRaceVillageCode integer
---@field m_nMonsterSetFileNum integer
---@field m_nMapClass integer
---@field m_nRadius integer
---@field m_nLevelLimit integer
---@field m_nUpLevelLim integer
---@field m_nPotionLim integer
local _map_fld = {}
---@param a1 integer
---@return integer
function _map_fld:m_nRacePvpUsable_get(a1) end
---@param a1 integer
---@param a2 integer
function _map_fld:m_nRacePvpUsable_set(a1, a2) end

---@class (exact) _mon_active_fld: _base_fld
---@field m_dwRegenTime integer
---@field m_dwRegenLimNum integer
---@field m_dwRegenProp integer
---@field m_dwRegenMinNum integer
---@field m_dwStdKill integer
---@field m_dwRegenMaxNum integer
local _mon_active_fld = {}

---@class (exact) _mon_block_fld: _base_fld
---@field m_dwDummyNum integer
---@field m_nMin integer
---@field m_nMob integer
---@field m_nMax integer
local _mon_block_fld = {}
---@param a1 integer
---@return _mon_block_fld___dummy_info
function _mon_block_fld:m_DummyInfo_get(a1) end

---@class (exact) _mon_block_fld___dummy_info
---@field m_strDummyCode string
---@field m_dwSelectProp integer
local _mon_block_fld___dummy_info = {}

---@class (exact) _monster_fld: _base_fld
---@field m_strName string
---@field m_strEffectCode string
---@field m_nMobGrade integer
---@field m_nRaceCode integer
---@field m_nMobRace integer
---@field m_nKillPoint integer
---@field m_nToCombatTime integer
---@field m_nPincerCnt integer
---@field m_nPreAttRange integer
---@field m_nMinMoveDistance integer
---@field m_nMaxMoveDistance integer
---@field m_nMobAlienation integer
---@field m_nMinMoveArea integer
---@field m_nMaxMoveArea integer
---@field m_nGuardRecallTimeMS integer
---@field m_nGuardingArea integer
---@field m_fTarDecType number
---@field m_nAPTime integer
---@field m_nAPReset integer
---@field m_nUglierType integer
---@field m_fLevel number
---@field m_bMonsterCondition integer
---@field m_nCriticalTol integer
---@field m_bExpDown integer
---@field m_nUpLooting integer
---@field m_nDnLooting integer
---@field m_fExt number
---@field m_fAttFcStd number
---@field m_nAttack_DP integer
---@field m_nProperty integer
---@field m_fAttGap number
---@field m_bAttRangeType integer
---@field m_nAttType integer
---@field m_fMinAFSelProb number
---@field m_fMaxAFSelProb number
---@field m_fAttSklUnit number
---@field m_fDefSklUnit number
---@field m_fWeakPart number
---@field m_bUseDefence integer
---@field m_fStdDefFc number
---@field m_fDefGap number
---@field m_fDefFacing number
---@field m_nShieldBlock integer
---@field m_nBlockPer integer
---@field m_fFireTol number
---@field m_fWaterTol number
---@field m_fSoilTol number
---@field m_fWindTol number
---@field m_fForceLevel number
---@field m_fForceMastery number
---@field m_fForceAttStd number
---@field m_strAttTechID1 string
---@field m_fAttTech1UseProb number
---@field m_fAttTechID1MotionTime number
---@field m_strAttTechID2 string
---@field m_fAttTech2UseProb number
---@field m_fAttTechID2MotionTime number
---@field m_strAttTechID3 string
---@field m_fAttTech3UseProb number
---@field m_fAttTechID3MotionTime number
---@field m_strPSecTechID string
---@field m_fPSecTechIDMotionTime number
---@field m_strMSecTechID string
---@field m_fMSecTechIDMotionTime number
---@field m_nInjuryLimit integer
---@field m_fMaxHP number
---@field m_fHPRecDelay number
---@field m_fHPRecUnit number
---@field m_fAttSpd number
---@field m_fAttMoTime1 number
---@field m_fAttMoTime2 number
---@field m_fCrtMoTime number
---@field m_nViewAngle integer
---@field m_nViewAngleCap integer
---@field m_nCapacityValue integer
---@field m_fViewExt number
---@field m_fAttExt number
---@field m_fMRefExt number
---@field m_fCopTime number
---@field m_fMovSpd number
---@field m_fWarMovSpd number
---@field m_fScaleRate number
---@field m_bScaleChange integer
---@field m_fWidth number
---@field m_fWaitTime number
---@field m_nAsitReqRate integer
---@field m_nAsitAptRate integer
---@field m_nAsitType integer
---@field m_fEmoType number
---@field m_fOffensiveRate number
---@field m_nOffensiveType integer
---@field m_fDamHPStd number
---@field m_fEmoImpStdTime number
---@field m_fGoodToOrdHPPer number
---@field m_fOrdToBadHPPer number
---@field m_fBadToWorseHPPer number
---@field m_fEspTFProb number
---@field m_fTypeCompTerms number
---@field m_fPSecTechChat number
---@field m_fPAttTechChat number
---@field m_fEmo0Chat number
---@field m_fEmo0ChatProb number
---@field m_fEmo1Chat number
---@field m_fEmo1ChatProb number
---@field m_fEmo2Chat number
---@field m_fEmo2ChatProb number
---@field m_fEmo3Chat number
---@field m_fEmo3ChatProb number
---@field m_fEmo4Chat number
---@field m_fEmo4ChatProb number
---@field m_fAsitReqSteEspChat number
---@field m_fAsitReqSteEspChatProb number
---@field m_fAsitReqSteHelpChat number
---@field m_fAsitReqSteHelpChatProb number
---@field m_fAsitReqSteCopChat number
---@field m_fAsitReqSteCopChatProb number
---@field m_nAttEffType integer
---@field m_nDefEffType integer
local _monster_fld = {}
---@param a1 integer
---@return string
function _monster_fld:m_strSPCode_get(a1) end
---@param a1 integer
---@param a2 string
function _monster_fld:m_strSPCode_set(a1, a2) end
---@param a1 integer
---@return _monster_fld____child_mon
function _monster_fld:m_Child_get(a1) end
---@param a1 integer
---@return _monster_fld___EmotionPresentation
function _monster_fld:m_EmotionChecker_get(a1) end

---@class (exact) _monster_fld___EmotionPresentation
---@field m_nEmotionCon integer
---@field m_nEmotionClass integer
---@field m_strEmotionCode string
local _monster_fld___EmotionPresentation = {}

---@class (exact) _monster_fld____child_mon
---@field strChildMon string
---@field nChildMonNum integer
local _monster_fld____child_mon = {}

---@class (exact) _monster_sp_fld: _base_fld
---@field m_nSpecialAttType integer
---@field m_strSpecialAttCode string
---@field m_nAttLv integer
---@field m_fSpecialRange number
---@field m_nMotiveCondition integer
---@field m_nMotiveValue integer
---@field m_nMotiveExceptionCondition integer
---@field m_nMotiveExceptionValue integer
---@field m_nMotiveTime integer
---@field m_nDstType integer
---@field m_nLimitCount integer
---@field m_nProbability integer
local _monster_sp_fld = {}

---@class (exact) _npc_fld: _base_fld
---@field m_strName string
---@field m_nRace integer
---@field m_bWarType integer
---@field m_fTarDecType number
---@field m_fLevel number
---@field m_fExt number
---@field m_fAttFcStd number
---@field m_fMinAFSelProb number
---@field m_fMaxAFSelProb number
---@field m_fAttSklUnit number
---@field m_fDefSklUnit number
---@field m_fWeakPart number
---@field m_fStdDefFc number
---@field m_fFireTol number
---@field m_fWaterTol number
---@field m_fSoilTol number
---@field m_fWindTol number
---@field m_fAttTechID1 number
---@field m_fAttTech1UseProb number
---@field m_fAttTechID2 number
---@field m_fAttTech2UseProb number
---@field m_fAttTechID3 number
---@field m_fAttTech3UseProb number
---@field m_fAttTechMinAFProb number
---@field m_fAttTechMinAF number
---@field m_fAttTechMaxAFProb number
---@field m_fAttTechMaxAF number
---@field m_fPSecTechID number
---@field m_fMSecTechID number
---@field m_fMaxHP number
---@field m_fHPRecDelay number
---@field m_fHPRecUnit number
---@field m_fAttSpd number
---@field m_fAttMoTime1 number
---@field m_fAttMoTime2 number
---@field m_fViewExt number
---@field m_fAttExt number
---@field m_fMRefExt number
---@field m_fCopTime number
---@field m_fMovSpd number
---@field m_fWarMovSpd number
---@field m_fScaleRate number
---@field m_bScaleChange integer
---@field m_fWidth number
---@field m_fWaitTime number
---@field m_nAsitReqRate integer
---@field m_nAsitAptRate integer
---@field m_strChildMon string
---@field m_nChildMonNum integer
---@field m_fEmoType number
---@field m_fDamHPStd number
---@field m_fEmoImpStdTime number
---@field m_fGoodToOrdHPPer number
---@field m_fOrdToBadHPPer number
---@field m_fBadToWorseHPPer number
---@field m_fEspTFProb number
---@field m_fTypeCompTerms number
---@field m_fPSecTechChat number
---@field m_fPAttTechChat number
---@field m_fEmo0Chat number
---@field m_fEmo0ChatProb number
---@field m_fEmo1Chat number
---@field m_fEmo1ChatProb number
---@field m_fEmo2Chat number
---@field m_fEmo2ChatProb number
---@field m_fEmo3Chat number
---@field m_fEmo3ChatProb number
---@field m_fEmo4Chat number
---@field m_fEmo4ChatProb number
---@field m_fAsitReqSteEspChat number
---@field m_fAsitReqSteEspChatProb number
---@field m_fAsitReqSteHelpChat number
---@field m_fAsitReqSteHelpChatProb number
---@field m_fAsitReqSteCopChat number
---@field m_fAsitReqSteCopChatProb number
local _npc_fld = {}

---@class (exact) _player_fld: _base_fld
---@field m_strName string
---@field m_nRaceCode integer
---@field m_nSexCode integer
---@field m_fMoveWalkRate number
---@field m_fMoveRunRate number
---@field m_fHeight number
---@field m_fWidth number
---@field m_fAttackRange number
---@field m_fDefGap number
---@field m_fDefFacing number
local _player_fld = {}

---@class (exact) _portal_fld: _base_fld
---@field m_strLinkMapCode string
---@field m_strLinkPortalCode string
---@field m_szMenu string
---@field m_bNeedConCheck integer
---@field m_nNeedChrLevel integer
---@field m_nUpLevelLim integer
---@field m_nKind integer
---@field m_strUseRace string
local _portal_fld = {}
---@param a1 integer
---@return _consume_item_list
function _portal_fld:m_ConsumeItemList_get(a1) end

---@class (exact) _skill_fld: _base_fld
---@field m_nClass integer
---@field m_nIconIDX integer
---@field m_nMastIndex integer
---@field m_strMastKorName string
---@field m_strMastEngName string
---@field m_strKorName string
---@field m_strEngName string
---@field m_nLv integer
---@field m_bActivate integer
---@field m_bEnable integer
---@field m_strUsableRace string
---@field m_strActableDst string
---@field m_strGradeLimit string
---@field m_nNeedMastIndex integer
---@field m_strFixWeapon string
---@field m_bFixshield integer
---@field m_nSpecialType integer
---@field m_nNeedSpecialType integer
---@field m_nNeedHP integer
---@field m_nNeedFP integer
---@field m_nNeedSP integer
---@field m_fActDelay number
---@field m_bCumulType integer
---@field m_nCumulCounter integer
---@field m_nNewEffCount integer
---@field m_strEffectCode string
---@field m_nAttackable integer
---@field m_fAttFormulaConstant number
---@field m_nAttNeedBt integer
---@field m_nBonusDistance integer
---@field m_strRangeEffCode string
---@field m_nTempEffectType integer
---@field m_nTempParamCode integer
---@field m_nContEffectType integer
---@field m_nEffLimType integer
---@field m_nEffLimType2 integer
---@field m_nContAreaType integer
---@field m_nEtc integer
---@field m_f1_2speed number
---@field m_f1_2distance number
---@field m_f2_3speed number
---@field m_f2_3distance number
---@field m_nEffectClass integer
local _skill_fld = {}
---@param a1 integer
---@return _consume_item_list
function _skill_fld:m_ConsumeItemList_get(a1) end
---@param a1 integer
---@return integer
function _skill_fld:m_nAttType_get(a1) end
---@param a1 integer
---@param a2 integer
function _skill_fld:m_nAttType_set(a1, a2) end
---@param a1 integer
---@return integer
function _skill_fld:m_nAttConstant_get(a1) end
---@param a1 integer
---@param a2 integer
function _skill_fld:m_nAttConstant_set(a1, a2) end
---@param a1 integer
---@return number
function _skill_fld:m_fTempValue_get(a1) end
---@param a1 integer
---@param a2 number
function _skill_fld:m_fTempValue_set(a1, a2) end
---@param a1 integer
---@return _cont_param_list
function _skill_fld:m_ContParamList_get(a1) end
---@param a1 integer
---@return integer
function _skill_fld:m_nContEffectSec_get(a1) end
---@param a1 integer
---@param a2 integer
function _skill_fld:m_nContEffectSec_set(a1, a2) end
