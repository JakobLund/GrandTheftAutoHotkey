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
		Menu, Tray, Tip, GrandTheftAutoHotkey %hotkeyState%
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
	Hotkey, %InstructionWindowsKey%, instructionsWindowsLabel, %t%
	Hotkey, %ToggleAFKKey%, toggleAFKLabel, %t%
	Hotkey, %ToggleAutoClickerKey%, toggleAutoClickerLabel, %t%
	Hotkey, %SpawnBuzzardKey%, spawnBuzzardLabel, %t%

	
	
	T := false
}

phoneUp() {
	Setkeydelay, %keyPhoneDelay%, %keyPhoneDuration%
	Send {Up}
	Sleep, %phoneDelay%
}

toggleInteractiveMenu() {
	Send {%InteractionMKey%}
	if (MCState = 1 || CEOState = 1) {
		Send {Down}
	}
	Sleep %menuDelay%
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
	
	if(a = "RegisterCEO")
		Send {Down 6}{Enter}{Enter}
	else if(a = "RetireCEO")
		Send {Up}{Enter}{Up}{Enter}{Enter}

	toggleCeo()
}

mcAbil(a) {
	toggleInteractiveMenu()

	if(a = "RegisterMC")
		Send {Down 7}{Enter}{Enter}
	else if(a = "DisbandMC")
		Send {Up}{Enter}{Up}{Enter}{Enter}

	toggleMC()
}

kosatkaAbil(a) {
	toggleInteractiveMenu()

	if(a = "SpawnSparrow"){
		Send {Down 5}{Enter}{Up}{Enter}
		Sleep %menuAmmoDelay%
		Send {Down}{Enter}
	}
	else if(a = "ReturnSparrow"){
		Send {Down 5}{Enter}{Up}{Enter}{Down 3}{Enter}
		Sleep %menuAmmoDelay%
		Send {Up 2}{Enter}
	}
		
	
	toggleInteractiveMenu()
}

playerAbil(a) {
	toggleInteractiveMenu()

	if(a = "SpawnCar"){
		Send {Down 4}{Enter}
		Sleep %menuAmmoDelay%
		Send {Enter}
	}
	else if(a = "ReturnCar"){
		Send {Down 4}{Enter}
		Sleep %menuAmmoDelay%
		Send {Down 4}{Enter}
	}

	toggleInteractiveMenu()
	
}


getItem(i) {
	toggleInteractiveMenu()
	if(i = "Armor"){
		Send {Down 2}{Enter}{Down}{Enter}
		Sleep %menuDelay%
		Send {Up 3}{Enter}
	}
	else if(i = "Snack") {
		Send {Down 2}{Enter}
		Sleep %menuDelay%
		Send {Down 2}{Enter 3}
	}
	else if(i = "Ammo"){
		Send {Down 2}{Enter}{Down 3}{Enter}
		while A_Index  <= 8 {
			Send {Right}{Up}
			Sleep, %menuAmmoDelay%
			Send {Enter}{Down}
		}
	}
	else if(i = "Buzzard"){
		Send {Up}{Enter}{Up 2}{Enter}
		Sleep %menuDelay%
		Send {Down 4}{Enter}
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

showInstructions() {
	instructions = 
			(
Shortcuts: 
End - Enable/Disable the script
Num0 + Num1 - Spawn personal vehicle
Num0 + Num2 - Return personal vehicle to storage
Num0 + Num3 - Spawn Sparrow
Num0 + Num4 - Return Sparow to Kosatka
Num0 + Num5 - Equip Super heavy armor
Num0 + Num6 - Call Lester
Num0 + Num7 - Call Mechanic
Num0 + Num8 - Call Mors Insurance
Num0 + Num9 - Call Pegasus
NumAdd - Toggle MC President
NumDiv - Toggle CEO Mode
NumSub - Buy ammo for all weapons
NumDot - Eat two snacks from the second place in your inventory
RCtrl & RShift - Outfit fix
Num0 + NumSub - Force solo lobby
			)
	msgbox, 0x40, GrandTheftAutoHotkey, %instructions%
}

toggleAFK() {
	; function borrowed from https://github.com/2called-chaos/gtav-online-ahk/blob/master/GTA%20V%20Online%20Macros.ahk
	IsAFKActivated := !IsAFKActivated
	bringGameIntoFocus()
	Sleep 100

	if (IsAFKActivated) {
		while (IsAFKActivated  and !GetKeyState("Numpad0", "P") and !GetKeyState("Up", "P")) {
			Sleep 100
			Send, {a}
			Sleep 100
			Send, {d}
		}
	}
	return
}

toggleAutoClicker() {
	IsAutoClickerActivated := !IsAutoClickerActivated
	bringGameIntoFocus()
	Sleep 100

	if (IsAutoClickerActivated) {
		while (IsAutoClickerActivated and !GetKeyState("Numpad0", "P") and !GetKeyState("Down", "P")) {
			MouseClick, left
		}
	}
	return
}