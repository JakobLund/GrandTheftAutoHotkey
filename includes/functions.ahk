;
; Copyright (C) 2017 MacMailler
; GitHub: https://github.com/MacMailler/QuickMacro
;
; Copyright (C) 2021 Jakob Lund
; GitHub: https://github.com/JakobLund/GrandTheftAutoHotkey
;

init() {
	if (WinExist("Grand Theft Auto V")) {
		hotkeyState := hotkeyState = "On" ? "Off" : "On"
		Menu, Tray, Tip, GrandTheftAutoHotkey`n%hotkeyState%
		setHotkeyState(hotkeyState)
		
		if (hotkeyState = "On")
			Menu, Tray, Rename, Activate, Deactivate
		else
			Menu, Tray, Rename, Deactivate, Activate
	} else {
		msgbox, 0x40, GrandTheftAutoHotkey, GTAV is not running!
	}
}
	
setHotkeyState(t) {
	Hotkey, IfWinActive, Grand Theft Auto V
	Hotkey, %PegasusKey%, pegasusLabel, %t%
	Hotkey, %MechanicKey%, mechanicLabel, %t%
	Hotkey, %LesterKey%, lesterLabel, %t%
	Hotkey, %SpawnSparrowKey%, spawnSparrowLabel, %t%
	Hotkey, %ReturnSparrowKey%, returnSparrowLabel, %t%
	Hotkey, %SpawnCarKey%, spawnCarLabel, %t%
	Hotkey, %ReturnCarKey%, returnCarLabel, %t%
	Hotkey, %ArmorKey%, armorLabel, %t%
	Hotkey, %SnackKey%, snackLabel, %t%
	Hotkey, %AmmoKey%, ammoLabel, %t%
	Hotkey, %MorsMutualKey%, morsMutualLabel, %t%
	Hotkey, %OutfitFixKey%, outfitFixLabel, %t%
	Hotkey, %ToggleCeoKey%, toggleCeoLabel, %t%
	Hotkey, %ToggleMCKey%, toggleMCLabel, %t%
	Hotkey, %DisconnectFromLobbyKey%, disconnectFromLobbyLabel, %t%

	
	
	T := false
}

phoneUp() {
	Setkeydelay, %keyPhoneDelay%, %keyPhoneDuration%
	Send {Up}
	Sleep, %phoneDelay%
}

toggleInteractiveMenu() {
	Send {%InteractionMKey%}

	if (0 = 1) {
		Send {Down}
		Send {Down}
	} else if (playerState = 1) {
		Send {Down}
	}
}

toggleCeo() {
	if(CEOState = 0)
		CEOState := 1
	else
		CEOState := 0
}

toggleMC() {
	if(MCState = 0)
		MCState := 1
	else
		MCState := 0
}

callService(s) {
	phoneUp()
	Send {Right}{Up}{Enter}
	
	if(s = "Pegasus")
		Send {Up 6}{Enter}
		
	else if(s = "MorsMutual")
		Send {Up 9}{Enter}
		
	else if(s = "Mechanic")
		Send {Up 11}{Enter}

	else if(s = "Lester")
		Send {Up 15}{Enter}
}

ceoAbil(a) {
	toggleInteractiveMenu()
	
	if(a = "RegisterCEO"){
		Send {Down 6}{Enter}{Enter}
	}
	else if(a = "RetireCEO"){
		Send {Enter}{Up}{Enter}{Enter}
	}
	toggleCeo()
}

mcAbil(a) {
	toggleInteractiveMenu()

	if(a = "RegisterMC"){
		Send {Down 7}{Enter}{Enter}
	}
	else if(a = "DisbandMC"){
		Send {Enter}{Up}{Enter}{Enter}
	}
	toggleMC()
}

kosatkaAbil(a) {
	toggleInteractiveMenu()

	if(a = "SpawnSparrow")
		Send {Down 5}{Enter}{Up}{Enter}{Down}{Enter}
	else if(a = "ReturnSparrow")
		Send {Down 5}{Enter}{Up}{Enter}{Down 3}{Enter}{Up 2}{Enter}
	
	toggleInteractiveMenu()
}

playerAbil(a) {
	toggleInteractiveMenu()

	if(a = "SpawnCar")
		Send {Down 4}{Enter}{Enter}
	else if(a = "ReturnCar")
		Send {Down 4}{Enter}{Down 4}{Enter}
	
	toggleInteractiveMenu()
	
}


getItem(i) {
	toggleInteractiveMenu()
	if(i = "Armor") {
		Send {Down 2}{Enter}{Down}{Enter}{Up 3}{Enter}
	}
	else if(i = "Snack") {
		Send {Down 2}{Enter}{Down 2}{Enter 3}
	}
	else if(i = "Ammo") {
		Send {Down 2}{Enter}{Down 3}{Enter}
		while A_Index  <= 8 {
			Send {Right}{Up}
			Sleep, %menuDelay%
			Send {Enter}{Down}
		}
	}
	toggleInteractiveMenu()
}

outfitFix() {
	toggleInteractiveMenu()
	Send {Down}{Enter}{Down 3}{Enter}
	toggleInteractiveMenu()
}

bringGameIntoFocus() {
	global IntFocusDelay
	WinActivate ahk_class grcWindow
}


disconnectFromLobby() {
	Run, pssuspend gta5.exe ,,Hide
	Sleep 10000
	Run, pssuspend -r gta5.exe ,,Hide
	bringGameIntoFocus()
}