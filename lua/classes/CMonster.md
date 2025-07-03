# CMonster

---@class (exact) CMonster: CCharacter
 
> `unsigned int` m_nMove_State(`const` `class` [CMonster](lua/classes/CMonster.md) *)
 
> `unsigned int` m_nCombat_State(`const` `class` [CMonster](lua/classes/CMonster.md) *)
 
> `unsigned int` m_nEmotion_State(`const` `class` [CMonster](lua/classes/CMonster.md) *)
 
> `int` GetCritical_Exception_Rate(`void`)
 
> `int` GetViewAngleCap(`struct` `lua_State` *)
 
> `bool` Destroy(`unsigned char`,`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `int` UpdateLookAtPos(`struct` `lua_State` *)
 
> `void` UpdateLookAtPos(`void`)
 
> `bool` IsViewArea(`class` [CCharacter](lua/classes/CCharacter.md) *)
 
## Members
 
> `bool` m_bOper
 
> `bool` m_bApparition
 
> `bool` m_bDungeon
 
> `unsigned int` m_dwLastDestroyTime
 
> `unsigned int` m_dwDestroyNextTime
 
> `unsigned int` m_dwLastRecoverTime
 
> `float` m_fCreatePos_x
 
> `float` m_fCreatePos_y
 
> `float` m_fCreatePos_z
 
> `float` m_fLookAtPos_x
 
> `float` m_fLookAtPos_y
 
> `float` m_fLookAtPos_z
 
> `bool` m_bRobExp
 
> `bool` m_bRewardExp
 
> `bool` m_bStdItemLoot
 
> `struct` `_mon_active`* m_pActiveRec
 
> `struct` [_monster_fld](lua/classes/_monster_fld.md)* m_pMonRec
 
> `struct` [_dummy_position](lua/classes/_dummy_position.md)* m_pDumPosition
 
> `int` m_nHP
 
> `class` [CLootingMgr](lua/classes/CLootingMgr.md) m_LootMgr
 
> `class` `CMonsterAggroMgr` m_AggroMgr
 
> `class` `CMonsterHierarchy` m_MonHierarcy
 
> `struct` `MonsterSFContDamageToleracne` m_SFContDamageTolerance
 
> `unsigned char` m_byCreateDate_get(`unsigned __int64`)
 
> `void` m_byCreateDate_set(`unsigned __int64`,`unsigned char`)
 
> `unsigned int` m_LifeMax
 
> `unsigned int` m_LifeCicle
 
> `unsigned int` m_nCommonStateChunk
 
> `struct` `EmotionPresentationChecker` m_EmotionPresentationCheck
 
> `float` m_fYAngle
 
> `float` m_fStartLookAtPos_x
 
> `float` m_fStartLookAtPos_y
 
> `float` m_fStartLookAtPos_z
 
> `bool` m_bRotateMonster
 
> `struct` `MonsterStateData` m_MonsterStateData
 
> `struct` `MonsterStateData` m_BeforeMonsterStateData
 
> `class` [CCharacter](lua/classes/CCharacter.md)* m_pTargetChar
 
> `class` [CMonsterSkillPool](lua/classes/CMonsterSkillPool.md) m_MonsterSkillPool
 
> `int` m_DefPar_get(`unsigned __int64`)
 
> `void` m_DefPar_set(`unsigned __int64`,`int`)
 
> `int` m_nEventItemNum
 
> `struct` `_event_loot_item`* m_eventItem_get(`unsigned __int64`)
 
> `struct` `_event_respawn`* m_pEventRespawn
 
> `struct` `_event_set`* m_pEventSet
 
> `class` `CMonsterAI` m_AI
 
> `class` `CLuaSignalReActor` m_LuaSignalReActor
 
