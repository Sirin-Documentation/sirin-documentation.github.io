# CCharacter

---@class (exact) CCharacter: CGameObject
 
> `int` InsertSFContEffect(`struct` `lua_State` *)
 
> `void` UpdateSFCont(`void`)
 
> `void` RemoveSFContEffect(`unsigned char`,`unsigned short`,`bool`,`bool`)
 
> `int` AssistForce(`struct` `lua_State` *)
 
> `int` AssistSkill(`struct` `lua_State` *)
 
> `bool` GetStealth(`bool`)
 
## Members
 
> `float` m_fTarPos_x
 
> `float` m_fTarPos_y
 
> `float` m_fTarPos_z
 
> `int` m_AroundNum
 
> `class` [CCharacter](lua/classes/CCharacter.md)* m_AroundSlot_get(`int`)
 
> `void` m_AroundSlot_set(`int`,`class` [CCharacter](lua/classes/CCharacter.md) *)
 
> `unsigned int` m_dwNextGenAttackTime
 
> `struct` [_sf_continous](lua/classes/_sf_continous.md)* m_SFCont_get(`int`,`int`)
 
> `struct` [_sf_continous](lua/classes/_sf_continous.md)* m_SFContAura_get(`int`,`int`)
 
> `unsigned int` m_dwEffSerialCounter
 
> `bool` m_bLastContEffectUpdate
 
> `unsigned short` m_wLastContEffect
 
> `struct` [_effect_parameter](lua/classes/_effect_parameter.md) m_EP
 
> `unsigned short` m_wEffectTempValue
 
> `unsigned int` m_dwPlayerSerial
 
> `const` `char`* m_wszPlayerName
 
> `int` m_nContEffectSec
 
> `class` `CMyTimer` m_tmrSFCont
 
