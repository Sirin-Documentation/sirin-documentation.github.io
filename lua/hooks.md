# Hooks 

# custom
 --- 
> ####   exitAccountReport(uuid, serial)

* Purpose: `player session closed`

* Function: `exitAccountReport`

* Function parameters:

   * `string` uuid

   * `integer` serial

* Hook Positions: `after_event`	

> ####   enterAccountReport(uuid, serial)

* Purpose: `player session started`

* Function: `enterAccountReport`

* Function parameters:

   * `string` uuid

   * `integer` serial

* Hook Positions: `after_event`	

> ####   isValidPlayerName(pUserDB, pszName)

* Purpose: `check new player name and name used in rename potion.`

* Function: `isValidPlayerName`

* Function parameters:

   * `CUserDB` pUserDB

   * `string` pszName

* Hook Positions: `filter`	

> ####   isValidGuildName(pPlayer, pszGuildName)

* Purpose: `check new guild name.`

* Function: `isValidGuildName`

* Function parameters:

   * `CPlayer` pPlayer

   * `string` pszGuildName

* Hook Positions: `filter`	

> ####   canCreateCharacter(pUserDB, pwszCharName, byRaceSexCode, pszClassCode, dwBaseShape)

* Purpose: `check new character.`

* Function: `canCreateCharacter`

* Function parameters:

   * `CUserDB` pUserDB

   * `string` pwszCharName

   * `integer` byRaceSexCode

   * `string` pszClassCode

   * `integer` dwBaseShape

* Hook Positions: `filter`	

> ####   canDeleteCharacter(pUserDB, bySlotIndex)

* Purpose: `check delete character.`

* Function: `canDeleteCharacter`

* Function parameters:

   * `CUserDB` pUserDB

   * `integer` bySlotIndex

* Hook Positions: `filter`	

> ####   canUseAutoLoot(pPlayer, pMonster)

* Purpose: `check can use auto loot.`

* Function: `canUseAutoLoot`

* Function parameters:

   * `CPlayer` pPlayer

   * `CMonster` pMonster

* Hook Positions: `filter`	

> ####   CDummyRift__CDummyRift_ctor(pRift)

* Purpose: `rift based object create notification.`

* Function: `CDummyRift__CDummyRift_ctor`

* Function parameters:

   * `CDummyRift` pRift

* Hook Positions: `after_event`	

> ####   CDummyRift__CDummyRift_dtor(pRift)

* Purpose: `rift based object destroy notification.`

* Function: `CDummyRift__CDummyRift_dtor`

* Function parameters:

   * `CDummyRift` pRift

* Hook Positions: `after_event`	

> ####   CDummyRift__Enter(pRift, pPlayer, ret)

* Purpose: `player enter rift based object routine and result notification.`

* Function: `CDummyRift__Enter`

* Function parameters:

   * `CDummyRift` pRift

   * `CPlayer` pPlayer

   * `integer` ret?

* Hook Positions: `original`	`after_event`	

> ####   CDummyRift__Close(pRift)

* Purpose: `close rift based object routine and result notification.`

* Function: `CDummyRift__Close`

* Function parameters:

   * `CDummyRift` pRift

* Hook Positions: `original`	`after_event`	

> ####   CDummyRift__IsClose(pRift)

* Purpose: `rift based object is close check routine.`

* Function: `CDummyRift__IsClose`

* Function parameters:

   * `CDummyRift` pRift

* Hook Positions: `original`	

> ####   CDummyRift__IsValidOwner(pRift)

* Purpose: `rift based object is valid owner check routine.`

* Function: `CDummyRift__IsValidOwner`

* Function parameters:

   * `CDummyRift` pRift

* Hook Positions: `original`	

> ####   CDummyRift__SendMsg_Create(pRift)

* Purpose: `rift based object 'create' notification routine for nearby objects.`

* Function: `CDummyRift__SendMsg_Create`

* Function parameters:

   * `CDummyRift` pRift

* Hook Positions: `original`	

> ####   CDummyRift__SendMsg_Destroy(pRift)

* Purpose: `rift based object 'destroy' notification routine for nearby objects.`

* Function: `CDummyRift__SendMsg_Destroy`

* Function parameters:

   * `CDummyRift` pRift

* Hook Positions: `original`	

> ####   CDummyRift__SendMsg_FixPosition(pRift, nIndex)

* Purpose: `rift based object 'fix position' notification routine for object just entered view range.`

* Function: `CDummyRift__SendMsg_FixPosition`

* Function parameters:

   * `CDummyRift` pRift

   * `integer` nIndex

* Hook Positions: `original`	`after_event`	

> ####   CDummyRift__SendMsg_MovePortal(pRift, pPlayer)

* Purpose: `initiate client side teleportation process.`

* Function: `CDummyRift__SendMsg_MovePortal`

