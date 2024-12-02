# CUserDB
 
> `unsigned int` GetActPoint(`unsigned char`)
 
> `bool` Update_User_Action_Point(`unsigned char`,`unsigned long`)
 
> `void` Update_MaxLevel(`unsigned char`)
 
> `bool` Update_ItemDur(`unsigned char`,`unsigned char`,`unsigned __int64`,`bool`)
 
> `bool` Update_ItemUpgrade(`unsigned char`,`unsigned char`,`unsigned long`,`bool`)
 
> `bool` Update_QuestDelete(`unsigned char`)
 
> `bool` Update_QuestInsert(`unsigned char`,`struct` [_QUEST_DB_BASE___LIST](lua/classes/_QUEST_DB_BASE___LIST.md) *)
 
> `bool` Update_QuestUpdate(`unsigned char`,`struct` [_QUEST_DB_BASE___LIST](lua/classes/_QUEST_DB_BASE___LIST.md) *,`bool`)
 
## Members
 
> `struct` `_GLBID` m_gidGlobal
 
> `struct` [_CLID](lua/classes/_CLID.md) m_idWorld
 
> `unsigned int` m_dwIP
 
> `unsigned int` m_dwTotalPlayMin
 
> `const` `char`* m_szAccountID
 
> `unsigned int` m_dwAccountSerial
 
> `unsigned int` m_ipAddress
 
> `unsigned char` m_byUserDgr
 
> `unsigned char` m_bySubDgr
 
> `const` `char`* m_wszAvatorName
 
> `const` `char`* m_aszAvatorName
 
> `unsigned int` m_dwSerial
 
> `unsigned char` m_byNameLen
 
> `const` `struct` `_REGED`* m_RegedList_get(`int`)
 
> `struct` `_AVATOR_DATA` m_AvatorData
 
> `struct` `_AVATOR_DATA` m_AvatorData_bk
 
> `const` `struct` `_NOT_ARRANGED_AVATOR_DB`* m_NotArrangedChar_get(`int`)
 
> `const` `unsigned int`* m_dwArrangePassCase0_get(`int`)
 
> `bool` m_bActive
 
> `bool` m_bField
 
> `bool` m_bWndFullMode
 
> `bool` m_bDBWaitState
 
> `struct` `_DB_QRY_SYN_DATA`* m_pDBPushData
 
> `bool` m_bChatLock
 
> `struct` `_SYNC_STATE` m_ss
 
> `unsigned int` m_dwOperLobbyTime
 
> `bool` m_bCreateTrunkFree
 
> `class` `CMyTimer` m_tmrCheckPlayMin
 
> `bool` m_bDataUpdate
 
> `unsigned int` m_dwTermContSaveTime
 
> `unsigned int` m_dwLastContSaveTime
 
> `bool` m_bNoneUpdateData
 
> `struct` `_BILLING_INFO` m_BillingInfo
 
> `bool` m_bBillingNoLogout
 
> `int` m_nTrans
 
> `class` `CRadarItemMgr` m_RadarItemMgr
 
