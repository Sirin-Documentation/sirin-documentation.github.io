# CandidateMgr
 
## Functions
 
> `static` `class` [CandidateMgr](lua/classes/CandidateMgr.md)* Instance(`void`)
 
> `bool` IsRegistedAvator_1(`unsigned char`,`unsigned long`)
 
> `bool` IsRegistedAvator_2(`unsigned char`,`const` `char` *)
 
> `bool` IsRegistedAvator_2(`unsigned char`,`unsigned long`)
 
> `bool` Regist(`class` [CPlayer](lua/classes/CPlayer.md) *)
 
> `bool` AppointPatriarchGroup(`class` [CPlayer](lua/classes/CPlayer.md) *,`enum _candidate_info__ClassType`)
 
> `unsigned long` GetWinCnt(`unsigned char`,`unsigned long`)
 
## Members
 
> `int` _nMaxNum
 
> `struct` [_candidate_info](lua/classes/_candidate_info.md)* _kCandidate_get(`unsigned char`,`unsigned int`)
 
> `struct` [_candidate_info](lua/classes/_candidate_info.md)* _kCandidate_old_get(`unsigned char`,`unsigned int`)
 
> `struct` [_candidate_info](lua/classes/_candidate_info.md)* _kPatriarchGroup_get(`unsigned char`,`unsigned int`)
 
> `int` _nCandidateCnt_1st_get(`unsigned __int64`)
 
> `void` _nCandidateCnt_1st_set(`unsigned __int64`,`int`)
 
> `struct` [_candidate_info](lua/classes/_candidate_info.md)* _pkCandidateLink_1st_get(`unsigned char`,`unsigned int`)
 
> `int` _nCandidateCnt_2st_get(`unsigned __int64`)
 
> `void` _nCandidateCnt_2st_set(`unsigned __int64`,`int`)
 
> `struct` [_candidate_info](lua/classes/_candidate_info.md)* _pkCandidateLink_2st_get(`unsigned char`,`unsigned int`)
 
> `struct` [_candidate_info](lua/classes/_candidate_info.md)* _pkLeader_get(`unsigned char`,`unsigned int`)
 
> `class` [CLogFile](lua/classes/CLogFile.md) _kSysLog
 
> `class` [CLogFile](lua/classes/CLogFile.md) _kVoteResultLog
 