* Function parameters:

   * `CDummyRift` pRift

   * `CPlayer` pPlayer

* Hook Positions: `original`	`after_event`	

> ####   AlterCashComplete(dwRetCode, strParam, nAlterValue, dwCashLeft, pPlayer)

* Purpose: `Sirin.mainThread.AlterCashAsync async callback.`

* Function: `AlterCashComplete`

* Function parameters:

   * `integer` dwRetCode

   * `string` strParam

   * `integer` nAlterValue

   * `integer` dwCashLeft

   * `CPlayer` pPlayer?

* Hook Positions: `after_event`	

> ####   OnContEffectInsert(pCharacter, sf, bLogin)

* Purpose: `buff/debuff effect insert notification.`

* Function: `OnContEffectInsert`

* Function parameters:

   * `CCharacter` pCharacter

   * `_sf_continous_ex` sf

   * `boolean` bLogin

* Hook Positions: `after_event`	

> ####   OnContEffectRemove(pCharacter, sf, bByTime)

* Purpose: `buff/debuff effect remove notification.`

* Function: `OnContEffectRemove`

* Function parameters:

   * `CCharacter` pCharacter

   * `_sf_continous_ex` sf

   * `boolean` bByTime

* Hook Positions: `after_event`	

> ####   OnPotionEffectInsert(pPlayer, sf, bByTime)

* Purpose: `potion effect insert notification.`

* Function: `OnPotionEffectInsert`

* Function parameters:

   * `CPlayer` pPlayer

   * `_sf_continous_ex` sf

   * `boolean` bByTime

* Hook Positions: `after_event`	

> ####   OnPotionEffectRemove(pPlayer, sf, bTime)

* Purpose: `potion effect remove notification.`

* Function: `OnPotionEffectRemove`

* Function parameters:

   * `CPlayer` pPlayer

   * `_sf_continous_ex` sf

   * `boolean` bTime

* Hook Positions: `after_event`	

> ####   CGuild__PushMoneyComplete(dwRetCode, dwGuildSerial, dTotalDalant, dTotalGold)

* Purpose: `Sirin.mainThread.GuildPushMoney async callback.`

* Function: `CGuild__PushMoneyComplete`

* Function parameters:

   * `integer` dwRetCode

   * `integer` dwGuildSerial

   * `number` dTotalDalant

   * `number` dTotalGold

* Hook Positions: `after_event`	

> ####   CGuild__PopMoneyComplete(dwRetCode, dwProcRet, dwGuildSerial, dTotalDalant, dTotalGold)

* Purpose: `Sirin.mainThread.GuildPopMoney async callback.`

* Function: `CGuild__PopMoneyComplete`

* Function parameters:

   * `integer` dwRetCode

   * `integer` dwProcRet

   * `integer` dwGuildSerial

   * `number` dTotalDalant

   * `number` dTotalGold

* Hook Positions: `after_event`	

> ####   CPlayer__IsHaveEmptyTower(pPlayer)

* Purpose: `Check player can place a tower routine.`

* Function: `CPlayer__IsHaveEmptyTower`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `original`	

> ####   CNetworkEX__OtherShapeRequest(pPlayer, wIndex, byReqType, byCashChangeStateFlag)

* Purpose: `Shape request for Bot.`

