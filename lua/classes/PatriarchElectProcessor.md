# PatriarchElectProcessor
 
## Functions
 
> `static` `class` [PatriarchElectProcessor](lua/classes/PatriarchElectProcessor.md)* Instance(`void`)
 
> `int` DoIt(`class` [PatriarchElectProcessor](lua/classes/PatriarchElectProcessor.md) *,`enum Cmd`,`class` [CPlayer](lua/classes/CPlayer.md) *,`class` [CBinaryData](lua/classes/CBinaryData.md) *)
 
> `bool` CheatSetPatriarch(`class` [PatriarchElectProcessor](lua/classes/PatriarchElectProcessor.md) *,`class` [CPlayer](lua/classes/CPlayer.md) *,`unsigned char`)
 
## Members
 
> `unsigned int` m_dwNonvoteCnt_get(`unsigned __int64`)
 
> `void` m_dwNonvoteCnt_set(`unsigned __int64`,`unsigned int`)
 
> `unsigned int` m_dwTotalVoteCnt_get(`unsigned __int64`)
 
> `void` m_dwTotalVoteCnt_set(`unsigned __int64`,`unsigned int`)
 
> `unsigned int` m_dwHighGradeNum_get(`unsigned __int64`)
 
> `void` m_dwHighGradeNum_set(`unsigned __int64`,`unsigned int`)
 
> `enum ElectProcessor__ProcessorType` _eProcessType
 
> `class` [ElectProcessor](lua/classes/ElectProcessor.md)* _kRunningProcessor
 
> `class` [ElectProcessor](lua/classes/ElectProcessor.md)* _kProcessor_get(`unsigned __int64`)
 
> `void` _kProcessor_set(`unsigned __int64`,`class` [ElectProcessor](lua/classes/ElectProcessor.md) *)
 
> `bool` _bTimeCheck
 
> `bool` _bInitProce
 
> `unsigned int` _dwNextCheckTime
 
> `unsigned int` _dwNextCheckDay
 
> `unsigned int` _dwNextScoreUpdateTime
 
> `unsigned int` _dwElectSerial
 
> `unsigned int` _dwCurrPatriarchElectSerial
 
> `class` [CLogFile](lua/classes/CLogFile.md) _kSysLog
 
