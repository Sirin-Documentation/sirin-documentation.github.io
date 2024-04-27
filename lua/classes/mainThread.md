`class` [CAttack](lua/classes/CAttack.md)* g_pAttack
 
`static` bool processCheatCommand(class CPlayer *,const char *)
 
`static` int getCheatWordNum(void)
 
`static` const char* getCheatWord(unsigned int)
 
`static` `class` [CCharacter](lua/classes/CCharacter.md)* objectToCharacter(class CGameObject *)
 
`static` `class` [AutominePersonal](lua/classes/AutominePersonal.md)* objectToAMP(class CGameObject *)
 
`static` `class` [CAnimus](lua/classes/CAnimus.md)* objectToAnimus(class CGameObject *)
 
`static` `class` [CGuardTower](lua/classes/CGuardTower.md)* objectToTower(class CGameObject *)
 
`static` `class` [CHolyKeeper](lua/classes/CHolyKeeper.md)* objectToHolyKeeper(class CGameObject *)
 
`static` `class` [CHolyStone](lua/classes/CHolyStone.md)* objectToHolyStone(class CGameObject *)
 
`class` [CMainThread](lua/classes/CMainThread.md)* g_Main
 
unsigned int* g_dwCurTime
 
`static` `class` [CMapData](lua/classes/CMapData.md)* getMapData(unsigned int)
 
`class` [CMapOperation](lua/classes/CMapOperation.md)* g_MapOper
 
`static` `class` [CMonster](lua/classes/CMonster.md)* objectToMonster(class CGameObject *)
 
`static` `class` [CNuclearBomb](lua/classes/CNuclearBomb.md)* objectToNuclearBomb(class CGameObject *)
 
`static` `class` [CPlayer](lua/classes/CPlayer.md)* g_Player_get(unsigned int)
 
`static` `class` [CPlayer](lua/classes/CPlayer.md)* getPlayerBySerial(unsigned int)
 
`static` `class` [CPlayer](lua/classes/CPlayer.md)* objectToPlayer(class CGameObject *)
 
`class` [CPotionMgr](lua/classes/CPotionMgr.md)* g_PotionMgr
 
`static` `class` [CRecordData](lua/classes/CRecordData.md)* CQuestMgr__s_tblQuestHappenEvent_get(int)
 
`static` `class` [CTrap](lua/classes/CTrap.md)* objectToTrap(class CGameObject *)
 
`static` `class` [CUserDB](lua/classes/CUserDB.md)* g_UserDB_get(unsigned int)
 
`static` `class` [CItemBox](lua/classes/CItemBox.md)* g_ItemBox_get(int)
 
`static` `class` [CItemBox](lua/classes/CItemBox.md)* objectToItemBox(class CGameObject *)
 
`static` `struct` [_AmuletItem_fld](lua/classes/_AmuletItem_fld.md)* baseToAmuletItem(struct _base_fld *)
 
`static` `struct` [_animus_fld](lua/classes/_animus_fld.md)* baseToAnimus(struct _base_fld *)
 
`static` `struct` [_AnimusItem_fld](lua/classes/_AnimusItem_fld.md)* baseToAnimusItem(struct _base_fld *)
 
`static` `struct` [_BagItem_fld](lua/classes/_BagItem_fld.md)* baseToBagItem(struct _base_fld *)
 
`static` `struct` [_BatteryItem_fld](lua/classes/_BatteryItem_fld.md)* baseToBatteryItem(struct _base_fld *)
 
`static` `struct` [_BattleDungeonItem_fld](lua/classes/_BattleDungeonItem_fld.md)* baseToBattleDungeonItem(struct _base_fld *)
 
`static` `struct` [_BootyItem_fld](lua/classes/_BootyItem_fld.md)* baseToBootyItem(struct _base_fld *)
 
`static` `struct` [_BoxItem_fld](lua/classes/_BoxItem_fld.md)* baseToBoxItem(struct _base_fld *)
 
`static` `struct` [_BulletItem_fld](lua/classes/_BulletItem_fld.md)* baseToBulletItem(struct _base_fld *)
 
`static` `struct` [_CheckPotion_fld](lua/classes/_CheckPotion_fld.md)* baseToCheckPotion(struct _base_fld *)
 
`static` `struct` [_class_fld](lua/classes/_class_fld.md)* baseToClass(struct _base_fld *)
 
`static` `struct` [_CouponItem_fld](lua/classes/_CouponItem_fld.md)* baseToCouponItem(struct _base_fld *)
 
