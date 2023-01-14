-- by albion #0123
-- seriously, thanks Albion!
local Overrides = require 'overrides/overrides'
local ClothingOverrides = {}

ClothingOverrides.outfitsToSwap = {
    Police = 'Police',
    PoliceState = 'Police',
    PoliceRiot = 'Police',
    Fireman = 'Fireman',
    FiremanFullSuit = 'Fireman',
    Ranger = 'Ranger',
    Postal = 'Postal',
    AmbulanceDriver = 'EMS',
    PrisonGuard = 'PrisonGuard',
    Inmate = 'Inmate',
    InmateEscaped = 'InmateEscaped',
    -- susceptible
    SusceptiblePoliceGasmask = 'PoliceSusceptible',
    SusceptibleFirefighter = 'FiremanSusceptible',
}

ClothingOverrides.zonesToOutfit = {
    Rosewood = {
        Police = 'PoliceRosewood',
        Fireman = {'Fireman_Rosewood_Black', 'FiremanFullSuit_Rosewood_Black', 'Fireman_Rosewood_Khaki', 'FiremanFullSuit_Rosewood_Khaki'},
		PoliceSusceptible = 'SusceptiblePoliceRosewood',
		FiremanSusceptible = {'SusceptibleFireman_Rosewood_Black', 'SusceptibleFiremanFullSuit_Rosewood_Black', 'SusceptibleFireman_Rosewood_Khaki', 'SusceptibleFiremanFullSuit_Rosewood_Khaki'},},
    Louisville = {
        Fireman = {'Fireman_Louisville_Black', 'FiremanFullSuit_Louisville_Black', 'Fireman_Louisville_Khaki', 'FiremanFullSuit_Louisville_Khaki'},
        EMS = 'EMSLouisville',
        PrisonGuard = 'DOC_Jefferson',
        Inmate = 'InmateJefferson',
        InmateEscaped = 'InmateEscapedJefferson',
		FiremanSusceptible = {'SusceptibleFireman_Louisville_Black', 'SusceptibleFiremanFullSuit_Louisville_Black', 'SusceptibleFireman_Louisville_Khaki', 'SusceptibleFiremanFullSuit_Louisville_Khaki'},},
    Jefferson = {
        Fireman = {'Fireman_Louisville_Black', 'FiremanFullSuit_Louisville_Black', 'Fireman_Louisville_Khaki', 'FiremanFullSuit_Louisville_Khaki'},
        EMS = 'EMSJefferson',
		FiremanSusceptible = {'SusceptibleFireman_Louisville_Black', 'SusceptibleFiremanFullSuit_Louisville_Black', 'SusceptibleFireman_Louisville_Khaki', 'SusceptibleFiremanFullSuit_Louisville_Khaki'},},
    RavenCreek = {
        Police = 'PoliceRavenCreek',
        Fireman = {'Fireman_RavenCreek_Black', 'FiremanFullSuit_RavenCreek_Black', 'Fireman_RavenCreek_Khaki', 'FiremanFullSuit_RavenCreek_Khaki'},
        EMS = 'EMSRavenCreek',
        PrisonGuard = 'DOC_RavenCreek',
        Inmate = {'InmateRavenCreek'},
        InmateEscaped = 'InmateEscapedRavenCreek',
		PoliceSusceptible = 'SusceptiblePoliceRavenCreek',
		FiremanSusceptible = {'SusceptibleFireman_RavenCreek_Black', 'SusceptibleFiremanFullSuit_RavenCreek_Black', 'SusceptibleFireman_RavenCreek_Khaki', 'SusceptibleFiremanFullSuit_RavenCreek_Khaki'},},
    -- police only zones
    Riverside = {
        Police = 'PoliceRiverside',
		PoliceSusceptible = 'SusceptiblePoliceRiverside',},
    Muldraugh = {
        Police = 'PoliceMuldraugh',
		PoliceSusceptible = 'SusceptiblePoliceMuldraugh',},
    WestPoint = {
        Police = 'PoliceWestPoint',
		PoliceSusceptible = 'SusceptiblePoliceWestPoint',},
    JeffersonSD = {
        Police = 'PoliceJeffersonSD',
		PoliceSusceptible = 'SusceptiblePoliceJeffersonSD',},
    JeffersonPD = {
        Police = 'PoliceJeffersonPD',
		PoliceSusceptible = 'SusceptiblePoliceJeffersonPD',},
    LouisvillePD = {
        Police = 'PoliceLouisville',
		PoliceSusceptible = 'SusceptiblePoliceLouisville',},
    KSP = {
        Police = 'KSP_Trooper',
		PoliceSusceptible = 'SusceptibleKSP_Trooper',},
    -- default
    Meade = {
        Ranger = {'FederalRanger', 'State_LawRanger', 'StateRanger'},
        Police = 'PoliceMeade',
        Fireman = {'Fireman_Meade_Black', 'FiremanFullSuit_Meade_Black', 'Fireman_Meade_Khaki', 'FiremanFullSuit_Meade_Khaki'},
        EMS = 'EMSMeade',
        PrisonGuard = 'DOC_Meade',
        Inmate = {'InmateMeadeOrange', 'InmateMeadeYellow', 'InmateMeadeRed'},
        InmateEscaped = 'InmateEscapedMeade',
		PoliceSusceptible = 'SusceptiblePoliceMeade',
		FiremanSusceptible = {'SusceptibleFireman_Meade_Black', 'SusceptibleFiremanFullSuit_Meade_Black', 'SusceptibleFireman_Meade_Khaki', 'SusceptibleFiremanFullSuit_Meade_Khaki'},
		Postal = 'USPS_Mail',},
}

ClothingOverrides.overrideOutfit = function(zombie)
    local outfitType = ClothingOverrides.outfitsToSwap[zombie:getOutfitName()] or false
    if not outfitType then return end

    local x = zombie:getX()
    local y = zombie:getY()
    local zone
    if luautils.stringStarts(outfitType, 'Police') then
        zone = Overrides.getZone(x,y,Overrides.zonesPolice)
    else
        zone = Overrides.getZone(x,y)
    end
    
    local outfit = ClothingOverrides.zonesToOutfit[zone][outfitType]
    if not outfit then outfit = ClothingOverrides.zonesToOutfit.Meade[outfitType] end

    if type(outfit) == 'table' then
        outfit = outfit[ZombRand(1, #outfit+1)]
    end

    zombie:dressInNamedOutfit(outfit)
    zombie:resetModel()
end

function ClothingOverrides.OnTick(tick)
    if tick % Overrides.tickrate == 0 then
        local zombies = getCell():getZombieList()
        --print(zombies:size())
        for i=0,zombies:size()-1 do
            ClothingOverrides.overrideOutfit(zombies:get(i))
        end
    end
end

Events.OnGameStart.Add(function(check)
	if SandboxVars.STR.ZombieOverrides and getWorld():getMap():contains("Muldraugh, KY") then
		Events.OnTick.Add(ClothingOverrides.OnTick)
	else
		Events.OnTick.Remove(ClothingOverrides.OnTick)
	end
end)

return ClothingOverrides