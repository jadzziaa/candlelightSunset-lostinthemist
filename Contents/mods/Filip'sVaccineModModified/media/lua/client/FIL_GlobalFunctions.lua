function FIL_InfectionRate(player)
    local player = getPlayer();
	local body = player:getBodyDamage();
    return (player:getHoursSurvived()-body:getInfectionTime())/body:getInfectionMortalityDuration();
end--functoin

--Viral pathogen
function InjectPlayerVirus()
    local player = getPlayer();
    player:getBodyDamage():setInfected(true);
end--function

--Cure
function InjectPlayerCure()
    local player = getPlayer();
    local curemin = -1;
    local curemax = 0.80;
    local FIL_rate = LabRecipes_InfectionRate(player);
    if player:getBodyDamage():isInfected() then
        if FIL_rate > curemin and FIL_rate <= curemax then
            player:getBodyDamage():setInfected(false);
            player:getBodyDamage():setInfectionLevel(0);
            player:getBodyDamage():setInfectionMortalityDuration(-1);
            player:getBodyDamage():setInfectionTime(-1);
            local FIL_parts = player:getBodyDamage():getBodyParts();
            for i = 0, FIL_parts:size()-1 do
                FIL_parts:get(i):SetInfected(false);
            end--for
        end--if
    end--if        
end--function

--Quality vaccine
function InjectPlayerQVaccine()
    local player = getPlayer();
    local qvmin = 0.20;
    local qvmax = 0.80;
    local qvcure = 1;
    local qvinfect = 2;
    local qvtime = 336;
    local qvstrength = 50;
    local qvalbuminMin = 8;
    local qvalbuminDelta = 6;
    local qvrecess = 2;
    local FIL_rate = LabRecipes_InfectionRate(player);
    local FIL_pMod = player:getModData();
    FIL_pMod.AlbuminDoses = 0;
	FIL_pMod.VaccineRecess = 0;
	FIL_pMod.VaccineTime = 0;
	FIL_pMod.VaccineStrength = 0;
    if player:getBodyDamage():isInfected() then
        if qvcure > ZombRand(100) then
            player:getBodyDamage():setInfected(false);
            player:getBodyDamage():setInfectionLevel(0);
            player:getBodyDamage():setInfectionMortalityDuration(-1);
            player:getBodyDamage():setInfectionTime(-1);
            local FIL_parts = player:getBodyDamage():getBodyParts();
            for i = 0, FIL_parts:size()-1 do
                FIL_parts:get(i):SetInfected(false);
            end--for
        else--if
            local FIL_rate = LabRecipes_InfectionRate(player);
            if FIL_rate > qvmin and FIL_rate <= qvmax then
                player:getBodyDamage():setInfectionTime(player:getHoursSurvived()-qvmin*player:getBodyDamage():getInfectionMortalityDuration());
                if qvalbuminMin > 0 then
                    player:getModData().AlbuminDoses = qvalbuminMin+ZombRand(qvalbuminDelta);
                end--if
                player:getModData().VaccineRecess = qvrecess;
            end--if
        end--if
    elseif qvinfect > ZombRand(100) then
        player:getBodyDamage():setInfected(true);
    else--if
        FIL_pMod.VaccineTime = qvtime;
		FIL_pMod.VaccineStrength = qvstrength; 
    end--if    
end--function

--Advanced test vaccine
function InjectPlayerTestV3()
    local player = getPlayer();
    local v3min = 0.30;
    local v3max = 0.70;
    local v3cure = 0;
    local v3infect = 20;
    local v3time = 150;
    local v3strength = 20;
    local v3albuminMin = 5;
    local v3albuminDelta = 5;
    local v3recess = 1;
    local FIL_rate = LabRecipes_InfectionRate(player);
    local FIL_pMod = player:getModData();
    FIL_pMod.AlbuminDoses = 0;
	FIL_pMod.VaccineRecess = 0;
	FIL_pMod.VaccineTime = 0;
	FIL_pMod.VaccineStrength = 0;
    if player:getBodyDamage():isInfected() then
        if v3cure > ZombRand(100) then
            player:getBodyDamage():setInfected(false);
            player:getBodyDamage():setInfectionLevel(0);
            player:getBodyDamage():setInfectionMortalityDuration(-1);
            player:getBodyDamage():setInfectionTime(-1);
            local FIL_parts = player:getBodyDamage():getBodyParts();
            for i = 0, FIL_parts:size()-1 do
                FIL_parts:get(i):SetInfected(false);
            end--for
        else--if
            local FIL_rate = LabRecipes_InfectionRate(player);
            if FIL_rate > v3min and FIL_rate <= v3max then
                player:getBodyDamage():setInfectionTime(player:getHoursSurvived()-v3min*player:getBodyDamage():getInfectionMortalityDuration());
                if v3albuminMin > 0 then
                    player:getModData().AlbuminDoses = v3albuminMin+ZombRand(v3albuminDelta);
                end--if
                player:getModData().VaccineRecess = v3recess;
            end--if
        end--if
    elseif v3infect > ZombRand(100) then
        player:getBodyDamage():setInfected(true);
    else
        FIL_pMod.VaccineTime = v3time;
		FIL_pMod.VaccineStrength = v3strength; 
    end--if    
