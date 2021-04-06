;
; Copyright (C) 2017 MacMailler
; GitHub: https://github.com/MacMailler/QuickMacro
;
; Copyright (C) 2021 Jakob Lund
; GitHub: https://github.com/JakobLund/GrandTheftAutoHotkey
;


; Services
pegasusLabel:
	callService("Pegasus")
return

mechanicLabel:
	callService("Mechanic")
return

lesterLabel:
	callService("Lester")
return

morsMutualLabel:
	callService("MorsMutual")
return


; CEO abilities
toggleCeoLabel:
	if MCState = 0
		if CEOState = 0
			ceoAbil("RegisterCEO")
		else
			ceoAbil("RetireCEO")
		
return

spawnBuzzardLabel:
	getItem("Buzzard")
return

; MC abilities
toggleMCLabel:
	if CEOState = 0
		if MCState = 0
			mcAbil("RegisterMC")
		else
			mcAbil("DisbandMC")
return



; Kosatka abilities
spawnSparrowLabel:
	kosatkaAbil("SpawnSparrow")
return

returnSparrowLabel:
	kosatkaAbil("ReturnSparrow")
return


; Player items
armorLabel:
	getItem("Armor")
return

snackLabel:
	getItem("Snack")
return

ammoLabel:
	getItem("Ammo")
return

spawnCarLabel:
	playerAbil("SpawnCar")
return

returnCarLabel:
	playerAbil("ReturnCar")
return

; Others
outfitFixLabel:
	outfitFix()
return

disconnectFromLobbyLabel:
	disconnectFromLobby()
return

instructionsWindowsLabel:
	showInstructions()
return

toggleAFKLabel:
	toggleAFK()
return

toggleAutoClickerLabel:
	toggleAutoClicker()
return


activateLabel:
	init()
return

exitLabel:
	ExitApp
return

