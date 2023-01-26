--//-----ADDITIONAL FUNCTIONS-----\\---------------------------------------------------------------------------------------------------------------------------

local addictionchance = 3;
local addictionchancetwo = 1;
local addictioncheck = false;
local addictionvalue = 50;

--//-----FUNCTIONS THAT REGULATE OVERDOSE VALUE-----\\---------------------------------------------------------------------------------------------------------

local overdosevalue = 0;
local overdosecheckval = true;
local overdosefunctionval = true;
local overdosewarningval = true;
local hasstoppedoverdose = false;

function OverdoseValue()
	return overdosevalue
end--function

function OverdoseRemove()
	if overdosevalue > 0 then
		overdosevalue = overdosevalue - 1
	else
		Events.EveryTenMinutes.Remove(OverdoseRemove);
		overdosecheckval = true;
	end--if

	if overdosevalue < 145 then
		if hasstoppedoverdose == true then
			hasstoppedoverdose = false;
		end--if
	end--if
end--function

function OverdoseCheck()
	if overdosevalue > 0 then
		Events.EveryTenMinutes.Add(OverdoseRemove);
		overdosecheckval = false;
	end--if
end--function

--//-----FUNCTIONS FOR CONSUMING DRUGS-----\\------------------------------------------------------------------------------------------------------------------

function AddictionRandom()
	return ZombRand(5)
end--function

function AddictionRandomTwo()
	return ZombRand(2)
end--function

function OnSmoke_WeedBlunt(food, player)

	local dmg = player:getBodyDamage();
	local stats = player:getStats();
	
	stats:setBoredom(stats:getBoredom() - 55.5);
	stats:setFear(0);
	stats:setDrunkenness(stats:getDrunkenness() + 80);

	addictionvalue = 0
end--function

function OnSnort_CocaineBaggie(items, result, player)
	local dmg = player:getBodyDamage();
	local stats = player:getStats();

	--STATS--------------------------------------------------------------
	stats:setBoredom(stats:getBoredom() - 70);
	stats:setFear(0);
	stats:setDrunkenness(stats:getDrunkenness() + 4);
	stats:setEndurance(stats:getEndurance() + 70);
	stats:setFatigue(stats:getFatigue() - 55);
	stats:setHunger(stats:getHunger() - 10);
	stats:setStress(stats:getStress() - 0.60);
	dmg:setUnhappynessLevel(dmg:getUnhappynessLevel() -65);

	local randomangry = 4;
	local randomannoyed = 5;

	if ZombRand(7) == randomangry then
		stats:setAnger(1);
	elseif ZombRand(7) == randomannoyed then
		stats:setAnger(0.24);
	end--if

	--ADDICTION----------------------------------------------------------
	if AddictionCheck() == false then
		if AddictionRandom() == addictionchance then
			player:getTraits():add("DrugAddict");
			Events.EveryHours.Add(AddictionFunction);
		end--if
	end--if

	addictionvalue = 0

	if addictionvalue < 50 then
		Events.EveryTenMinutes.Remove(AddictionLevelOne);
		Events.EveryTenMinutes.Remove(AddictionLevelTwo);
		Events.OnTick.Remove(AddictionLevelThreeOnTick);
		Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
		addictionleveloneval = false;
		addictionleveltwoval = false;
		addictionlevelthreeval = false;
	elseif addictionvalue >= 50 and addictionvalue < 100 and addictionleveloneval == false then
		Events.EveryTenMinutes.Add(AddictionLevelOne);
		Events.EveryTenMinutes.Remove(AddictionLevelTwo);
		Events.OnTick.Remove(AddictionLevelThreeOnTick);
		Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
		addictionleveloneval = true;
		addictionleveltwoval = false;
		addictionlevelthreeval = false;
	elseif addictionvalue >= 100 and addictionvalue < 200 and addictionleveltwoval == false then
		Events.EveryTenMinutes.Remove(AddictionLevelOne);
		Events.EveryTenMinutes.Add(AddictionLevelTwo);
		Events.OnTick.Remove(AddictionLevelThreeOnTick);
		Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
		addictionleveloneval = false;
		addictionleveltwoval = true;
		addictionlevelthreeval = false;
	elseif addictionvalue >= 200 and addictionlevelthreeval == false then
		Events.EveryTenMinutes.Remove(AddictionLevelOne);
		Events.EveryTenMinutes.Remove(AddictionLevelTwo);
		Events.OnTick.Add(AddictionLevelThreeOnTick);
		Events.EveryHours.Add(AddictionLevelThreeEveryHours);
		addictionleveloneval = false;
		addictionleveltwoval = false;
		addictionlevelthreeval = true;
	end--if

	--OVERDOSING---------------------------------------------------------
	overdosevalue = overdosevalue + 36
	
	if overdosecheckval == true then
		OverdoseCheck();
		overdosecheckval = false;
	end--if

	if overdosewarningval == true then
		if overdosevalue > 100 and overdosevalue <= 144 then
			Events.OnTick.Add(OverdoseWarning);
			overdosewarningval = false;
		end--if
	end--if

	if overdosefunctionval == true then
		if overdosevalue >= 145 then
			Events.OnTick.Add(OverdoseFunctionStats);
			Events.EveryTenMinutes.Add(OverdoseFunctionDeath);
			overdosefunctionval = false;
		end--if
	else
		if hasstoppedoverdose == true then
			if overdosevalue >= 145 then
				Events.OnTick.Add(OverdoseFunctionStats);
				Events.EveryTenMinutes.Add(OverdoseFunctionDeath);
				hasstoppedoverdose = false;
				overdosefunctionval = false;
			end--if
		end--if
	end--if
