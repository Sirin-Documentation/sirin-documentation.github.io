# CMapData
 
## Functions
 
> `bool` __eq(`const` `class` [CMapData](lua/classes/CMapData.md) *,`const` `class` [CMapData](lua/classes/CMapData.md) *)
 
> `int` GetRandPosInRange(`struct` `lua_State` *)
 
> `int` IsMapIn(`struct` `lua_State` *)
 
> `int` GetRectInRadius(`struct` `lua_State` *)
 
> `class` [CObjectList](lua/classes/CObjectList.md)* GetSectorListObj(`unsigned short`,`unsigned int`)
 
> `int` GetObjectListInRadius(`struct` `lua_State` *)
 
> `int` GetPlayerListInRadius(`struct` `lua_State` *)
 
> `int` GetSectorIndex(`class` [CMapData](lua/classes/CMapData.md) *,`float`,`float`)
 
## Members
 
> `bool` m_bUse
 
> `bool` m_bLoad
 
> `int` m_nMapIndex
 
> `class` [CLevel](lua/classes/CLevel.md) m_Level
 
> `int` m_nMapCode
 
> `struct` [_LAYER_SET](lua/classes/_LAYER_SET.md)* m_ls_get(`unsigned __int64`)
 
> `struct` `_MULTI_BLOCK`* m_mb
 
> `class` `CExtDummy` m_Dummy
 
> `int` m_nMapInPlayerNum
 
> `int` m_nMapInMonsterNum
 
> `int` m_nMonBlockNum
 
> `struct` `_mon_block`* m_pMonBlock
 
> `int` m_nMonDumNum
 
> `int` m_nPortalNum
 
> `struct` [_portal_dummy](lua/classes/_portal_dummy.md)* m_pPortal
 
> `int` m_nItemStoreDumNum
 
> `struct` [_store_dummy](lua/classes/_store_dummy.md)* m_pItemStoreDummy
 
> `int` m_nStartDumNum
 
> `struct` `_start_dummy`* m_pStartDummy
 
> `int` m_nBindDumNum
 
> `struct` `_bind_dummy`* m_pBindDummy
 
> `int` m_nResDumNum
 
> `struct` `_res_dummy`* m_pResDummy
 
> `int` m_nQuestDumNum
 
> `struct` `_quest_dummy`* m_pQuestDummy
 
> `struct` [_map_fld](lua/classes/_map_fld.md)* m_pMapSet
 
> `class` `CExtDummy`* m_pExtDummy_Town
 
> `int` m_nSafeDumNum
 
> `struct` `_safe_dummy`* m_pSafeDummy
 
> `class` `CDummyPosTable` m_tbSafeDumPos
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tbMonBlk
 
> `class` [CRecordData](lua/classes/CRecordData.md) m_tbPortal
 
> `class` `CDummyPosTable` m_tbMonDumPos
 
> `class` `CDummyPosTable` m_tbPortalDumPos
 
> `class` `CDummyPosTable` m_tbStoreDumPos
 
> `class` `CDummyPosTable` m_tbStartDumPos
 
> `class` `CDummyPosTable` m_tbBindDumPos
 
> `class` `CDummyPosTable` m_tbResDumPosHigh
 
> `class` `CDummyPosTable` m_tbResDumPosMiddle
 
> `class` `CDummyPosTable` m_tbResDumPosLow
 
> `class` `CDummyPosTable` m_tbQuestDumPos
 
> `struct` `_bsp_info` m_BspInfo
 
> `struct` [_sec_info](lua/classes/_sec_info.md) m_SecInfo
 
> `class` `CMyTimer` m_tmrMineGradeReSet
 
> `int` m_nMonTotalCount
 
