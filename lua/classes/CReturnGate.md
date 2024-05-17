# CReturnGate
: public [CGameObject](lua/classes/CGameObject.md)
 
## Functions
 
> `void` Clear(`void`)
 
> `void` Close(`void`)
 
> `int` Enter(`class` [CPlayer](lua/classes/CPlayer.md) *)
 
> `unsigned short` GetIndex(`void`)
 
> `class` [CPlayer](lua/classes/CPlayer.md)* GetOwner(`void`)
 
> `bool` IsClose(`void`)
 
> `bool` IsOpen(`void`)
 
> `bool` IsValidOwner(`void`)
 
> `int` IsValidPosition(`struct` `lua_State` *)
 
> `bool` Open(`struct` [CReturnGateCreateParam](lua/classes/CReturnGateCreateParam.md) *)
 
> `void` SendMsg_Create(`void`)
 
> `void` SendMsg_Destroy(`void`)
 
> `void` SendMsg_FixPosition(`int`)
 
> `void` SendMsg_MovePortal(`class` [CPlayer](lua/classes/CPlayer.md) *)
 
## Members
 
> `enum CReturnGate__STATE` m_eState
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pkOwner
 
> `unsigned int` m_dwOwnerSerial
 
> `class` [CMapData](lua/classes/CMapData.md)* m_pDestMap
 
> `float` m_fBindPos_x
 
> `float` m_fBindPos_y
 
> `float` m_fBindPos_z
 
> `unsigned int` m_dwCloseTime
 
