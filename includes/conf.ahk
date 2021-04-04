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
		IniRead, menuDelay, %SettingsFile%, Delays, MenuDelay
		IniRead, keyMDelay, %SettingsFile%, Delays, KeyMDelay
		IniRead, keyMDuration, %SettingsFile%, Delays, KeyMDuration
		IniRead, RepeatButtonDelay, %SettingsFile%, Delays, RepeatButtonDelay
		IniRead, heavyWeaponKey, %SettingsFile%, Keys, HeavyWeaponKey
		IniRead, specialWeaponKey, %SettingsFile%, Keys, SpecialWeaponKey
		IniRead, RepeatButton, %SettingsFile%, Keys, RepeatButton
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
		IniRead, OutfitFixKey, %SettingsFile%, Hotkeys, OutfitFixKey
		IniRead, DisconnectFromLobbyKey, %SettingsFile%, Hotkeys, DisconnectFromLobbyKey
		

	} else {
		IniWrite, %keyPhoneDelay%, %SettingsFile%, Delays, keyPhoneDelay
		IniWrite, %keyPhoneDuration%, %SettingsFile%, Delays, KeyPhoneDuration
		IniWrite, %phoneDelay%, %SettingsFile%, Delays, PhoneDelay
		IniWrite, %menuDelay%, %SettingsFile%, Delays, MenuDelay
		IniWrite, %keyMDelay%, %SettingsFile%, Delays, KeyMDelay
		IniWrite, %keyMDuration%, %SettingsFile%, Delays, KeyMDuration
		IniWrite, %RepeatButtonDelay%, %SettingsFile%, Delays, RepeatButtonDelay
		IniWrite, %heavyWeaponKey%, %SettingsFile%, Keys, HeavyWeaponKey
		IniWrite, %specialWeaponKey%, %SettingsFile%, Keys, SpecialWeaponKey
		IniWrite, %RepeatButton%, %SettingsFile%, Keys, RepeatButton
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
		IniWrite, %OutfitFixKey%, %SettingsFile%, Hotkeys, OutfitFixKey
		IniWrite, %DisconnectFromLobbyKey%, %SettingsFile%, Hotkeys, DisconnectFromLobbyKey
	}
}