* Function: `CNetworkEX__OtherShapeRequest`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` wIndex

   * `integer` byReqType

   * `integer` byCashChangeStateFlag

* Hook Positions: `special`	

# Animus
 --- 
> ####   CAnimus__CalcAttExp(pAnimus, pAT)

* Purpose: `calculate animus attack exp.`

* Function: `CAnimus__CalcAttExp`

* Function parameters:

   * `CAnimus` pAnimus

   * `CAttack` pAT

* Hook Positions: `original`	

> ####   CAnimus__AlterExp(pAnimus, nAddExp)

* Purpose: `alter value of added animus exp.`

* Function: `CAnimus__AlterExp`

* Function parameters:

   * `CAnimus` pAnimus

   * `integer` nAddExp

* Hook Positions: `special`	

# Attack
 --- 
> ####   CPlayer__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `CPlayer__SetDamage`

* Function parameters:

   * `CPlayer` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   CAnimus__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `CAnimus__SetDamage`

* Function parameters:

   * `CAnimus` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   CGuardTower__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `CGuardTower__SetDamage`

* Function parameters:

   * `CGuardTower` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   CHolyKeeper__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `CHolyKeeper__SetDamage`

* Function parameters:

   * `CHolyKeeper` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   CHolyStone__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `CHolyStone__SetDamage`

* Function parameters:

   * `CHolyStone` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   CTrap__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `CTrap__SetDamage`

* Function parameters:

   * `CTrap` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   CMonster__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `CMonster__SetDamage`

* Function parameters:

   * `CMonster` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   AutominePersonal__SetDamage(pTarget, nDamage, nHPLeft, pSrc, nAttackType, dwAttackSerial)

* Purpose: `apply damage event.`

* Function: `AutominePersonal__SetDamage`

* Function parameters:

   * `AutominePersonal` pTarget

   * `integer` nDamage

   * `integer` nHPLeft

   * `CCharacter` pSrc

   * `integer` nAttackType

   * `integer` dwAttackSerial

* Hook Positions: `pre_event`	

> ####   CAnimus__Attack(pAnimus, skill)

* Purpose: `Animus attack process.`

* Function: `CAnimus__Attack`

* Function parameters:

   * `CAnimus` pAnimus

   * `integer` skill

* Hook Positions: `original`	

> ####   CGuardTower__Attack(pTower, pTarget)

* Purpose: `Tower attack process.`

* Function: `CGuardTower__Attack`

* Function parameters:

   * `CGuardTower` pTower

   * `CCharacter` pTarget

* Hook Positions: `original`	

> ####   CNuclearBomb__Attack(pNuke, StartNum, Obj_num)

* Purpose: `Nuclear Bomb attack process.`

* Function: `CNuclearBomb__Attack`

* Function parameters:

   * `CNuclearBomb` pNuke

   * `integer` StartNum

   * `integer` Obj_num

* Hook Positions: `original`	

> ####   CTrap__Attack(pTrap, pTarget)

* Purpose: `Trap attack process.`

* Function: `CTrap__Attack`

* Function parameters:

   * `CTrap` pTrap

   * `CCharacter` pTarget

* Hook Positions: `original`	

> ####   CMonster__Attack(pMonster, pDst, pskill)

* Purpose: `Monster attack process.`

* Function: `CMonster__Attack`

* Function parameters:

   * `CMonster` pMonster

   * `CCharacter` pDst

   * `CMonsterSkill` pskill

* Hook Positions: `original`	

> ####   CPlayer__pc_PlayAttack_Gen(pPlayer, pDst, byAttPart, wBulletSerial, wEffBtSerial, bCount)

* Purpose: `Player gen attack process.`

* Function: `CPlayer__pc_PlayAttack_Gen`

* Function parameters:

   * `CPlayer` pPlayer

   * `CCharacter` pDst

   * `integer` byAttPart

   * `integer` wBulletSerial

   * `integer` wEffBtSerial

   * `boolean` bCount

* Hook Positions: `original`	

> ####   CPlayer__pc_PlayAttack_Skill(pPlayer, pDst, x, y, z, byEffectCode, wSkillIndex, wBulletSerial, consumeSerial_1, consumeSerial_2, consumeSerial_3, wEffBtSerial)

* Purpose: `Player skill attack process.`

* Function: `CPlayer__pc_PlayAttack_Skill`

* Function parameters:

   * `CPlayer` pPlayer

   * `CCharacter` pDst

   * `number` x

   * `number` y

   * `number` z

   * `integer` byEffectCode

   * `integer` wSkillIndex

   * `integer` wBulletSerial

   * `integer` consumeSerial_1

   * `integer` consumeSerial_2

   * `integer` consumeSerial_3

   * `integer` wEffBtSerial

* Hook Positions: `original`	

> ####   CPlayer__pc_PlayAttack_Force(pPlayer, pDst, x, y, z, wForceSerial, consumeSerial_1, consumeSerial_2, consumeSerial_3, wEffBtSerial)

* Purpose: `Player force attack process.`

* Function: `CPlayer__pc_PlayAttack_Force`

* Function parameters:

   * `CPlayer` pPlayer

   * `CCharacter` pDst

   * `number` x

   * `number` y

   * `number` z

   * `integer` wForceSerial

   * `integer` consumeSerial_1

   * `integer` consumeSerial_2

   * `integer` consumeSerial_3

   * `integer` wEffBtSerial

* Hook Positions: `original`	

> ####   CPlayer__pc_PlayAttack_Unit(pPlayer, pDst, byWeaponPart)

* Purpose: `Player MAU attack process.`

* Function: `CPlayer__pc_PlayAttack_Unit`

* Function parameters:

   * `CPlayer` pPlayer

   * `CCharacter` pDst

   * `integer` byWeaponPart

* Hook Positions: `original`	

> ####   CPlayer__pc_PlayAttack_Siege(pPlayer, pDst, x, y, z, byAttPart, wBulletSerial, wEffBtSerial)

* Purpose: `Player siege kit attack process.`

* Function: `CPlayer__pc_PlayAttack_Siege`

* Function parameters:

   * `CPlayer` pPlayer

   * `CCharacter` pDst

   * `number` x

   * `number` y

   * `number` z

   * `integer` byAttPart

   * `integer` wBulletSerial

   * `integer` wEffBtSerial

* Hook Positions: `original`	

> ####   CPlayer__pc_PlayAttack_SelfDestruction(pPlayer)

* Purpose: `Player self destruction attack process.`

* Function: `CPlayer__pc_PlayAttack_SelfDestruction`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `original`	

> ####   CAttack__FlashDamageProc(pAttack, nLimDist, nAttPower, nAngle, nEffAttPower, bUseEffBullet)

* Purpose: ``flash` type attack process.`

* Function: `CAttack__FlashDamageProc`

* Function parameters:

   * `CAttack` pAttack

   * `integer` nLimDist

   * `integer` nAttPower

   * `integer` nAngle

   * `integer` nEffAttPower

   * `boolean` bUseEffBullet

* Hook Positions: `original`	

> ####   CAttack__AreaDamageProc(pAttack, nLimitRadius, nAttPower, x, y, z, nEffAttPower, bUseEffBullet)

* Purpose: ``area` type attack process.`

* Function: `CAttack__AreaDamageProc`

* Function parameters:

   * `CAttack` pAttack

   * `integer` nLimitRadius

   * `integer` nAttPower

   * `number` x

   * `number` y

   * `number` z

   * `integer` nEffAttPower

   * `boolean` bUseEffBullet

* Hook Positions: `original`	

> ####   CAttack__SectorDamageProc(pAttack, nSkillLv, nAttPower, nAngle, nShotNum, nWeaponRange, nEffAttPower, bUseEffBullet)

* Purpose: ``sector` type attack process.`

* Function: `CAttack__SectorDamageProc`

* Function parameters:

   * `CAttack` pAttack

   * `integer` nSkillLv

   * `integer` nAttPower

   * `integer` nAngle

   * `integer` nShotNum

   * `integer` nWeaponRange

   * `integer` nEffAttPower

   * `boolean` bUseEffBullet

* Hook Positions: `original`	

> ####   CCharacter__GetAttackDamPoint(pCharacter, nAttPnt, nAttPart, nTolType, pDst, bBackAttack)

* Purpose: `final damage calculation.`

* Function: `CCharacter__GetAttackDamPoint`

* Function parameters:

   * `CCharacter` pCharacter

   * `integer` nAttPnt

   * `integer` nAttPart

   * `TOL_CODE|integer` nTolType

   * `CCharacter` pDst

   * `boolean` bBackAttack

* Hook Positions: `original`	

# Crafts
 --- 
> ####   CPlayer__pc_MakeItem(pPlayer, pipMakeTool, wManualIndex, materials)

* Purpose: `item make routine.`

* Function: `CPlayer__pc_MakeItem`

* Function parameters:

   * `CPlayer` pPlayer

   * `_STORAGE_POS_INDIV` pipMakeTool

   * `integer` wManualIndex

   * `table<integer,` materials

* Hook Positions: `original`	

# CrystalBattle
 --- 
> ####   CHolyStoneSystem__SetScene(pHolySys, byNumOfTime, nSceneCode, nPassTime, nChangeReason)

* Purpose: `Change battle scene notification.`

* Function: `CHolyStoneSystem__SetScene`

* Function parameters:

   * `CHolyStoneSystem` pHolySys

   * `integer` byNumOfTime

   * `integer` nSceneCode

   * `integer` nPassTime

   * `integer` nChangeReason

* Hook Positions: `after_event`	

> ####   CHolyStoneSystem__SendIsArriveDestroyer(pHolySys, byArrive)

* Purpose: `Chip holder arrive succ/failure notification.`

* Function: `CHolyStoneSystem__SendIsArriveDestroyer`

* Function parameters:

   * `CHolyStoneSystem` pHolySys

   * `integer` byArrive

* Hook Positions: `after_event`	

# DarkHole
 --- 
> ####   CPlayer__pc_DarkHoleOpenRequest(pPlayer, bOpen, pFld, uuid)

* Purpose: `Open darkhole result notification.`

* Function: `CPlayer__pc_DarkHoleOpenRequest`

* Function parameters:

   * `CPlayer` pPlayer

   * `boolean` bOpen

   * `_base_fld` pFld

   * `string` uuid

* Hook Positions: `after_event`	

> ####   CDarkHoleChannel__SendMsg_ChannelClose(uuid, bSucc)

* Purpose: `Close darkhole result notification.`

* Function: `CDarkHoleChannel__SendMsg_ChannelClose`

* Function parameters:

   * `string` uuid

   * `boolean` bSucc

* Hook Positions: `after_event`	

# GuardTower
 --- 
> ####   CGuardTower__SearchNearEnemy(pTower)

* Purpose: `Tower target search routine.`

* Function: `CGuardTower__SearchNearEnemy`

* Function parameters:

   * `CGuardTower` pTower

* Hook Positions: `original`	

> ####   CGuardTower__IsValidTarget(pTower)

* Purpose: `Tower target validation routine.`

* Function: `CGuardTower__IsValidTarget`

* Function parameters:

   * `CGuardTower` pTower

* Hook Positions: `original`	

# Guild
 --- 
> ####   CPlayer__pc_GuildEstablishRequest(pPlayer, pwszGuildName)

* Purpose: `Filter guild establish requests.`

* Function: `CPlayer__pc_GuildEstablishRequest`

* Function parameters:

   * `CPlayer` pPlayer

   * `string` pwszGuildName

* Hook Positions: `filter`	

> ####   CPlayer__Guild_Insert_Complete(pGuild)

* Purpose: `Guild establish notification.`

* Function: `CPlayer__Guild_Insert_Complete`

* Function parameters:

   * `CGuild` pGuild

* Hook Positions: `after_event`	

> ####   CPlayer__pc_GuildJoinApplyRequest(pPlayer, pGuild)

* Purpose: `Filter guild join requests.`

* Function: `CPlayer__pc_GuildJoinApplyRequest`

* Function parameters:

   * `CPlayer` pPlayer

   * `CGuild` pGuild

* Hook Positions: `filter`	

> ####   CPlayer__SendMsg_GuildJoinApplyCancelResult(pPlayer)

* Purpose: `Guild join cancel notification.`

* Function: `CPlayer__SendMsg_GuildJoinApplyCancelResult`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `after_event`	

> ####   CPlayer__pc_GuildJoinAcceptRequest(pPlayer, dwApplierSerial, bAccept)

* Purpose: `Filter guild join accept requests.`

* Function: `CPlayer__pc_GuildJoinAcceptRequest`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` dwApplierSerial

   * `boolean` bAccept

