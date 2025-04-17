# CHolyKeeper

---@class (exact) CHolyKeeper: CCharacter
 
## Members
 
> `int` m_nHP
 
> `unsigned int` m_dwLastDestroyTime
 
> `struct` [_monster_fld](lua/classes/_monster_fld.md)* m_pRec
 
> `struct` [_dummy_position](lua/classes/_dummy_position.md)* m_pPosCreate
 
> `struct` [_dummy_position](lua/classes/_dummy_position.md)* m_pPosActive
 
> `struct` [_dummy_position](lua/classes/_dummy_position.md)* m_pPosCenter
 
> `int` m_nMasterRace
 
> `bool` m_bExit
 
> `bool` m_bChaos
 
> `unsigned int` m_dwLastStopTime
 
> `int` m_nDefPart_get(`unsigned __int64`)
 
> `void` m_nDefPart_set(`unsigned __int64`,`int`)
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pLastMoveTarget
 
> `class` [CAttack](lua/classes/CAttack.md)* m_at
 
> `struct` [_attack_param](lua/classes/_attack_param.md) m_ap
 
> `bool` m_bDamageAbleState
 
> `int` m_nCurrLootIndex
 
> `int` m_nEndLootIndex
 
> `int` m_nCurrDropIndex
 
> `unsigned short` m_wMagnifications
 
> `unsigned short` m_wRange
 
> `unsigned short` m_wDropCntOnce
 
> `class` `CMyTimer` m_tmrDropTime
 
