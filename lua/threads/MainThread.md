# MainThread
 
#### Namespaces
 
> [Sirin](lua/threads/MainThread.md#Sirin)
 
---
# Sirin
 
#### Namespaces
 
> [NATS](lua/threads/MainThread.md#SirinNATS)
 
> [console](lua/threads/MainThread.md#Sirinconsole)
 
> [luaThreadManager](lua/threads/MainThread.md#SirinluaThreadManager)
 
> [mainThread](lua/threads/MainThread.md#SirinmainThread)
 
#### Functions
 
> `static` `unsigned int` GetPrivateProfileIntA(`const` `char` *,`const` `char` *,`int`,`const` `char` *)
 
> `static` `int` GetPrivateProfileStringA(`struct` `lua_State` *)
 
> `static` `void` WriteA(`const` `char` *,`const` `char` *,`bool`,`bool`)
 
> `static` `void` WritePrivateProfileStringA(`const` `char` *,`const` `char` *,`const` `char` *,`const` `char` *)
 
> `static` `class` `luabridge__LuaRef` getFileList(`const` `char` *,`struct` `lua_State` *)
 
> `static` `class` `std__basic_string<char,struct std__char_traits<char>,class std__allocator<char> >` getUUIDv4(`void`)
 
> `static` `void` processAsyncCallback(`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`class` `std__basic_string<char`,`struct` `std__char_traits<char>`,`class` `std__allocator<char> >`,`unsigned __int64`)
 
#### Classes
 
> [CAssetController](lua/classes/CAssetController.md)
 
> [CLanguageAsset](lua/classes/CLanguageAsset.md)
 
> [CTranslationAsset](lua/classes/CTranslationAsset.md)
 
> [UUIDv4](lua/classes/UUIDv4.md)
 
> [VoidPtr](lua/classes/VoidPtr.md)
 
---
# Sirin.NATS
 
#### Functions
 
> `static` `void` publish(`const` `char` *,`const` `char` *)
 
---
# Sirin.console
 
#### Functions
 
> `static` `void` LogEx(`enum ConsoleForeground`,`enum ConsoleBackground`,`const` `char` *)
 
> `static` `void` LogEx_NoFile(`enum ConsoleForeground`,`enum ConsoleBackground`,`const` `char` *)
 
---
# Sirin.luaThreadManager
 
#### Functions
 
> `static` `int` CopyFromContext(`struct` `lua_State` *)
 
> `static` `int` CopyToContext(`struct` `lua_State` *)
 
> `static` `void` DeleteGlobal(`class` [ILuaContext](lua/classes/ILuaContext.md) *,`const` `char` *)
 
> `static` `bool` IsExistGlobal(`class` [ILuaContext](lua/classes/ILuaContext.md) *,`const` `char` *)
 
> `static` `class` [ILuaContext](lua/classes/ILuaContext.md)* LuaGetThread(`const` `char` *)
 
> `static` `class` [ILuaContext](lua/classes/ILuaContext.md)* LuaGetThread(`unsigned int`)
 
#### Classes
 
> [ILuaContext](lua/classes/ILuaContext.md)
 
---
# Sirin.mainThread
 
#### Namespaces
 
> [modButtonExt](lua/threads/MainThread.md#SirinmainThreadmodButtonExt)
 
> [modChargeItem](lua/threads/MainThread.md#SirinmainThreadmodChargeItem)
 
> [modContEffect](lua/threads/MainThread.md#SirinmainThreadmodContEffect)
 
> [modItemPropertySkin](lua/threads/MainThread.md#SirinmainThreadmodItemPropertySkin)
 
> [modPotionEffect](lua/threads/MainThread.md#SirinmainThreadmodPotionEffect)
 
> [modReturnGate](lua/threads/MainThread.md#SirinmainThreadmodReturnGate)
 
> [modStackExt](lua/threads/MainThread.md#SirinmainThreadmodStackExt)
 
#### Members
 
> `float`* ANIMUS_EXP_RATE
 
> `float`* FORCE_LIVER_ACCUM_RATE
 
> `float`* ITEM_ROOT_RATE
 
> `float`* MASTERY_GET_RATE
 
> `float`* MINE_SPEED_RATE
 
> `unsigned char`* Major_Add_Character
 
> `unsigned char`* Major_Bind_HQ
 
> `unsigned char`* Major_Cash_Item
 
> `unsigned char`* Major_Scroll_Item
 
> `unsigned char`* Major_Sette_Mine_Elan_Map
 
> `float`* PCBANG_PRIMIUM_FAVOR__ANIMUS_EXP
 
> `float`* PCBANG_PRIMIUM_FAVOR__BASE_MASTERY
 
> `float`* PCBANG_PRIMIUM_FAVOR__ITEM_DROP
 
> `float`* PCBANG_PRIMIUM_FAVOR__MINING_SPEED
 
> `float`* PCBANG_PRIMIUM_FAVOR__PLAYER_EXP
 
> `float`* PCBANG_PRIMIUM_FAVOR__PLAYER_LOST_EXP
 
> `float`* PCBANG_PRIMIUM_FAVOR__PVP_RATE
 
> `float`* PCBANG_PRIMIUM_FAVOR__SKILL_FORCE_MASTERY
 
> `float`* PLAYER_EXP_RATE
 
> `float`* PLAYER_LOST_EXP
 
> `float`* TSVR_ADD_DARKHOLE_REWARD_RATE
 
> `float`* UNIT_HIT_EXP
 
> `class` [CGameStatistics](lua/classes/CGameStatistics.md)* g_GameStatistics
 
> `class` [CHolyStoneSystem](lua/classes/CHolyStoneSystem.md)* g_HolySys
 
> `class` [CMainThread](lua/classes/CMainThread.md)* g_Main
 
> `class` [CMapOperation](lua/classes/CMapOperation.md)* g_MapOper
 
> `class` [CPotionMgr](lua/classes/CPotionMgr.md)* g_PotionMgr
 
> `unsigned int`* g_dwCurTime
 
> `class` [CAttack](lua/classes/CAttack.md)** g_pAttack
 
#### Functions
 
> `static` `void` AddPremDays(`class` [CPlayer](lua/classes/CPlayer.md) *,`unsigned int`)
 
> `static` `void` AddPremSeconds(`class` [CPlayer](lua/classes/CPlayer.md) *,`unsigned int`)
 
> `static` `void` AlterCash(`class` [CPlayer](lua/classes/CPlayer.md) *,`int`)
 
> `static` `class` [CRecordData](lua/classes/CRecordData.md)* CQuestMgr__s_tblQuestHappenEvent_get(`class` [CRecordData](lua/classes/CRecordData.md)*(__cdecl *)(int))
 
> `static` `struct` [_animus_fld](lua/classes/_animus_fld.md)* GetAnimusFldFromExp(`int`,`unsigned __int64`)
 
> `static` `struct` [_animus_fld](lua/classes/_animus_fld.md)* GetAnimusFldFromLv(`int`,`unsigned long`)
 
> `static` `unsigned long` GetBitAfterSetLimSocket(`unsigned char`)
 
> `static` `unsigned long` GetBitAfterUpgrade(`unsigned long`,`unsigned long`,`unsigned char`)
 
> `static` `unsigned char` GetDefItemUpgSocketNum(`int`,`int`)
 
> `static` `int` GetItemDurPoint(`int`,`int`)
 
> `static` `int` GetItemEquipGrade(`int`,`int`)
 
> `static` `int` GetItemEquipGrade(`int`,`const` `char` *)
 
> `static` `int` GetItemEquipLevel(`int`,`int`)
 
> `static` `unsigned char` GetItemGrade(`int`,`int`)
 
> `static` `int` GetItemTableCode(`const` `char` *)
 
> `static` `unsigned char` GetItemUpgLimSocket(`unsigned int`)
 
> `static` `unsigned char` GetItemUpgedLv(`unsigned int`)
 
> `static` `unsigned int` GetLoopTime(`void`)
 
> `static` `unsigned long` GetMaxParamFromExp(`int`,`unsigned __int64`)
 
> `static` `bool` IsAddAbleTalikToItem(`unsigned char`,`unsigned short`,`unsigned long`,`struct` [_ItemUpgrade_fld](lua/classes/_ItemUpgrade_fld.md) *)
 
> `static` `bool` IsOverLapItem(`int`)
 
> `static` `bool` IsProtectItem(`int`)
 
> `static` `class` [CUserDB](lua/classes/CUserDB.md)* SearchAvatorWithName(`const` `char` *)
 
> `static` `int` activateLayer(`unsigned int`,`unsigned short`,`bool`)
 
> `static` `struct` [_AmuletItem_fld](lua/classes/_AmuletItem_fld.md)* baseToAmuletItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_animus_fld](lua/classes/_animus_fld.md)* baseToAnimus(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_AnimusItem_fld](lua/classes/_AnimusItem_fld.md)* baseToAnimusItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_BagItem_fld](lua/classes/_BagItem_fld.md)* baseToBagItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_BatteryItem_fld](lua/classes/_BatteryItem_fld.md)* baseToBatteryItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_BattleDungeonItem_fld](lua/classes/_BattleDungeonItem_fld.md)* baseToBattleDungeonItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_BootyItem_fld](lua/classes/_BootyItem_fld.md)* baseToBootyItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_BoxItem_fld](lua/classes/_BoxItem_fld.md)* baseToBoxItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_BulletItem_fld](lua/classes/_BulletItem_fld.md)* baseToBulletItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_CheckPotion_fld](lua/classes/_CheckPotion_fld.md)* baseToCheckPotion(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_class_fld](lua/classes/_class_fld.md)* baseToClass(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_CloakItem_fld](lua/classes/_CloakItem_fld.md)* baseToCloakItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_CouponItem_fld](lua/classes/_CouponItem_fld.md)* baseToCouponItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_DfnEquipItem_fld](lua/classes/_DfnEquipItem_fld.md)* baseToDfnEquipItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_EventItem_fld](lua/classes/_EventItem_fld.md)* baseToEventItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_FaceItem_fld](lua/classes/_FaceItem_fld.md)* baseToFaceItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_FIRECRACKER_fld](lua/classes/_FIRECRACKER_fld.md)* baseToFirecrackerItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_force_fld](lua/classes/_force_fld.md)* baseToForce(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_ForceItem_fld](lua/classes/_ForceItem_fld.md)* baseToForceItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_GuardTowerItem_fld](lua/classes/_GuardTowerItem_fld.md)* baseToGuardTowerItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_ItemLooting_fld](lua/classes/_ItemLooting_fld.md)* baseToItemLooting(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_ItemMakeData_fld](lua/classes/_ItemMakeData_fld.md)* baseToItemMakeData(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_ItemUpgrade_fld](lua/classes/_ItemUpgrade_fld.md)* baseToItemUpgrade(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_MakeToolItem_fld](lua/classes/_MakeToolItem_fld.md)* baseToMakeToolItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_map_fld](lua/classes/_map_fld.md)* baseToMap(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_MapItem_fld](lua/classes/_MapItem_fld.md)* baseToMapItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_mon_active_fld](lua/classes/_mon_active_fld.md)* baseToMonActive(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_mon_block_fld](lua/classes/_mon_block_fld.md)* baseToMonBlock(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_monster_fld](lua/classes/_monster_fld.md)* baseToMonsterCharacter(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_NPCLink_fld](lua/classes/_NPCLink_fld.md)* baseToNPCLinkItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_npc_fld](lua/classes/_npc_fld.md)* baseToNPCharacter(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_OreCutting_fld](lua/classes/_OreCutting_fld.md)* baseToOreCutting(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_OreItem_fld](lua/classes/_OreItem_fld.md)* baseToOreItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_player_fld](lua/classes/_player_fld.md)* baseToPlayerCharacter(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_portal_fld](lua/classes/_portal_fld.md)* baseToPortal(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_PotionItem_fld](lua/classes/_PotionItem_fld.md)* baseToPotionItemFld(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_Quest_fld](lua/classes/_Quest_fld.md)* baseToQuest(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_QuestHappenEvent_fld](lua/classes/_QuestHappenEvent_fld.md)* baseToQuestEvent(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_RadarItem_fld](lua/classes/_RadarItem_fld.md)* baseToRadarItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_RecoveryItem_fld](lua/classes/_RecoveryItem_fld.md)* baseToRecoveryItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_ResourceItem_fld](lua/classes/_ResourceItem_fld.md)* baseToResourceItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_RingItem_fld](lua/classes/_RingItem_fld.md)* baseToRingItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_SetItemEff_fld](lua/classes/_SetItemEff_fld.md)* baseToSetItemEff(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_SiegeKitItem_fld](lua/classes/_SiegeKitItem_fld.md)* baseToSiegeKitItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_skill_fld](lua/classes/_skill_fld.md)* baseToSkill(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_StoreList_fld](lua/classes/_StoreList_fld.md)* baseToStoreList(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_TicketItem_fld](lua/classes/_TicketItem_fld.md)* baseToTicketItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_TimeItem_fld](lua/classes/_TimeItem_fld.md)* baseToTimeItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_TOWNItem_fld](lua/classes/_TOWNItem_fld.md)* baseToTownItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_TrapItem_fld](lua/classes/_TrapItem_fld.md)* baseToTrapItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_UnitBullet_fld](lua/classes/_UnitBullet_fld.md)* baseToUnitBullet(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_UnitFrame_fld](lua/classes/_UnitFrame_fld.md)* baseToUnitFrame(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_UnitKeyItem_fld](lua/classes/_UnitKeyItem_fld.md)* baseToUnitKeyItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_UnitPart_fld](lua/classes/_UnitPart_fld.md)* baseToUnitPart(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_UNmannedminer_fld](lua/classes/_UNmannedminer_fld.md)* baseToUnmannedMinerItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `struct` [_WeaponItem_fld](lua/classes/_WeaponItem_fld.md)* baseToWeaponItem(`struct` [_base_fld](lua/classes/_base_fld.md) *)
 
> `static` `class` [CItemBox](lua/classes/CItemBox.md)* createItemBox(`const` `char` *,`unsigned int`,`unsigned __int64`,`unsigned int`,`unsigned char`,`class` [CMapData](lua/classes/CMapData.md) *,`unsigned short`,`float`,`float`,`float`,`unsigned int`,`bool`,`class` [CPlayer](lua/classes/CPlayer.md) *,`bool`,`class` [CCharacter](lua/classes/CCharacter.md) *,`class` [CPlayer](lua/classes/CPlayer.md) *,`unsigned char`,`bool`)
 
> `static` `class` [CMonster](lua/classes/CMonster.md)* createMonster(`class` [CMapData](lua/classes/CMapData.md) *,`unsigned short`,`float`,`float`,`float`,`const` `char` *,`bool`,`bool`,`bool`)
 
> `static` `class` [CItemBox](lua/classes/CItemBox.md)* g_ItemBox_get(`class` [CItemBox](lua/classes/CItemBox.md)*(__cdecl *)(int))
 
> `static` `class` [CPlayer](lua/classes/CPlayer.md)* g_Player_get(`class` [CPlayer](lua/classes/CPlayer.md)*(__cdecl *)(unsigned int))
 
> `static` `class` [CUserDB](lua/classes/CUserDB.md)* g_UserDB_get(`class` [CUserDB](lua/classes/CUserDB.md)*(__cdecl *)(unsigned int))
 
> `static` `const` `char`* getCheatWord(`unsigned int`)
 
> `static` `int` getCheatWordNum(`void`)
 
> `static` `class` [CMapData](lua/classes/CMapData.md)* getMapData(`const` `char` *)
 
> `static` `class` [CMapData](lua/classes/CMapData.md)* getMapData(`unsigned int`)
 
> `static` `class` [CPlayer](lua/classes/CPlayer.md)* getPlayerBySerial(`unsigned int`)
 
> `static` `class` [AutominePersonal](lua/classes/AutominePersonal.md)* objectToAMP(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CAnimus](lua/classes/CAnimus.md)* objectToAnimus(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CCharacter](lua/classes/CCharacter.md)* objectToCharacter(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CDummyRift](lua/classes/CDummyRift.md)* objectToDummyRift(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CHolyKeeper](lua/classes/CHolyKeeper.md)* objectToHolyKeeper(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CHolyStone](lua/classes/CHolyStone.md)* objectToHolyStone(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CItemBox](lua/classes/CItemBox.md)* objectToItemBox(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CMonster](lua/classes/CMonster.md)* objectToMonster(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CNuclearBomb](lua/classes/CNuclearBomb.md)* objectToNuclearBomb(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CPlayer](lua/classes/CPlayer.md)* objectToPlayer(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CReturnGate](lua/classes/CReturnGate.md)* objectToReturnGate(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CGuardTower](lua/classes/CGuardTower.md)* objectToTower(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [CTrap](lua/classes/CTrap.md)* objectToTrap(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `class` [VoidPtr](lua/classes/VoidPtr.md)* objectToVoid(`class` [CGameObject](lua/classes/CGameObject.md) *)
 
> `static` `bool` processAsyncCheatCommand(`class` [CPlayer](lua/classes/CPlayer.md) *,`const` `char` *)
 
> `static` `bool` processCheatCommand(`class` [CPlayer](lua/classes/CPlayer.md) *,`const` `char` *)
 
> `static` `bool` registCheat(`const` `char` *,`const` `char` *,`const` `char` *)
 
> `static` `int` teleportPlayer(`unsigned int`,`unsigned int`,`float`,`float`,`float`,`unsigned short`)
 
> `static` `int` teleportPlayer(`class` [CPlayer](lua/classes/CPlayer.md) *,`class` [CMapData](lua/classes/CMapData.md) *,`float`,`float`,`float`,`unsigned short`)
 
> `static` `bool` unregistCheat(`const` `char` *)
 
> `static` `class` [CGameObject](lua/classes/CGameObject.md)* voidToObject(`class` [VoidPtr](lua/classes/VoidPtr.md) *)
 
#### Classes
 
> [AutominePersonal](lua/classes/AutominePersonal.md)
 
> [CActionPointSystemMgr](lua/classes/CActionPointSystemMgr.md)
 
> [CAnimus](lua/classes/CAnimus.md)
 
> [CAttack](lua/classes/CAttack.md)
 
> [CBsp](lua/classes/CBsp.md)
 
> [CCharacter](lua/classes/CCharacter.md)
 
> [CDummyRift](lua/classes/CDummyRift.md)
 
> [CGameObject](lua/classes/CGameObject.md)
 
> [CGameStatistics](lua/classes/CGameStatistics.md)
 
> [CGameStatistics___DAY](lua/classes/CGameStatistics___DAY.md)
 
> [CGameStatistics___map](lua/classes/CGameStatistics___map.md)
 
> [CGuardTower](lua/classes/CGuardTower.md)
 
> [CHolyKeeper](lua/classes/CHolyKeeper.md)
 
> [CHolyScheduleData](lua/classes/CHolyScheduleData.md)
 
> [CHolyScheduleData____HolyScheduleNode](lua/classes/CHolyScheduleData____HolyScheduleNode.md)
 
> [CHolyStone](lua/classes/CHolyStone.md)
 
> [CHolyStoneSaveData](lua/classes/CHolyStoneSaveData.md)
 
> [CHolyStoneSystem](lua/classes/CHolyStoneSystem.md)
 
> [CItemBox](lua/classes/CItemBox.md)
 
> [CItemUpgradeTable](lua/classes/CItemUpgradeTable.md)
 
> [CLevel](lua/classes/CLevel.md)
 
> [CLuaSendBuffer](lua/classes/CLuaSendBuffer.md)
 
> [CMainThread](lua/classes/CMainThread.md)
 
> [CMapData](lua/classes/CMapData.md)
 
> [CMapOperation](lua/classes/CMapOperation.md)
 
> [CMgrAvatorItemHistory](lua/classes/CMgrAvatorItemHistory.md)
 
> [CMonster](lua/classes/CMonster.md)
 
> [CNuclearBomb](lua/classes/CNuclearBomb.md)
 
> [CObjectList](lua/classes/CObjectList.md)
 
> [CPartyPlayer](lua/classes/CPartyPlayer.md)
 
> [CPlayer](lua/classes/CPlayer.md)
 
> [CPlayerDB](lua/classes/CPlayerDB.md)
 
> [CPotionMgr](lua/classes/CPotionMgr.md)
 
> [CPotionParam](lua/classes/CPotionParam.md)
 
> [CPvpOrderView](lua/classes/CPvpOrderView.md)
 
> [CPvpUserAndGuildRankingSystem](lua/classes/CPvpUserAndGuildRankingSystem.md)
 
> [CRecordData](lua/classes/CRecordData.md)
 
> [CReturnGate](lua/classes/CReturnGate.md)
 
> [CReturnGateCreateParam](lua/classes/CReturnGateCreateParam.md)
 
> [CTrap](lua/classes/CTrap.md)
 
> [CUserDB](lua/classes/CUserDB.md)
 
> [EffectData](lua/classes/EffectData.md)
 
> [ItemCombineMgr](lua/classes/ItemCombineMgr.md)
 
> [_100_per_random_table](lua/classes/_100_per_random_table.md)
 
> [_AmuletItem_fld](lua/classes/_AmuletItem_fld.md)
 
> [_AnimusItem_fld](lua/classes/_AnimusItem_fld.md)
 
> [_BagItem_fld](lua/classes/_BagItem_fld.md)
 
> [_BatteryItem_fld](lua/classes/_BatteryItem_fld.md)
 
> [_BattleDungeonItem_fld](lua/classes/_BattleDungeonItem_fld.md)
 
> [_BootyItem_fld](lua/classes/_BootyItem_fld.md)
 
> [_BoxItem_fld](lua/classes/_BoxItem_fld.md)
 
> [_BulletItem_fld](lua/classes/_BulletItem_fld.md)
 
> [_CLID](lua/classes/_CLID.md)
 
> [_COMBINEKEY](lua/classes/_COMBINEKEY.md)
 
> [_CheckPotion_fld](lua/classes/_CheckPotion_fld.md)
 
> [_CheckPotion_fld___CheckEffectCode](lua/classes/_CheckPotion_fld___CheckEffectCode.md)
 
> [_CloakItem_fld](lua/classes/_CloakItem_fld.md)
 
> [_ContPotionData](lua/classes/_ContPotionData.md)
 
> [_CouponItem_fld](lua/classes/_CouponItem_fld.md)
 
> [_DfnEquipItem_fld](lua/classes/_DfnEquipItem_fld.md)
 
> [_EventItem_fld](lua/classes/_EventItem_fld.md)
 
> [_Exttrunk_db_load](lua/classes/_Exttrunk_db_load.md)
 
> [_FIRECRACKER_fld](lua/classes/_FIRECRACKER_fld.md)
 
> [_FaceItem_fld](lua/classes/_FaceItem_fld.md)
 
> [_ForceItem_fld](lua/classes/_ForceItem_fld.md)
 
> [_GuardTowerItem_fld](lua/classes/_GuardTowerItem_fld.md)
 
> [_GuardTowerItem_fld____material](lua/classes/_GuardTowerItem_fld____material.md)
 
> [_ITEMCOMBINE_DB_BASE](lua/classes/_ITEMCOMBINE_DB_BASE.md)
 
> [_ITEMCOMBINE_DB_BASE___LIST](lua/classes/_ITEMCOMBINE_DB_BASE___LIST.md)
 
> [_ItemLooting_fld](lua/classes/_ItemLooting_fld.md)
 
> [_ItemMakeData_fld](lua/classes/_ItemMakeData_fld.md)
 
> [_ItemMakeData_fld___material_list](lua/classes/_ItemMakeData_fld___material_list.md)
 
> [_ItemMakeData_fld___output_list](lua/classes/_ItemMakeData_fld___output_list.md)
 
> [_ItemUpgrade_fld](lua/classes/_ItemUpgrade_fld.md)
 
> [_LAYER_SET](lua/classes/_LAYER_SET.md)
 
> [_MASTERY_PARAM](lua/classes/_MASTERY_PARAM.md)
 
> [_MakeToolItem_fld](lua/classes/_MakeToolItem_fld.md)
 
> [_MapItem_fld](lua/classes/_MapItem_fld.md)
 
> [_NPCLink_fld](lua/classes/_NPCLink_fld.md)
 
> [_OreCutting_fld](lua/classes/_OreCutting_fld.md)
 
> [_OreItem_fld](lua/classes/_OreItem_fld.md)
 
> [_PotionItem_fld](lua/classes/_PotionItem_fld.md)
 
> [_QUEST_CASH](lua/classes/_QUEST_CASH.md)
 
> [_QUEST_CASH_OTHER](lua/classes/_QUEST_CASH_OTHER.md)
 
> [_QuestHappenEvent_fld](lua/classes/_QuestHappenEvent_fld.md)
 
> [_Quest_fld](lua/classes/_Quest_fld.md)
 
> [_RadarItem_fld](lua/classes/_RadarItem_fld.md)
 
> [_RecoveryItem_fld](lua/classes/_RecoveryItem_fld.md)
 
> [_ResourceItem_fld](lua/classes/_ResourceItem_fld.md)
 
> [_RingItem_fld](lua/classes/_RingItem_fld.md)
 
> [_STAT_DB_BASE](lua/classes/_STAT_DB_BASE.md)
 
> [_STORAGE_LIST](lua/classes/_STORAGE_LIST.md)
 
> [_STORAGE_LIST___db_con](lua/classes/_STORAGE_LIST___db_con.md)
 
> [_STORAGE_LIST___storage_con](lua/classes/_STORAGE_LIST___storage_con.md)
 
> [_STORAGE_POS](lua/classes/_STORAGE_POS.md)
 
> [_STORAGE_POS_INDIV](lua/classes/_STORAGE_POS_INDIV.md)
 
> [_SetItemEff_fld](lua/classes/_SetItemEff_fld.md)
 
> [_SiegeKitItem_fld](lua/classes/_SiegeKitItem_fld.md)
 
> [_StoreList_fld](lua/classes/_StoreList_fld.md)
 
> [_TOWER_PARAM](lua/classes/_TOWER_PARAM.md)
 
> [_TOWER_PARAM___list](lua/classes/_TOWER_PARAM___list.md)
 
> [_TOWNItem_fld](lua/classes/_TOWNItem_fld.md)
 
> [_TRAP_PARAM](lua/classes/_TRAP_PARAM.md)
 
> [_TRAP_PARAM___param](lua/classes/_TRAP_PARAM___param.md)
 
> [_TicketItem_fld](lua/classes/_TicketItem_fld.md)
 
> [_TimeItem_fld](lua/classes/_TimeItem_fld.md)
 
> [_TrapItem_fld](lua/classes/_TrapItem_fld.md)
 
> [_UNIT_DB_BASE](lua/classes/_UNIT_DB_BASE.md)
 
> [_UNIT_DB_BASE___LIST](lua/classes/_UNIT_DB_BASE___LIST.md)
 
> [_UNmannedminer_fld](lua/classes/_UNmannedminer_fld.md)
 
> [_UnitBullet_fld](lua/classes/_UnitBullet_fld.md)
 
> [_UnitFrame_fld](lua/classes/_UnitFrame_fld.md)
 
> [_UnitKeyItem_fld](lua/classes/_UnitKeyItem_fld.md)
 
> [_UnitPart_fld](lua/classes/_UnitPart_fld.md)
 
> [_WEAPON_PARAM](lua/classes/_WEAPON_PARAM.md)
 
> [_WeaponItem_fld](lua/classes/_WeaponItem_fld.md)
 
> [__holy_keeper_data](lua/classes/__holy_keeper_data.md)
 
> [__holy_stone_data](lua/classes/__holy_stone_data.md)
 
> [_action_node](lua/classes/_action_node.md)
 
> [_animus_create_setdata](lua/classes/_animus_create_setdata.md)
 
> [_animus_db_load](lua/classes/_animus_db_load.md)
 
> [_animus_fld](lua/classes/_animus_fld.md)
 
> [_attack_param](lua/classes/_attack_param.md)
 
> [_bag_db_load](lua/classes/_bag_db_load.md)
 
> [_base_fld](lua/classes/_base_fld.md)
 
> [_be_damaged_char](lua/classes/_be_damaged_char.md)
 
> [_be_damaged_player](lua/classes/_be_damaged_player.md)
 
> [_character_create_setdata](lua/classes/_character_create_setdata.md)
 
> [_character_db_load](lua/classes/_character_db_load.md)
 
> [_class_fld](lua/classes/_class_fld.md)
 
> [_class_fld___bns_item](lua/classes/_class_fld___bns_item.md)
 
> [_combine_ex_item_request_clzo](lua/classes/_combine_ex_item_request_clzo.md)
 
> [_combine_ex_item_request_clzo___list](lua/classes/_combine_ex_item_request_clzo___list.md)
 
> [_combine_ex_item_result_zocl](lua/classes/_combine_ex_item_result_zocl.md)
 
> [_combine_ex_item_result_zocl___Result_ItemList_Buff](lua/classes/_combine_ex_item_result_zocl___Result_ItemList_Buff.md)
 
> [_combine_ex_item_result_zocl____item](lua/classes/_combine_ex_item_result_zocl____item.md)
 
> [_consume_item_list](lua/classes/_consume_item_list.md)
 
> [_cont_param_list](lua/classes/_cont_param_list.md)
 
> [_dummy_position](lua/classes/_dummy_position.md)
 
> [_effect_parameter](lua/classes/_effect_parameter.md)
 
> [_embellish_db_load](lua/classes/_embellish_db_load.md)
 
> [_equip_db_load](lua/classes/_equip_db_load.md)
 
> [_force_db_load](lua/classes/_force_db_load.md)
 
> [_force_fld](lua/classes/_force_fld.md)
 
> [_happen_event_condition_node](lua/classes/_happen_event_condition_node.md)
 
> [_happen_event_node](lua/classes/_happen_event_node.md)
 
> [_keeper_create_setdata](lua/classes/_keeper_create_setdata.md)
 
> [_map_fld](lua/classes/_map_fld.md)
 
> [_mastery_lim_data](lua/classes/_mastery_lim_data.md)
 
> [_mastery_up_data](lua/classes/_mastery_up_data.md)
 
> [_mon_active_fld](lua/classes/_mon_active_fld.md)
 
> [_mon_block_fld](lua/classes/_mon_block_fld.md)
 
> [_mon_block_fld___dummy_info](lua/classes/_mon_block_fld___dummy_info.md)
 
> [_monster_fld](lua/classes/_monster_fld.md)
 
> [_monster_fld___EmotionPresentation](lua/classes/_monster_fld___EmotionPresentation.md)
 
> [_monster_fld____child_mon](lua/classes/_monster_fld____child_mon.md)
 
> [_npc_fld](lua/classes/_npc_fld.md)
 
> [_nuclear_create_setdata](lua/classes/_nuclear_create_setdata.md)
 
> [_object_create_setdata](lua/classes/_object_create_setdata.md)
 
> [_object_id](lua/classes/_object_id.md)
 
> [_object_list_point](lua/classes/_object_list_point.md)
 
> [_personal_amine_inven_db_load](lua/classes/_personal_amine_inven_db_load.md)
 
> [_player_fld](lua/classes/_player_fld.md)
 
> [_portal_dummy](lua/classes/_portal_dummy.md)
 
> [_portal_fld](lua/classes/_portal_fld.md)
 
> [_quest_fail_condition](lua/classes/_quest_fail_condition.md)
 
> [_quest_reward_item](lua/classes/_quest_reward_item.md)
 
> [_quest_reward_mastery](lua/classes/_quest_reward_mastery.md)
 
> [_record_bin_header](lua/classes/_record_bin_header.md)
 
> [_sec_info](lua/classes/_sec_info.md)
 
> [_sf_continous](lua/classes/_sf_continous.md)
 
> [_skill_fld](lua/classes/_skill_fld.md)
 
> [_skill_lv_up_data](lua/classes/_skill_lv_up_data.md)
 
> [_tower_create_setdata](lua/classes/_tower_create_setdata.md)
 
> [_trap_create_setdata](lua/classes/_trap_create_setdata.md)
 
> [_trunk_db_load](lua/classes/_trunk_db_load.md)
 
> [cStaticMember_Player](lua/classes/cStaticMember_Player.md)
 
> [effect_parameter____param_data](lua/classes/effect_parameter____param_data.md)
 
> [sell_info](lua/classes/sell_info.md)
 
---
# Sirin.mainThread.modButtonExt
 
#### Functions
 
> `static` `bool` IsBeNearButton(`class` [CPlayer](lua/classes/CPlayer.md) *,`unsigned short`)
 
> `static` `bool` IsBeNearExchangeButton(`class` [CPlayer](lua/classes/CPlayer.md) *,`unsigned short`)
 
> `static` `void` RegisterButtons(`void`)
 
---
# Sirin.mainThread.modChargeItem
 
#### Functions
 
> `static` `unsigned __int64` giveItemByName(`const` `char` *,`const` `char` *,`unsigned __int64`,`unsigned int`,`unsigned int`,`bool`)
 
> `static` `unsigned __int64` giveItemBySerial(`unsigned int`,`const` `char` *,`unsigned __int64`,`unsigned int`,`unsigned int`,`bool`)
 
> `static` `void` pushChargeItem(`class` [CPlayer](lua/classes/CPlayer.md) *,`const` `char` *,`unsigned __int64`,`unsigned int`,`unsigned int`)
 
> `static` `int` takeItemBySerial(`unsigned int`,`const` `char` *,`unsigned int`,`unsigned __int64`,`unsigned int`,`int`)
 
---
# Sirin.mainThread.modContEffect
 
#### Functions
 
> `static` `unsigned int` getMaxPotionNum(`void`)
 
> `static` `unsigned int` getMaxSFNum(`unsigned int`)
 
> `static` `struct` [_sf_continous_ex](lua/classes/_sf_continous_ex.md)* getPlayerPotion(`class` [CPlayer](lua/classes/CPlayer.md) *,`int`)
 
> `static` `struct` [_sf_continous_ex](lua/classes/_sf_continous_ex.md)* getPlayersfcontEx(`class` [CPlayer](lua/classes/CPlayer.md) *,`int`,`int`)
 
> `static` `bool` isUse(`void`)
 
> `static` `struct` [_sf_continous_ex](lua/classes/_sf_continous_ex.md)* sfcontTosfcontEx(`struct` [_sf_continous](lua/classes/_sf_continous.md) *)
 
#### Classes
 
> [_sf_continous_ex](lua/classes/_sf_continous_ex.md)
 
---
# Sirin.mainThread.modItemPropertySkin
 
#### Functions
 
> `static` `void` applySkinToItem(`unsigned int`,`unsigned __int64`,`unsigned char`,`unsigned short`)
 
> `static` `void` deleteProperty(`unsigned __int64`)
 
> `static` `void` insertProperty(`unsigned __int64`,`unsigned int`,`unsigned int`)
 
> `static` `bool` isSkinItem(`unsigned __int64`)
 
> `static` `void` updateOwner(`unsigned __int64`,`unsigned int`)
 
> `static` `void` updateProperty(`unsigned __int64`,`unsigned int`)
 
---
# Sirin.mainThread.modPotionEffect
 
#### Functions
 
> `static` `bool` addHandler(`unsigned int`)
 
> `static` `bool` removeHandler(`unsigned int`)
 
---
# Sirin.mainThread.modReturnGate
 
#### Functions
 
> `static` `class` [CDummyRift](lua/classes/CDummyRift.md)* CreateDummyRift(`void`)
 
---
# Sirin.mainThread.modStackExt
 
#### Functions
 
> `static` `unsigned int` GetStackSize(`void`)
 
