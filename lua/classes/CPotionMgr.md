# CPotionMgr
 
## Functions
 
> `int` RemovePotionContEffect(`class` [CPotionMgr](lua/classes/CPotionMgr.md) *,`class` [CPlayer](lua/classes/CPlayer.md) *,`class` [_ContPotionData](lua/classes/_ContPotionData.md) *)
 
> `int` InsertPotionContEffect(`class` [CPotionMgr](lua/classes/CPotionMgr.md) *,`class` [CPlayer](lua/classes/CPlayer.md) *,`class` [_ContPotionData](lua/classes/_ContPotionData.md) *,`struct` [_skill_fld](lua/classes/_skill_fld.md) *,`unsigned int`)
 
> `int` ApplyPotion(`class` [CPlayer](lua/classes/CPlayer.md) *,`class` [CPlayer](lua/classes/CPlayer.md) *,`struct` [_skill_fld](lua/classes/_skill_fld.md) *,`struct` [_CheckPotion_fld](lua/classes/_CheckPotion_fld.md) *,`const` `struct` [_PotionItem_fld](lua/classes/_PotionItem_fld.md) *,`bool`)
 
> `void` SendMsg_InsertPotionContEffect(`class` [CPotionMgr](lua/classes/CPotionMgr.md) *,`class` [CPlayer](lua/classes/CPlayer.md) *,`struct` [_skill_fld](lua/classes/_skill_fld.md) *)
 
## Members
 
> `struct` `PotionInnerData` m_PotionInnerData
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblPotionEffectData
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tblPotionCheckData
 
