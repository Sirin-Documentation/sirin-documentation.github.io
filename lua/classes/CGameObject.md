# CGameObject
 
## Functions
 
> `bool` __eq(`const` `class` [CGameObject](lua/classes/CGameObject.md) *,`const` `class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `void` SetStun(`bool`)
 
> `unsigned short` CalcCurHPRate(`void`)
 
> `void` SendMsg_RealFixPosition(`bool`)
 
> `void` Loop(`void`)
 
> `void` AlterSec(`void`)
 
> `void` OutOfSec(`void`)
 
> `void` SendMsg_FixPosition(`int`)
 
> `void` SendMsg_RealMovePoint(`int`)
 
> `void` SendMsg_StunInform(`void`)
 
> `void` SendMsg_SetHPInform(`void`)
 
> `int` GetHP(`void`)
 
> `bool` SetHP(`int`,`bool`)
 
> `int` GetMaxHP(`void`)
 
> `void` RecvKillMessage(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `void` SFContInsertMessage(`unsigned char`,`unsigned char`,`bool`,`class` [CPlayer](lua/classes/CPlayer.md) *)
 
> `void` SFContDelMessage(`unsigned char`,`unsigned char`,`bool`,`bool`)
 
> `void` SFContUpdateTimeMessage(`unsigned char`,`unsigned char`,`int`)
 
> `void` BeTargeted(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` RobbedHP(`class` [CCharacter](lua/classes/CCharacter.md) *,`int`)
 
> `bool` FixTargetWhile(`class` [CCharacter](lua/classes/CCharacter.md) *,`unsigned long`)
 
> `void` SetAttackPart(`int`)
 
> `int` GetGenAttackProb(`class` [CCharacter](lua/classes/CCharacter.md) *,`int`,`bool`)
 
> `int` SetDamage(`int`,`class` [CCharacter](lua/classes/CCharacter.md) *,`int`,`bool`,`int`,`unsigned long`,`bool`)
 
> `int` GetDefFC(`struct` `lua_State` *)
 
> `int` GetFireTol(`void`)
 
> `int` GetWaterTol(`void`)
 
> `int` GetSoilTol(`void`)
 
> `int` GetWindTol(`void`)
 
> `float` GetDefGap(`int`)
 
> `float` GetDefFacing(`int`)
 
> `float` GetWeaponAdjust(`void`)
 
> `int` GetLevel(`void`)
 
> `int` GetDefSkill(`bool`)
 
> `float` GetWidth(`void`)
 
> `float` GetAttackRange(`void`)
 
> `int` AttackableHeight(`void`)
 
> `int` GetWeaponClass(`void`)
 
> `int` GetAvoidRate(`void`)
 
> `int` GetAttackLevel(`void`)
 
> `int` GetAttackDP(`void`)
 
> `int` GetObjRace(`void`)
 
> `const` `char`* GetObjName(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `bool` IsRecvableContEffect(`void`)
 
> `bool` IsBeAttackedAble(`bool`)
 
> `bool` IsRewardExp(`void`)
 
> `bool` IsBeDamagedAble(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` IsInTown(`void`)
 
> `bool` IsAttackableInTown(`void`)
 
> `bool` SF_AttHPtoDstFP_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_ContDamageTimeInc_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_Resurrect_Once(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` SF_HPInc_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_STInc_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_ContHelpTimeInc_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_OverHealing_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_LateContHelpSkillRemove_Once(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` SF_LateContHelpForceRemove_Once(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` SF_LateContDamageRemove_Once(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` SF_AllContHelpSkillRemove_Once(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` SF_AllContHelpForceRemove_Once(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` SF_AllContDamageForceRemove_Once(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `bool` SF_OthersContHelpSFRemove_Once(`float`)
 
> `bool` SF_SkillContHelpTimeInc_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_ConvertMonsterTarget(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_TransMonsterHP(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_ReleaseMonsterTarget(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_IncHPCircleParty(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_Stun(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_SPDec(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_FPDec(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_DamageAndStun(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `int` SF_TransDestHP(`struct` `lua_State` *)
 
> `bool` SF_RemoveAllContHelp_Once(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `int` SF_MakePortalReturnBindPositionPartyMember(`struct` `lua_State` *)
 
> `bool` SF_ReturnBindPosition(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_IncreaseDP(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_ConvertTargetDest(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_RecoverAllReturnStateAnimusHPFull(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_MakeZeroAnimusRecallTimeOnce(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_SelfDestruction(`class` [CCharacter](lua/classes/CCharacter.md) *,`float`)
 
> `bool` SF_TeleportToDestination(`class` [CCharacter](lua/classes/CCharacter.md) *,`bool`)
 
> `bool` Is_Battle_Mode(`void`)
 
> `bool` Create(`struct` [_object_create_setdata](lua/classes/_object_create_setdata.md) *)
 
> `int` CircleReport(`struct` `lua_State` *)
 
> `unsigned int` GetCurSecNum(`void`)
 
## Members
 
> `struct` [_base_fld](lua/classes/_base_fld.md)* m_pRecordSet
 
> `struct` [_object_id](lua/classes/_object_id.md) m_ObjID
 
> `unsigned int` m_dwObjSerial
 
> `bool` m_bLive
 
> `int` m_nTotalObjIndex
 
> `bool` m_bCorpse
 
> `bool` m_bMove
 
> `bool` m_bStun
 
> `bool` m_bMapLoading
 
> `unsigned int` m_dwLastSendTime
 
> `float` m_fCurPos_x
 
> `float` m_fCurPos_y
 
> `float` m_fCurPos_z
 
> `float` m_fAbsPos_x
 
> `float` m_fAbsPos_y
 
> `float` m_fAbsPos_z
 
> `int` m_nScreenPos_x
 
> `int` m_nScreenPos_y
 
> `float` m_fOldPos_x
 
> `float` m_fOldPos_y
 
> `float` m_fOldPos_z
 
> `class` [CMapData](lua/classes/CMapData.md)* m_pCurMap
 
> `struct` [_100_per_random_table](lua/classes/_100_per_random_table.md) m_rtPer100
 
> `int` m_nCirclePlayerNum
 
> `unsigned short` m_wMapLayerIndex
 
> `struct` [_object_list_point](lua/classes/_object_list_point.md) m_SectorPoint
 
> `struct` [_object_list_point](lua/classes/_object_list_point.md) m_SectorNetPoint
 
> `unsigned int` m_dwNextFreeStunTime
 
> `unsigned int` m_dwOldTickBreakTranspar
 
> `bool` m_bBreakTranspar
 
> `bool` m_bMaxVision
 
> `bool` m_bObserver
 
> `unsigned int` m_dwCurSec
 