* Hook Positions: `filter`	

> ####   CPlayer__Guild_Join_Accept_Complete(dwGuildSerial, dwApplierSerial)

* Purpose: `Guild join accept notification.`

* Function: `CPlayer__Guild_Join_Accept_Complete`

* Function parameters:

   * `integer` dwGuildSerial

   * `integer` dwApplierSerial

* Hook Positions: `after_event`	

> ####   CPlayer__pc_GuildSelfLeaveRequest(pPlayer)

* Purpose: `Filter guild self leave requests.`

* Function: `CPlayer__pc_GuildSelfLeaveRequest`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `filter`	

> ####   CPlayer__Guild_Self_Leave_Complete(dwGuildSerial, dwLeaverSerial)

* Purpose: `Guild self leave complete notification.`

* Function: `CPlayer__Guild_Self_Leave_Complete`

* Function parameters:

   * `integer` dwGuildSerial

   * `integer` dwLeaverSerial

* Hook Positions: `pre_event`	

> ####   CGuild__ManageExpulseMember(pGuild, dwMemberSerial)

* Purpose: `Filter guild force leave requests.`

* Function: `CGuild__ManageExpulseMember`

* Function parameters:

   * `CGuild` pGuild

   * `integer` dwMemberSerial

* Hook Positions: `filter`	

