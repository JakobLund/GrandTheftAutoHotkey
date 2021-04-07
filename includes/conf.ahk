;
; Copyright (C) 2017 MacMailler
; GitHub: https://github.com/MacMailler/QuickMacro
;
; Copyright (C) 2021 Jakob Lund
; GitHub: https://github.com/JakobLund/GrandTheftAutoHotkey
;

Global SettingsFile := "GrandTheftAutoHotkey.ini"

loadConf() {
	IfExist, %SettingsFile%
	{
		IniRead, keyPhoneDelay, %SettingsFile%, Delays, keyPhoneDelay
		IniRead, keyPhoneDuration, %SettingsFile%, Delays, KeyPhoneDuration
		IniRead, phoneDelay, %SettingsFile%, Delays, PhoneDelay
		IniRead, menuAmmoDelay, %SettingsFile%, Delays, MenuAmmoDelay
		IniRead, intMenuDelay, %SettingsFile%, Delays, intMenuDelay
		IniRead, intMenuKeyDelay, %SettingsFile%, Delays, intMenuKeyDelay
		IniRead, keyMDuration, %SettingsFile%, Delays, KeyMDuration
		IniRead, InteractionMKey, %SettingsFile%, Keys, InteractionMKey
		
		IniRead, PegasusKey, %SettingsFile%, Hotkeys, PegasusKey
		IniRead, MechanicKey, %SettingsFile%, Hotkeys, MechanicKey
		IniRead, LesterKey, %SettingsFile%, Hotkeys, LesterKey
		IniRead, ArmorKey, %SettingsFile%, Hotkeys, ArmorKey
		IniRead, SnackKey, %SettingsFile%, Hotkeys, SnackKey
		IniRead, AmmoKey, %SettingsFile%, Hotkeys, AmmoKey
		IniRead, ToggleCeoKey, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniRead, ToggleMCKey, %SettingsFile%, Hotkeys, ToggleMCKey
		IniRead, MorsMutualKey, %SettingsFile%, Hotkeys, MorsMutualKey
		IniRead, SpawnCarKey, %SettingsFile%, Hotkeys, SpawnCarKey
		IniRead, ReturnCarKey, %SettingsFile%, Hotkeys, ReturnCarKey
		IniRead, SpawnSparrowKey, %SettingsFile%, Hotkeys, SpawnSparrowKey
		IniRead, ReturnSparrowKey, %SettingsFile%, Hotkeys, ReturnSparrowKey
		IniRead, SpawnBuzzardKey, %SettingsFile%, Hotkeys, SpawnBuzzardKey
		IniRead, OutfitFixKey, %SettingsFile%, Hotkeys, OutfitFixKey
		IniRead, DisconnectFromLobbyKey, %SettingsFile%, Hotkeys, DisconnectFromLobbyKey
		IniRead, ToggleAFKKey, %SettingsFile%, Hotkeys, ToggleAFKKey
		IniRead, ToggleAutoClickerKey, %SettingsFile%, Hotkeys, ToggleAutoClickerKey
		

	} else {
		IniWrite, %keyPhoneDelay%, %SettingsFile%, Delays, keyPhoneDelay
		IniWrite, %keyPhoneDuration%, %SettingsFile%, Delays, KeyPhoneDuration
		IniWrite, %phoneDelay%, %SettingsFile%, Delays, PhoneDelay
		IniWrite, %menuAmmoDelay%, %SettingsFile%, Delays, MenuAmmoDelay
		IniWrite, %intMenuDelay%, %SettingsFile%, Delays, intMenuDelay
		IniWrite, %intMenuKeyDelay%, %SettingsFile%, Delays, intMenuKeyDelay
		IniWrite, %keyMDuration%, %SettingsFile%, Delays, KeyMDuration
		IniWrite, %InteractionMKey%, %SettingsFile%, Keys, InteractionMKey
		
		IniWrite, %PegasusKey%, %SettingsFile%, Hotkeys, PegasusKey
		IniWrite, %MechanicKey%, %SettingsFile%, Hotkeys, MechanicKey
		IniWrite, %LesterKey%, %SettingsFile%, Hotkeys, LesterKey
		IniWrite, %ArmorKey%, %SettingsFile%, Hotkeys, ArmorKey
		IniWrite, %SnackKey%, %SettingsFile%, Hotkeys, SnackKey
		IniWrite, %AmmoKey%, %SettingsFile%, Hotkeys, AmmoKey
		IniWrite, %ToggleCeoKey%, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniWrite, %ToggleMCKey%, %SettingsFile%, Hotkeys, ToggleMCKey
		IniWrite, %MorsMutualKey%, %SettingsFile%, Hotkeys, MorsMutualKey
		IniWrite, %SpawnCarKey%, %SettingsFile%, Hotkeys, SpawnCarKey
		IniWrite, %ReturnCarKey%, %SettingsFile%, Hotkeys, ReturnCarKey
		IniWrite, %SpawnSparrowKey%, %SettingsFile%, Hotkeys, SpawnSparrowKey
		IniWrite, %ReturnSparrowKey%, %SettingsFile%, Hotkeys, ReturnSparrowKey
		IniWrite, %SpawnBuzzardKey%, %SettingsFile%, Hotkeys, SpawnBuzzardKey
		IniWrite, %OutfitFixKey%, %SettingsFile%, Hotkeys, OutfitFixKey
		IniWrite, %DisconnectFromLobbyKey%, %SettingsFile%, Hotkeys, DisconnectFromLobbyKey
		IniWrite, %ToggleAFKKey%, %SettingsFile%, Hotkeys, ToggleAFKKey
		IniWrite, %ToggleAutoClickerKey%, %SettingsFile%, Hotkeys, ToggleAutoClickerKey
	}
}