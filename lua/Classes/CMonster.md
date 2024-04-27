# CMonster
: public [CCharacter](lua/classes/CCharacter.md)
 
## Functions
 
> `int` GetCritical_Exception_Rate(`void`)
 
> `int` GetViewAngleCap(`struct` `lua_State` *)
 
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
 
> `struct` `_dummy_position`* m_pDumPosition
 
> `int` m_nHP
 
> `class` `CLootingMgr` m_LootMgr
 
> `class` `CMonsterAggroMgr` m_AggroMgr
 
> `class` `CMonsterHierarchy` m_MonHierarcy
 
> `struct` `MonsterSFContDamageToleracne` m_SFContDamageTolerance
 
> `unsigned char` m_byCreateDate_get(`int`)
 
> `void` m_byCreateDate_set(`int`,`unsigned char`)
 
> `unsigned int` m_LifeMax
 
> `unsigned int` m_LifeCicle
 
> `unsigned int` m_nCommonStateChunk
 
> `unsigned int` m_nMove_State_get(`const` `class` [CMonster](lua/classes/CMonster.md) *))
 
> `unsigned int` m_nCombat_State_get(`const` `class` [CMonster](lua/classes/CMonster.md) *))
 
> `unsigned int` m_nEmotion_State_get(`const` `class` [CMonster](lua/classes/CMonster.md) *))
 
> `struct` `EmotionPresentationChecker` m_EmotionPresentationCheck
 
> `float` m_fYAngle
 
> `float` m_fStartLookAtPos_x
 
> `float` m_fStartLookAtPos_y
 
> `float` m_fStartLookAtPos_z
 
> `bool` m_bRotateMonster
 
> `struct` `MonsterStateData` m_MonsterStateData
 
> `struct` `MonsterStateData` m_BeforeMonsterStateData
 
> `class` [CCharacter](lua/classes/CCharacter.md)* m_pTargetChar
 
> `class` `CMonsterSkillPool` m_MonsterSkillPool
 
> `int` m_DefPart_get(`int`)
 
> `void` m_DefPart_set(`int`,`int`)
 
> `int` m_nEventItemNum
 
> `struct` `_event_loot_item`* m_eventItem_get(`int`)
 
> `struct` `_event_respawn`* m_pEventRespawn
 
> `struct` `_event_set`* m_pEventSet
 
> `class` `CMonsterAI` m_AI
 
> `class` `CLuaSignalReActor` m_LuaSignalReActor
 
