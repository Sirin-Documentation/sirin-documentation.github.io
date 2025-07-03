# CAnimus

---@class (exact) CAnimus: CCharacter
 
> `void` AlterExp(`__int64`)
 
## Members
 
> `unsigned char` m_byClassCode
 
> `int` m_nHP
 
> `int` m_nFP
 
> `unsigned __int64` m_dwExp
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pMaster
 
> `unsigned int` m_dwMasterSerial
 
> `const` `char`* m_wszMasterName
 
> `const` `char`* m_aszMasterName
 
> `unsigned char` m_byRoleCode
 
> `unsigned int` m_dwLastDestroyTime
 
> `float` m_fMoveSpeed
 
> `unsigned char` m_byPosRaceTown
 
> `class` [CMapData](lua/classes/CMapData.md)* m_pBeforeTownCheckMap
 
> `float` m_fBeforeTownCheckPos_x
 
> `float` m_fBeforeTownCheckPos_y
 
> `unsigned int` m_dwStunTime
 
> `unsigned int` m_dwBeAttackedTargetTime
 
> `class` [CCharacter](lua/classes/CCharacter.md)* m_pNextTarget
 
> `int` m_nMaxAttackPnt
 
> `unsigned int` m_tmNextEatMasterFP
 
> `struct` [_animus_fld](lua/classes/_animus_fld.md)* m_pRecord
 
> `int` m_nMaxHP
 
> `int` m_nMaxFP
 
> `float` m_Mightiness
 
> `int` m_DefPart_get(`unsigned __int64`)
 
> `void` m_DefPart_set(`unsigned __int64`,`int`)
 
> `unsigned int` m_dwAIMode
 
> `class` [CCharacter](lua/classes/CCharacter.md)* m_pTarget
 
> `class` `CAITimer`* m_AITimer_get(`unsigned __int64`)
 
> `struct` [SKILL](lua/classes/SKILL.md)* m_Skill_get(`unsigned __int64`)
 