> ####   CPlayer__Guild_Force_Leave_Complete(dwGuildSerial, dwLeaverSerial)

* Purpose: `Guild force leave complete notification.`

* Function: `CPlayer__Guild_Force_Leave_Complete`

* Function parameters:

   * `integer` dwGuildSerial

   * `integer` dwLeaverSerial

* Hook Positions: `pre_event`	

> ####   CPlayer__Guild_Disjoint_Complete(dwGuildSerial)

* Purpose: `Guild disjoint complete notification.`

* Function: `CPlayer__Guild_Disjoint_Complete`

* Function parameters:

   * `integer` dwGuildSerial

* Hook Positions: `pre_event`	

> ####   CPlayer__Guild_Update_GuildMater_Complete(dwGuildSerial, dwNewMasterSerial, dwOldMasterSerial)

* Purpose: `Guild disjoint complete notification.`

* Function: `CPlayer__Guild_Update_GuildMater_Complete`

* Function parameters:

   * `integer` dwGuildSerial

   * `integer` dwNewMasterSerial

   * `integer` dwOldMasterSerial

* Hook Positions: `pre_event`	

# HeroCombine
 --- 
> ####   CPlayer__pc_CombineItemEx(pPlayer, pRecv)

* Purpose: `Lua process of unknown hero combination.`

* Function: `CPlayer__pc_CombineItemEx`

* Function parameters:

   * `CPlayer` pPlayer

   * `_combine_ex_item_request_clzo` pRecv

* Hook Positions: `original`	

> ####   ItemCombineMgr__RequestCombineAcceptProcess(pPlayer, Selected)

* Purpose: `Select combine reward notification.`

* Function: `ItemCombineMgr__RequestCombineAcceptProcess`