`static` `struct` [_DfnEquipItem_fld](lua/classes/_DfnEquipItem_fld.md)* baseToDfnEquipItem(struct _base_fld *)
 
`static` `struct` [_CloakItem_fld](lua/classes/_CloakItem_fld.md)* baseToCloakItem(struct _base_fld *)
 
`static` `struct` [_EventItem_fld](lua/classes/_EventItem_fld.md)* baseToEventItem(struct _base_fld *)
 
`static` `struct` [_FaceItem_fld](lua/classes/_FaceItem_fld.md)* baseToFaceItem(struct _base_fld *)
 
`static` `struct` [_FIRECRACKER_fld](lua/classes/_FIRECRACKER_fld.md)* baseToFirecrackerItem(struct _base_fld *)
 
`static` `struct` [_force_fld](lua/classes/_force_fld.md)* baseToForce(struct _base_fld *)
 
`static` `struct` [_ForceItem_fld](lua/classes/_ForceItem_fld.md)* baseToForceItem(struct _base_fld *)
 
`static` `struct` [_GuardTowerItem_fld](lua/classes/_GuardTowerItem_fld.md)* baseToGuardTowerItem(struct _base_fld *)
 
`static` `struct` [_ItemLooting_fld](lua/classes/_ItemLooting_fld.md)* baseToItemLooting(struct _base_fld *)
 
`static` `struct` [_ItemUpgrade_fld](lua/classes/_ItemUpgrade_fld.md)* baseToItemUpgrade(struct _base_fld *)
 
`static` `struct` [_MakeToolItem_fld](lua/classes/_MakeToolItem_fld.md)* baseToMakeToolItem(struct _base_fld *)
 
`static` `struct` [_map_fld](lua/classes/_map_fld.md)* baseToMap(struct _base_fld *)
 
`static` `struct` [_MapItem_fld](lua/classes/_MapItem_fld.md)* baseToMapItem(struct _base_fld *)
 
`static` `struct` [_mon_block_fld](lua/classes/_mon_block_fld.md)* baseToMonBlock(struct _base_fld *)
 
`static` `struct` [_mon_active_fld](lua/classes/_mon_active_fld.md)* baseToMonActive(struct _base_fld *)
 
`static` `struct` [_monster_fld](lua/classes/_monster_fld.md)* baseToMonsterCharacter(struct _base_fld *)
 
`static` `struct` [_npc_fld](lua/classes/_npc_fld.md)* baseToNPCharacter(struct _base_fld *)
 
`static` `struct` [_NPCLink_fld](lua/classes/_NPCLink_fld.md)* baseToNPCLinkItem(struct _base_fld *)
 
`static` `struct` [_OreCutting_fld](lua/classes/_OreCutting_fld.md)* baseToOreCutting(struct _base_fld *)
 
`static` `struct` [_OreItem_fld](lua/classes/_OreItem_fld.md)* baseToOreItem(struct _base_fld *)
 
`static` `struct` [_player_fld](lua/classes/_player_fld.md)* baseToPlayerCharacter(struct _base_fld *)
 
`static` `struct` [_portal_fld](lua/classes/_portal_fld.md)* baseToPortal(struct _base_fld *)
 
`static` `struct` [_PotionItem_fld](lua/classes/_PotionItem_fld.md)* baseToPotionItemFld(struct _base_fld *)
 
`static` `struct` [_QuestHappenEvent_fld](lua/classes/_QuestHappenEvent_fld.md)* baseToQuestEvent(struct _base_fld *)
 
`static` `struct` [_Quest_fld](lua/classes/_Quest_fld.md)* baseToQuest(struct _base_fld *)
 
`static` `struct` [_RadarItem_fld](lua/classes/_RadarItem_fld.md)* baseToRadarItem(struct _base_fld *)
 
`static` `struct` [_RecoveryItem_fld](lua/classes/_RecoveryItem_fld.md)* baseToRecoveryItem(struct _base_fld *)
 
`static` `struct` [_ResourceItem_fld](lua/classes/_ResourceItem_fld.md)* baseToResourceItem(struct _base_fld *)
 
`static` `struct` [_RingItem_fld](lua/classes/_RingItem_fld.md)* baseToRingItem(struct _base_fld *)
 
`static` `struct` [_SetItemEff_fld](lua/classes/_SetItemEff_fld.md)* baseToSetItemEff(struct _base_fld *)
 
`static` `struct` [_SiegeKitItem_fld](lua/classes/_SiegeKitItem_fld.md)* baseToSiegeKitItem(struct _base_fld *)
 
