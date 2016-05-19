^!d::
	oldClip := ClipboardAll
	Send, ^c
;	InternetSearch := "https://www.google.de/?gfe_rd=cr&ei=Dxs-V6bGMIam8weJtqqwCQ#q=" .  Clipboard
;	Run, % InternetSearch
	
	EnvGet, UserProfile, USERPROFILE
;	MsgBox %UserProfile%

	DebugFileName := UserProfile . "\Desktop\" . Clipboard

	MsgBox %DebugFileName%

	IfNotExist, %DebugFileName%
		FileAppend, %UserProfile%, %DebugFileName%
		Run, % DebugFileName
	Clipboard := oldClip
	Return