* Function parameters:

   * `CPlayer` pPlayer

   * `table<integer,` Selected

* Hook Positions: `after_event`	

> ####   ItemCombineMgr__MakeNewItems(pCombineMgr, pPlayerItemDB, pRecv, pSend)

* Purpose: `Make new items in result of combination.`

* Function: `ItemCombineMgr__MakeNewItems`

* Function parameters:

   * `ItemCombineMgr` pCombineMgr

   * `_ITEMCOMBINE_DB_BASE` pPlayerItemDB

   * `_combine_ex_item_accept_request_clzo` pRecv

   * `_combine_ex_item_accept_result_zocl` pSend

* Hook Positions: `original`	

# MainThread
 --- 
> ####   CMainThread__OnRun(pMain)

* Purpose: `Main loop routine.`

* Function: `CMainThread__OnRun`

* Function parameters:

   * `CMainThread` pMain

* Hook Positions: `after_event`	

# Monster
 --- 
> ####   CMonster__Create(pMonster, pData)

* Purpose: `Create monster notification.`

* Function: `CMonster__Create`

* Function parameters:

   * `CMonster` pMonster

   * `_monster_create_setdata` pData

* Hook Positions: `after_event`	

> ####   CMonster__Destroy(pMonster, byDestroyCode, pAttObj)

* Purpose: `Destroy monster notification.`

* Function: `CMonster__Destroy`

* Function parameters:

   * `CMonster` pMonster

   * `integer` byDestroyCode

   * `CGameObject` pAttObj

* Hook Positions: `pre_event`	

> ####   CMonsterHelper__TransPort(pMonster, dwOldSerial)

* Purpose: `Monster transport notification.`

* Function: `CMonsterHelper__TransPort`

* Function parameters:

   * `CMonster` pMonster

   * `integer` dwOldSerial

* Hook Positions: `after_event`	

> ####   CMonster___LootItem_Std(pMonster, pOwner)

* Purpose: `Monster looting routine.`

* Function: `CMonster___LootItem_Std`

* Function parameters:

   * `CMonster` pMonster

   * `CPlayer` pOwner

* Hook Positions: `original`	

# Player
 --- 
> ####   CPlayer__pc_NewPosStart(pPlayer)

* Purpose: `Player map load complete.`

* Function: `CPlayer__pc_NewPosStart`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `after_event`	

> ####   CPlayer__OutOfMap(pPlayer, pIntoMap, wLayerIndex, byMapOutType, x, y,z)

* Purpose: `Player teleportation start.`

* Function: `CPlayer__OutOfMap`

* Function parameters:

   * `CPlayer` pPlayer

   * `CMapData` pIntoMap

   * `integer` wLayerIndex

   * `integer` byMapOutType

   * `number` x

   * `number` y

   * `number` z

* Hook Positions: `pre_event`	

> ####   CPlayer__apply_have_item_std_effect(pPlayer, nEffCode, fVal, bAdd, nDiffCnt)

* Purpose: `apply have item std effect (resource effect handler) routine.`

* Function: `CPlayer__apply_have_item_std_effect`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` nEffCode

   * `number` fVal

   * `boolean` bAdd

   * `integer` nDiffCnt

* Hook Positions: `original`	

> ####   CPlayer__apply_normal_item_std_effect(pPlayer, nEffCode, fVal, bEquip)

* Purpose: `apply normal item std effect (equipment effect handler) routine.`

* Function: `CPlayer__apply_normal_item_std_effect`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` nEffCode

   * `number` fVal

   * `boolean` bEquip

* Hook Positions: `original`	

> ####   CPlayer__apply_case_equip_upgrade_effect(pPlayer, pItem, bEquip)

* Purpose: `apply equip upgrade effect (talik effect handler) routine.`

* Function: `CPlayer__apply_case_equip_upgrade_effect`

* Function parameters:

   * `CPlayer` pPlayer

   * `_STORAGE_LIST___db_con` pItem

   * `boolean` bEquip

* Hook Positions: `original`	

> ####   CPlayer__Load(pPlayer, pUserDB, bFirstStart)

* Purpose: `Player enter game notification.`

* Function: `CPlayer__Load`

* Function parameters:

   * `CPlayer` pPlayer

   * `CUserDB` pUserDB

   * `boolean` bFirstStart

* Hook Positions: `after_event`	

> ####   CPlayer__NetClose(pPlayer, bMoveOutLobby)

* Purpose: `Player leave game notification.`

* Function: `CPlayer__NetClose`

* Function parameters:

   * `CPlayer` pPlayer

   * `boolean` bMoveOutLobby

* Hook Positions: `pre_event`	

> ####   CPlayer__Create(pPlayer)

* Purpose: `Player enter game notification (later than Load).`

