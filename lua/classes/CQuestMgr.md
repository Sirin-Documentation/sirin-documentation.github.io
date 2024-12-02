# CQuestMgr
 
> `bool` IsProcLinkNpcQuest(`class` [CQuestMgr](lua/classes/CQuestMgr.md) *,`int`)
 
> `void` DeleteQuestData(`unsigned char`)
 
> `void` CheckNPCQuestList(`const` `char` *,`unsigned char`,`struct` [_NPCQuestIndexTempData](lua/classes/_NPCQuestIndexTempData.md) *)
 
## Members
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pMaster
 
> `struct` [_QUEST_DB_BASE](lua/classes/_QUEST_DB_BASE.md)* m_pQuestData
 
> `struct` [_happen_event_cont](lua/classes/_happen_event_cont.md) m_LastHappenEvent
 
> `struct` [_happen_event_cont](lua/classes/_happen_event_cont.md)* m_pTempHappenEvent_get(`int`)
 
> `unsigned int` m_dwOldTimeoutChecktime
 