`static` `struct` [_skill_fld](lua/classes/_skill_fld.md)* baseToSkill(struct _base_fld *)
 
`static` `struct` [_StoreList_fld](lua/classes/_StoreList_fld.md)* baseToStoreList(struct _base_fld *)
 
`static` `struct` [_TicketItem_fld](lua/classes/_TicketItem_fld.md)* baseToTicketItem(struct _base_fld *)
 
`static` `struct` [_TimeItem_fld](lua/classes/_TimeItem_fld.md)* baseToTimeItem(struct _base_fld *)
 
`static` `struct` [_TOWNItem_fld](lua/classes/_TOWNItem_fld.md)* baseToTownItem(struct _base_fld *)
 
`static` `struct` [_TrapItem_fld](lua/classes/_TrapItem_fld.md)* baseToTrapItem(struct _base_fld *)
 
`static` `struct` [_UnitBullet_fld](lua/classes/_UnitBullet_fld.md)* baseToUnitBullet(struct _base_fld *)
 
`static` `struct` [_UnitFrame_fld](lua/classes/_UnitFrame_fld.md)* baseToUnitFrame(struct _base_fld *)
 
`static` `struct` [_UnitKeyItem_fld](lua/classes/_UnitKeyItem_fld.md)* baseToUnitKeyItem(struct _base_fld *)
 
`static` `struct` [_UnitPart_fld](lua/classes/_UnitPart_fld.md)* baseToUnitPart(struct _base_fld *)
 
`static` `struct` [_UNmannedminer_fld](lua/classes/_UNmannedminer_fld.md)* baseToUnmannedMinerItem(struct _base_fld *)
 
`static` `struct` [_WeaponItem_fld](lua/classes/_WeaponItem_fld.md)* baseToWeaponItem(struct _base_fld *)
 
`static` std::basic_string<char,struct getUUIDv4(void)
 
`static` `class` [CItemBox](lua/classes/CItemBox.md)* createItemBox(const char *,unsigned int,unsigned __int64,unsigned int,unsigned char,class CMapData *,unsigned short,float,float,float,unsigned int,bool,class CPlayer *,bool,class CCharacter *,class CPlayer *,unsigned char,bool)
 
`static` `class` [CMonster](lua/classes/CMonster.md)* createMonster(class CMapData *,unsigned short,float,float,float,const char *,bool,bool,bool)
 
`static` void AlterCash(class CPlayer *,int)
 
`static` void AddPremDays(class CPlayer *,unsigned int)
 
`static` void AddPremSeconds(class CPlayer *,unsigned int)
 
`static` bool IsOverLapItem(int)
 
`static` bool IsProtectItem(int)
 
`static` int GetItemEquipGrade(int,int)
 
int GetItemEquipGrade(int,const char *)
 
`static` unsigned int GetLoopTime(void)
 
`static` int GetItemTableCode(const char *)
 
`static` `struct` [_animus_fld](lua/classes/_animus_fld.md)* GetAnimusFldFromExp(int,unsigned __int64)
 
`static` `struct` [_animus_fld](lua/classes/_animus_fld.md)* GetAnimusFldFromLv(int,unsigned long)
 
`static` unsigned long GetMaxParamFromExp(int,unsigned __int64)
 
`static` unsigned char GetDefItemUpgSocketNum(int,int)
 
`static` int GetItemDurPoint(int,int)
 
`static` unsigned char GetItemUpgLimSocket(unsigned int)
 
`static` unsigned char GetItemUpgedLv(unsigned int)
 
`static` unsigned char GetItemGrade(int,int)
 
`static` unsigned long GetBitAfterUpgrade(unsigned long,unsigned long,unsigned char)
 
`static` unsigned long GetBitAfterSetLimSocket(unsigned char)
 
`static` `class` [CUserDB](lua/classes/CUserDB.md)* SearchAvatorWithName(const char *)
 
`static` unsigned __int64 giveItemByName(const char *,const char *,unsigned __int64,unsigned int,unsigned int,bool)
 
`static` unsigned __int64 giveItemBySerial(unsigned int,const char *,unsigned __int64,unsigned int,unsigned int,bool)
 
`static` int takeItemBySerial(unsigned int,const char *,unsigned int,unsigned __int64,unsigned int,int)
 
`static` int teleportPlayer(unsigned int,unsigned int,float,float,float,unsigned short)
 
int teleportPlayer(class CPlayer *,class CMapData *,float,float,float,unsigned short)
 
`static` int activateLayer(unsigned int,unsigned short,bool)
 