* Function: `CPlayer__Create`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `after_event`	

> ####   CPlayer__CreateComplete(pPlayer)

* Purpose: `Player enter game notification (later than Create).`

* Function: `CPlayer__CreateComplete`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `after_event`	

> ####   CPlayer__pc_InitClass(pPlayer)

* Purpose: `Player reset class notification.`

* Function: `CPlayer__pc_InitClass`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `after_event`	

> ####   CPlayer__SendMsg_SelectClassResult(pPlayer, wSelClassIndex)

* Purpose: `Player take class snotification.`

* Function: `CPlayer__SendMsg_SelectClassResult`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` wSelClassIndex

* Hook Positions: `after_event`	

> ####   CPlayer__CalcExp(pPlayer, pDst, nDam, kPartyExpNotify)

* Purpose: `calculate player attack exp.`

* Function: `CPlayer__CalcExp`

* Function parameters:

   * `CPlayer` pPlayer

   * `CCharacter` pDst

   * `integer` nDam

   * `CPartyModeKillMonsterExpNotify` kPartyExpNotify

* Hook Positions: `original`	

> ####   CPlayer__AlterExp(pPlayer, dAlterExp, bReward, bUseExpRecoverItem, bUseExpAdditionItem)

* Purpose: `alter value of added player exp.`

* Function: `CPlayer__AlterExp`

* Function parameters:

   * `CPlayer` pPlayer

   * `number` dAlterExp

   * `boolean` bReward

   * `boolean` bUseExpRecoverItem

   * `boolean` bUseExpAdditionItem

* Hook Positions: `special`	

> ####   CPlayer__Emb_AddStorage(pPlayer, byStorageCode, pCon, bEquipChange, bAdd, Ret)

* Purpose: `Add storage notification.`

* Function: `CPlayer__Emb_AddStorage`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` byStorageCode

   * `_STORAGE_LIST___storage_con` pCon

   * `boolean` bEquipChange

   * `boolean` bAdd

   * `_STORAGE_LIST___db_con` Ret

* Hook Positions: `after_event`	

> ####   CPlayer__Emb_DelStorage(pPlayer, byStorageCode, byStorageIndex, bEquipChange, bDelete, strErrorCodePos, Ret)

* Purpose: `Delete storage notification.`

* Function: `CPlayer__Emb_DelStorage`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` byStorageCode

   * `integer` byStorageIndex

   * `boolean` bEquipChange

   * `boolean` bDelete

   * `string` strErrorCodePos

   * `boolean` Ret

* Hook Positions: `after_event`	

> ####   CPlayer__Emb_AlterDurPoint(pPlayer, byStorageCode, byStorageIndex, nAlter, bUpdate, bSend, Ret)

* Purpose: `Alter dur point (stack size) notification.`

* Function: `CPlayer__Emb_AlterDurPoint`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` byStorageCode

   * `integer` byStorageIndex

   * `integer` nAlter

   * `boolean` bUpdate

   * `boolean` bSend

   * `integer` Ret

* Hook Positions: `after_event`	

> ####   CPlayer__CalcPvP(pKiller, pDier)

* Purpose: `Calc pvp points routine.`

* Function: `CPlayer__CalcPvP`

* Function parameters:

   * `CPlayer` pKiller

   * `CPlayer` pDier

* Hook Positions: `original`	

> ####   CPlayer__CalPvpTempCash(pKiller, pDier)

* Purpose: `Calc pvp cash routine.`

* Function: `CPlayer__CalPvpTempCash`

* Function parameters:

   * `CPlayer` pKiller

   * `CPlayer` pDier

* Hook Positions: `original`	

> ####   CPlayer__SetLevel(pPlayer, byNewLevel)

* Purpose: `Player level up notification.`

* Function: `CPlayer__SetLevel`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` byNewLevel

* Hook Positions: `after_event`	

> ####   CPlayer__SetLevelD(pPlayer, byNewLevel)

* Purpose: `Player level down notification.`

* Function: `CPlayer__SetLevelD`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` byNewLevel

* Hook Positions: `after_event`	

> ####   CPlayer___CalcMaxHP(pPlayer, byNewLevel)

* Purpose: `Max HP calculation.`

* Function: `CPlayer___CalcMaxHP`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `original`	

> ####   CPlayer___CalcMaxFP(pPlayer, byNewLevel)

* Purpose: `Max FP calculation.`

* Function: `CPlayer___CalcMaxFP`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `original`	

> ####   CPlayer___CalcMaxSP(pPlayer, byNewLevel)

* Purpose: `Max SP calculation.`

* Function: `CPlayer___CalcMaxSP`

* Function parameters:

   * `CPlayer` pPlayer

* Hook Positions: `original`	

# PotionEffect
 --- 
> ####   DE_Potion_Trunk_Extend(pActChar, pTargetChar, fEffectValue)

