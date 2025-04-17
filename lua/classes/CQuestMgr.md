# CQuestMgr
 
> `bool` IsProcNpcQuest(`const` `char` *)
 
> `bool` IsProcLinkNpcQuest(`class` [CQuestMgr](lua/classes/CQuestMgr.md) *,`int`)
 
> `void` DeleteQuestData(`unsigned char`)
 
> `void` CheckNPCQuestList(`const` `char` *,`unsigned char`,`struct` [_NPCQuestIndexTempData](lua/classes/_NPCQuestIndexTempData.md) *)
 
> `bool` IsPossibleRepeatNpcQuest(`const` `char` *,`int`)
 
> `bool` CanGiveupQuest(`unsigned char`)
 
> `bool` _CheckCondition(`struct` [_happen_event_condition_node](lua/classes/_happen_event_condition_node.md) *)
 
> `bool` DeleteQuestItem(`const` `char` *,`unsigned short`)
 
## Members
 
> `class` [CPlayer](lua/classes/CPlayer.md)* m_pMaster
 
> `struct` [_QUEST_DB_BASE](lua/classes/_QUEST_DB_BASE.md)* m_pQuestData
 
> `struct` [_happen_event_cont](lua/classes/_happen_event_cont.md) m_LastHappenEvent
 
> `struct` [_happen_event_cont](lua/classes/_happen_event_cont.md)* m_pTempHappenEvent_get(`unsigned __int64`)
 
> `unsigned int` m_dwOldTimeoutChecktime
 
