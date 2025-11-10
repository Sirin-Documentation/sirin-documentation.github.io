# CCharacter

---@class (exact) CCharacter: CGameObject
 
> `int` InsertSFContEffect(`struct` `lua_State` *)
 
> `void` UpdateSFCont(`void`)
 
> `void` RemoveSFContEffect(`unsigned char`,`unsigned short`,`bool`,`bool`)
 
> `void` RemoveSFContHelpByEffect(`int`,`int`)
 
> `int` AssistForce(`struct` `lua_State` *)
 
> `bool` AssistForceToOne(`class` [CCharacter](lua/classes/CCharacter.md) *,`struct` [_force_fld](lua/classes/_force_fld.md) *,`int`)
 
> `int` AssistSkill(`struct` `lua_State` *)
 
> `bool` AssistSkillToOne(`class` [CCharacter](lua/classes/CCharacter.md) *,`int`,`struct` [_skill_fld](lua/classes/_skill_fld.md) *,`int`)
 
> `bool` GetStealth(`bool`)
 
> `void` BreakStealth(`void`)
 
> `void` Stop(`void`)
 
> `int` FindEffectDst(`struct` `lua_State` *)
 
> `bool` IsEffectableDst(`const` `char` *,`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `int` GetAttackDamPoint(`int`,`int`,`int`,`class` [CCharacter](lua/classes/CCharacter.md) *,`bool`)
 
## Members
 
> `float` m_fTarPos_x
 
> `float` m_fTarPos_y
 
> `float` m_fTarPos_z
 
> `int` m_AroundNum
 
> `class` [CCharacter](lua/classes/CCharacter.md)* m_AroundSlot_get(`unsigned __int64`)
 
> `void` m_AroundSlot_set(`unsigned __int64`,`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `unsigned int` m_dwNextGenAttackTime
 
> `struct` [_sf_continous](lua/classes/_sf_continous.md)* m_SFCont_get(`unsigned __int64`,`unsigned __int64`)
 
> `struct` [_sf_continous](lua/classes/_sf_continous.md)* m_SFContAura_get(`unsigned __int64`,`unsigned __int64`)
 
> `unsigned int` m_dwEffSerialCounter
 
> `bool` m_bLastContEffectUpdate
 
> `unsigned short` m_wLastContEffect
 
> `struct` [_effect_parameter](lua/classes/_effect_parameter.md) m_EP
 
> `unsigned short` m_wEffectTempValue
 
> `unsigned int` m_dwPlayerSerial
 
> `const` `char`* m_wszPlayerName
 
> `int` m_nContEffectSec
 
> `class` `CMyTimer` m_tmrSFCont
 