* Purpose: `Trunk extend potion routine.`

* Function: `DE_Potion_Trunk_Extend`

* Function parameters:

   * `CCharacter` pActChar

   * `CCharacter` pTargetChar

   * `number` fEffectValue

* Hook Positions: `original`	

# Quest
 --- 
> ####   CPlayer__SendMsg_InsertNewQuest(pPlayer, bySlotIndex, pQuestDB)

* Purpose: `Start new quest notification.`

* Function: `CPlayer__SendMsg_InsertNewQuest`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` bySlotIndex

   * `_QUEST_DB_BASE___LIST` pQuestDB

* Hook Positions: `pre_event`	

> ####   CPlayer__SendMsg_InsertNextQuest(pPlayer, bySlotIndex, pQuestDB)

* Purpose: `Start next quest notification.`

* Function: `CPlayer__SendMsg_InsertNextQuest`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` bySlotIndex

   * `_QUEST_DB_BASE___LIST` pQuestDB

* Hook Positions: `pre_event`	

> ####   CPlayer__SendMsg_QuestFailure(pPlayer, byFailCode, byQuestDBSlot)

* Purpose: `Remove quest notification.`

* Function: `CPlayer__SendMsg_QuestFailure`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` byFailCode

   * `integer` byQuestDBSlot

* Hook Positions: `pre_event`	

> ####   CPlayer__pc_QuestGiveupRequest(pPlayer, byQuestDBSlot)

* Purpose: `User cancel quest quest notification.`

* Function: `CPlayer__pc_QuestGiveupRequest`

* Function parameters:

   * `CPlayer` pPlayer

   * `integer` byQuestDBSlot

* Hook Positions: `pre_event`	

> ####   CQuestMgr__CanGiveupQuest(pQuestMgr, byQuestDBSlot)

* Purpose: `Check can cancel quest routine.`

* Function: `CQuestMgr__CanGiveupQuest`

* Function parameters:

   * `CQuestMgr` pQuestMgr

   * `integer` byQuestDBSlot

* Hook Positions: `original`	

> ####   CPlayer___Reward_Quest(pPlayer, pQuestFld, byRewardItemIndex)

* Purpose: `Reward quest notification and routine.`

* Function: `CPlayer___Reward_Quest`

* Function parameters:

   * `CPlayer` pPlayer

   * `_Quest_fld` pQuestFld

   * `integer` byRewardItemIndex

* Hook Positions: `pre_event, original`	

> ####   CQuestMgr___CheckCondition(pQuestMgr, pCond)

* Purpose: `Check quest condition routine.`

* Function: `CQuestMgr___CheckCondition`

* Function parameters:

   * `CQuestMgr` pQuestMgr

   * `_happen_event_condition_node` pCond

* Hook Positions: `original`	

> ####   CQuestMgr__CheckNPCQuestList(pQuestMgr, pszEventCode, byRaceCode, pQuestIndexData)

* Purpose: `Create list of available quests for NPC.`

* Function: `CQuestMgr__CheckNPCQuestList`

* Function parameters:

   * `CQuestMgr` pQuestMgr

   * `string` pszEventCode

   * `integer` byRaceCode

   * `_NPCQuestIndexTempData` pQuestIndexData

* Hook Positions: `original`	

> ####   CQuestMgr__CheckNPCQuestStartable(pQuestMgr, pszEventCode, byRaceCode, dwQuestIndex, dwHappenIndex)

* Purpose: `Check selected NPC quest is startable.`

* Function: `CQuestMgr__CheckNPCQuestStartable`

* Function parameters:

   * `CQuestMgr` pQuestMgr

   * `string` pszEventCode?

   * `integer` byRaceCode

   * `integer` dwQuestIndex

   * `integer` dwHappenIndex

* Hook Positions: `original`	

# Store
 --- 
> ####   CItemStore__IsSell(pStore, pPlayer, offer, fDiscountRate)

* Purpose: `Filter purchase requests.`

* Function: `CItemStore__IsSell`

* Function parameters:

   * `CItemStore` pStore

   * `CPlayer` pPlayer

   * `table<integer,` offer

   * `number` fDiscountRate

* Hook Positions: `filter`	

# TalikUpgrade
 --- 
> ####   CPlayer__pc_UpgradeItem(pPlayer, pposTalik, pposToolItem, pposUpgItem, jewels)

* Purpose: `item upgrade routine.`

* Function: `CPlayer__pc_UpgradeItem`

* Function parameters:

   * `CPlayer` pPlayer

   * `_STORAGE_POS_INDIV` pposTalik

   * `_STORAGE_POS_INDIV` pposToolItem

   * `_STORAGE_POS_INDIV` pposUpgItem

   * `table<integer,` jewels

* Hook Positions: `original`	