end--function

function OnSnort_MethBaggie(items, result, player)
	local dmg = player:getBodyDamage();
	local stats = player:getStats();
	
	--STATS--------------------------------------------------------------
	stats:setBoredom(stats:getBoredom() - 55.5);
	stats:setFear(0);
	stats:setEndurance(stats:getEndurance() + 50);
	stats:setFatigue(stats:getFatigue() - 35);
	stats:setHunger(stats:getHunger() - 30);
	stats:setStress(stats:getStress() - 0.35);
	dmg:setUnhappynessLevel(dmg:getUnhappynessLevel() -45);

	--ADDICTION----------------------------------------------------------
	if AddictionCheck() == false then
		if AddictionRandom() == addictionchance then
			player:getTraits():add("DrugAddict");
			Events.EveryHours.Add(AddictionFunction);
		end--if
	end--if

	addictionvalue = 0

	if addictionvalue < 50 then
		Events.EveryTenMinutes.Remove(AddictionLevelOne);
		Events.EveryTenMinutes.Remove(AddictionLevelTwo);
		Events.OnTick.Remove(AddictionLevelThreeOnTick);
		Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
		addictionleveloneval = false;
		addictionleveltwoval = false;
		addictionlevelthreeval = false;
	elseif addictionvalue >= 50 and addictionvalue < 100 and addictionleveloneval == false then
		Events.EveryTenMinutes.Add(AddictionLevelOne);
		Events.EveryTenMinutes.Remove(AddictionLevelTwo);
		Events.OnTick.Remove(AddictionLevelThreeOnTick);
		Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
		addictionleveloneval = true;
		addictionleveltwoval = false;
		addictionlevelthreeval = false;
	elseif addictionvalue >= 100 and addictionvalue < 200 and addictionleveltwoval == false then
		Events.EveryTenMinutes.Remove(AddictionLevelOne);
		Events.EveryTenMinutes.Add(AddictionLevelTwo);
		Events.OnTick.Remove(AddictionLevelThreeOnTick);
		Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
		addictionleveloneval = false;
		addictionleveltwoval = true;
		addictionlevelthreeval = false;
	elseif addictionvalue >= 200 and addictionlevelthreeval == false then
		Events.EveryTenMinutes.Remove(AddictionLevelOne);
		Events.EveryTenMinutes.Remove(AddictionLevelTwo);
		Events.OnTick.Add(AddictionLevelThreeOnTick);
		Events.EveryHours.Add(AddictionLevelThreeEveryHours);
		addictionleveloneval = false;
		addictionleveltwoval = false;
		addictionlevelthreeval = true;
	end--if

	--OVERDOSING---------------------------------------------------------
	overdosevalue = overdosevalue + 20

	if overdosecheckval == true then
		OverdoseCheck();
		overdosecheckval = false;
	end--if

	if overdosewarningval == true then
		if overdosevalue > 100 and overdosevalue <= 144 then
			Events.OnTick.Add(OverdoseWarning);
			overdosewarningval = false;
		end--if
	end--if

	if overdosefunctionval == true then
		if overdosevalue >= 145 then
			Events.OnTick.Add(OverdoseFunctionStats);
			Events.EveryTenMinutes.Add(OverdoseFunctionDeath);
			overdosefunctionval = false;
		end--if
	else
		if hasstoppedoverdose == true then
			if overdosevalue >= 145 then
				Events.OnTick.Add(OverdoseFunctionStats);
				Events.EveryTenMinutes.Add(OverdoseFunctionDeath);
				hasstoppedoverdose = false;
				overdosefunctionval = false;
			end--if
		end--if
	end--if
end--function

--//-----FUNCTIONS FOR OVERDOSING-----\\-----------------------------------------------------------------------------------------------------------------------

