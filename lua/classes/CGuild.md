# CGuild
 
> `int` GetGuildMemberList(`struct` `lua_State` *)
 
> `int` GetGuildApplierList(`struct` `lua_State` *)
 
> `void` MakeDownMemberPacket(`void`)
 
> `struct` [_guild_member_info](lua/classes/_guild_member_info.md)* GetMemberFromSerial(`unsigned long`)
 
> `void` SendMsg_DownPacket(`unsigned char`,`struct` [_guild_member_info](lua/classes/_guild_member_info.md) *)
 
## Members
 
> `int` m_nIndex
 
> `unsigned int` m_dwSerial
 
> `const` `char`* m_wszName
 
> `const` `char`* m_aszName
 
> `unsigned char` m_byGrade
 
> `double` m_dTotalDalant
 
> `double` m_dTotalGold
 
> `unsigned int` m_dwEmblemBack
 
> `unsigned int` m_dwEmblemMark
 
> `unsigned char` m_byRace
 
> `const` `char`* m_wszGreetingMsg
 
> `struct` [_guild_master_info](lua/classes/_guild_master_info.md) m_MasterData
 
> `int` m_nMemberNum
 
> `struct` [_guild_member_info](lua/classes/_guild_member_info.md)* m_MemberData_get(`unsigned __int64`)
 
> `struct` [_guild_member_info](lua/classes/_guild_member_info.md)* m_pGuildCommittee_get(`unsigned __int64`)
 
> `void` m_pGuildCommittee_set(`unsigned __int64`,`struct` [_guild_member_info](lua/classes/_guild_member_info.md) *)
 
> `int` m_nApplierNum
 
> `struct` [_guild_applier_info](lua/classes/_guild_applier_info.md)* m_ApplierData_get(`unsigned __int64`)
 
> `bool` m_bNowProcessSgtMter
 
> `unsigned int` m_dwSuggesterSerial
 
> `struct` `_suggested_matter` m_SuggestedMatter
 
> `struct` `_guild_battle_suggest_matter` m_GuildBattleSugestMatter
 
> `bool` m_bInGuildBattle
 
> `bool` m_bPossibleElectMaster
 
> `unsigned int` m_dwGuildBattleTotWin
 
> `unsigned int` m_dwGuildBattleTotDraw
 
> `unsigned int` m_dwGuildBattleTotLose
 
> `struct` [_guild_member_download_zocl](lua/classes/_guild_member_download_zocl.md)* m_DownPacket_Member
 
> `struct` `_guild_applier_download_zocl`* m_DownPacket_Applier
 
> `struct` `_guild_query_info_result_zocl`* m_QueryPacket_Info
 
> `struct` `_guild_money_io_download_zocl`* m_MoneyIO_List
 
> `struct` `_guild_member_buddy_download_zocl`* m_Buddy_List
 
> `int` m_nIOMoneyHistoryNum
 
> `struct` [_io_money_data](lua/classes/_io_money_data.md)* m_IOMoneyHistory_get(`unsigned __int64`)
 
> `bool` m_bDBWait
 
> `bool` m_bIOWait
 
> `bool` m_bRankWait
 
> `unsigned char` m_byMoneyOutputKind
 
> `int` m_nTempMemberNum
 
> `unsigned int` m_dwLastLoopTime
 
> `const` `char`* m_szHistoryFileName
 