end--function

--Improved test vaccine
function InjectPlayerTestV2()
    local player = getPlayer();
    local v2min = 0.43;
    local v2max = 0.68;
    local v2cure = 0;
    local v2infect = 95;
    local v2time = 0;
    local v2strength = 0;
    local v2albuminMin = 3;
    local v2albuminDelta = 4;
    local v2recess = 0;
    local FIL_rate = LabRecipes_InfectionRate(player);
    local FIL_pMod = player:getModData();
    FIL_pMod.AlbuminDoses = 0;
	FIL_pMod.VaccineRecess = 0;
	FIL_pMod.VaccineTime = 0;
	FIL_pMod.VaccineStrength = 0;
    if player:getBodyDamage():isInfected() then
        if v2cure > ZombRand(100) then
            player:getBodyDamage():setInfected(false);
            player:getBodyDamage():setInfectionLevel(0);
            player:getBodyDamage():setInfectionMortalityDuration(-1);
            player:getBodyDamage():setInfectionTime(-1);
            local FIL_parts = player:getBodyDamage():getBodyParts();
            for i = 0, FIL_parts:size()-1 do
                FIL_parts:get(i):SetInfected(false);
            end--for
        else--if
            local FIL_rate = LabRecipes_InfectionRate(player);
            if FIL_rate > v2min and FIL_rate <= v2max then
                player:getBodyDamage():setInfectionTime(player:getHoursSurvived()-v2min*player:getBodyDamage():getInfectionMortalityDuration());
                if v2albuminMin > 0 then
                    player:getModData().AlbuminDoses = v2albuminMin+ZombRand(v2albuminDelta);
                end--if
                player:getModData().VaccineRecess = v2recess;
            end--if
        end--if
    elseif v2infect > ZombRand(100) then
        player:getBodyDamage():setInfected(true);
    else--if
        FIL_pMod.VaccineTime = v2time;
		FIL_pMod.VaccineStrength = v2strength; 
    end--if    
end--function

--Test vacine
function InjectPlayerTestV1()
    local player = getPlayer();
    local v1min = 0.50;
    local v1max = 0.65;
    local v1cure = 0;
    local v1infect = 97;
    local v1time = 0;
    local v1strength = 0;
    local v1albuminMin = 2;
    local v1albuminDelta = 3;
    local v1recess = 0;
    local FIL_rate = LabRecipes_InfectionRate(player);
    local FIL_pMod = player:getModData();
    FIL_pMod.AlbuminDoses = 0;
	FIL_pMod.VaccineRecess = 0;
	FIL_pMod.VaccineTime = 0;
	FIL_pMod.VaccineStrength = 0;
    if player:getBodyDamage():isInfected() then
        if v1cure > ZombRand(100) then
            player:getBodyDamage():setInfected(false);
            player:getBodyDamage():setInfectionLevel(0);
            player:getBodyDamage():setInfectionMortalityDuration(-1);
            player:getBodyDamage():setInfectionTime(-1);
            local FIL_parts = player:getBodyDamage():getBodyParts();
            for i = 0, FIL_parts:size()-1 do
                FIL_parts:get(i):SetInfected(false);
            end--for
        else--if
            local FIL_rate = LabRecipes_InfectionRate(player);
            if FIL_rate > v1min and FIL_rate <= v1max then
                player:getBodyDamage():setInfectionTime(player:getHoursSurvived()-v1min*player:getBodyDamage():getInfectionMortalityDuration());
                if v1albuminMin > 0 then
                    player:getModData().AlbuminDoses = v1albuminMin+ZombRand(v1albuminDelta);
                end--if
                player:getModData().VaccineRecess = v1recess;
            end--if
        end--if
    elseif v1infect > ZombRand(100) then
        player:getBodyDamage():setInfected(true);
    else--if
        FIL_pMod.VaccineTime = v1time;
		FIL_pMod.VaccineStrength = v1strength; 
    end--if    
end--function

function TakeBloodSample(isPlayerHaveSyringe)
    local player = getPlayer();
    if isPlayerHaveSyringe == true then
        local FIL_bloodsample = player:getInventory():AddItem("LabItems.CmpSyringeWithBlood"); --creates the item, puts it in the player's inventory and keeps a reference to it in the variable
        FIL_bloodsample:getModData().IsInfected = player:getBodyDamage():isInfected();
        FIL_bloodsample:getModData().InfectionRate = FIL_InfectionRate(player);
    else--if
        local FIL_bloodsamplere = player:getInventory():AddItem("LabItems.CmpSyringeReusableWithBlood"); --creates the item, puts it in the player's inventory and keeps a reference to it in the variable
        FIL_bloodsamplere:getModData().IsInfected = player:getBodyDamage():isInfected();
        FIL_bloodsamplere:getModData().InfectionRate = FIL_InfectionRate(player);
    end--if    
    player:getBodyDamage():ReduceGeneralHealth(5);
end--function