function OverdoseWarning()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	if overdosevalue >= 100 and overdosevalue < 145 then
		stats:setStress(0.45);
		stats:setPanic(20);
		dmg:setFoodSicknessLevel(26);
	end--if

	if overdosevalue < 100 and overdosevalue > 144 then
		Events.OnTick.Remove(OverdoseWarning);
	end--if
end--function

function OverdoseFunctionStats()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	stats:setStress(0.75);
	stats:setPanic(70);
	stats:setEndurance(30);
	stats:setFatigue(70);
	dmg:setUnhappynessLevel(80);
	if dmg:getWetness() < 55 then
		dmg:setWetness(55);
	end--if
end--function
	
function OverdoseFunctionDeath()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	dmg:setFoodSicknessLevel(dmg:getFoodSicknessLevel() + 35);
end--function

function OnTake_ActivatedCharcoal()
	local dmg = getPlayer():getBodyDamage();
	local oneintwochance = 1;

	if overdosevalue > 100 then
		dmg:setFoodSicknessLevel(dmg:getFoodSicknessLevel() - 20);
		addictionvalue = 0;
	else
		dmg:setFoodSicknessLevel(dmg:getFoodSicknessLevel() + 13);
	end--if

	if ZombRand(4) > oneintwochance then
		Events.OnTick.Remove(OverdoseFunctionStats);
		Events.EveryTenMinutes.Remove(OverdoseFunctionDeath);
		overdosefunctionval = true;
		overdosewarningval = true;
		hasstoppedoverdose = true;
	end--if
end--function

--//-----FUNCTIONS FOR ADDICTION-----\\------------------------------------------------------------------------------------------------------------------------

function AddictionCheck()
	local player = getPlayer();
	if player:HasTrait("DrugAddict") then
		return true
	else
		return false
	end--if
end--function

function AddictionLevelOne()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	stats:setStress(stats:getStress() + 0.031);
end--function

function AddictionLevelTwo()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	if stats:getStress() < 0.4 then
		stats:setStress(0.4);
	end--if
	stats:setStress(stats:getStress() + 0.021);
end--function

function AddictionLevelThreeOnTick()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	if stats:getStress() < 0.85 then
		stats:setStress(0.85);
	end--if
	if dmg:getWetness() < 20 then
		dmg:setWetness(20);
	end--if
end--function

function AddictionLevelThreeEveryHours()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	if stats:getPanic() < 50 then
		stats:setPanic(90);
	end--if
	if stats:getEndurance() > 0.26 then
		stats:setEndurance(0.26);
	end--if
end--function

local addictionleveloneval = false;
local addictionleveltwoval = false;
local addictionlevelthreeval = false;

function AddictionFunction()
	local player = getPlayer();

	if AddictionCheck() == true then
		addictionvalue = addictionvalue + 10
		
		if addictionvalue < 50 then
			Events.EveryTenMinutes.Remove(AddictionLevelOne);
			Events.EveryTenMinutes.Remove(AddictionLevelTwo);
			Events.OnTick.Remove(AddictionLevelThreeOnTick);
			Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
			addictionleveloneval = false;
			addictionleveltwoval = false;
			addictionlevelthreeval = false;
		elseif addictionvalue >= 50 and addictionvalue < 100 and addictionleveloneval == false then
			Events.EveryTenMinutes.Add(AddictionLevelOne);
			Events.EveryTenMinutes.Remove(AddictionLevelTwo);
			Events.OnTick.Remove(AddictionLevelThreeOnTick);
			Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
			addictionleveloneval = true;
			addictionleveltwoval = false;
			addictionlevelthreeval = false;
		elseif addictionvalue >= 100 and addictionvalue < 200 and addictionleveltwoval == false then
			Events.EveryTenMinutes.Remove(AddictionLevelOne);
			Events.EveryTenMinutes.Add(AddictionLevelTwo);
			Events.OnTick.Remove(AddictionLevelThreeOnTick);
			Events.EveryHours.Remove(AddictionLevelThreeEveryHours);
			addictionleveloneval = false;
			addictionleveltwoval = true;
			addictionlevelthreeval = false;
		elseif addictionvalue >= 200 and addictionlevelthreeval == false then
			Events.EveryTenMinutes.Remove(AddictionLevelOne);
			Events.EveryTenMinutes.Remove(AddictionLevelTwo);
			Events.OnTick.Add(AddictionLevelThreeOnTick);
			Events.EveryHours.Add(AddictionLevelThreeEveryHours);
			addictionleveloneval = false;
			addictionleveltwoval = false;
			addictionlevelthreeval = true;
		end--if
	end--if
end--function

function AdictionOnGameStart()
	local player = getPlayer();

	if AddictionCheck() == true then
		Events.EveryHours.Add(AddictionFunction);
	end--if
end--function

Events.OnGameStart.Add(AdictionOnGameStart);
Events.OnMainMenuEnter.Remove(AdictionOnGameStart);