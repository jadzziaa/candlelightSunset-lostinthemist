--Functions For Drugs

function RandomAngry()
	return ZombRand(7)+1
end--function

--//-----FUNCTIONS THAT REGULATE OVERDOSE VALUE-----\\--

local overdosevalue = 0;
local overdosecheckval = false;
local overdosefunctionval = false;
local overdosewarningval = false;

function OverdoseValue()
	return overdosevalue
end--function

function OverdoseRemove()
	if overdosevalue > 0 then
		overdosevalue = overdosevalue - 1
	else
		Events.EveryTenMinutes.Remove(OverdoseRemove);
	end--if
end--function

function PrintOverdoseValue()
	getPlayer():Say("Hello" .. OverdoseValue());
	if overdosevalue == 0 then
		Events.EveryTenMinutes.Remove(PrintOverdoseValue);
	end--if
end--function

function OverdoseCheck()
	if overdosevalue > 0 then
		Events.EveryTenMinutes.Add(PrintOverdoseValue);
		Events.EveryTenMinutes.Add(OverdoseRemove);
	end--if
end--function

--//-----FUNCTIONS FOR CONSUMING DRUGS-----\\--

function OnSmoke_WeedBlunt(food, player)

	local dmg = player:getBodyDamage();
	local stats = player:getStats();
	
	stats:setBoredom(stats:getBoredom() - 55.5);
	stats:setFear(0);
	stats:setDrunkenness(stats:getDrunkenness() + 80);
end--function

function OnSnort_CocaineBaggie(items, result, player)
	local dmg = player:getBodyDamage();
	local stats = player:getStats();

	stats:setBoredom(stats:getBoredom() - 70);
	stats:setFear(0);
	stats:setDrunkenness(stats:getDrunkenness() + 4);
	stats:setEndurance(stats:getEndurance() + 70);
	stats:setFatigue(stats:getFatigue() - 55);
	stats:setHunger(stats:getHunger() - 10);
	dmg:setUnhappynessLevel(dmg:getUnhappynessLevel() -65);

	local randomangry = RandomAngry();
	if randomangry == 4 then
		stats:setAnger(1);
	elseif randomangry == 5 then
		stats:setAnger(0.24);
	end--if

	if overdosevalue == 0 then
		overdosecheckval = true;
	else
		overdosecheckval = false;
	end--if

	if overdosevalue < 145 then
		overdosefunctionval = true;
	else
		overdosefunctionval = false;
	end--if

	if overdosevalue < 145 then
		overdosewarningval = true;
	else
		overdosewarningval = false;
	end--if

	overdosevalue = overdosevalue + 36

	if overdosecheckval == true then
		OverdoseCheck();
	end--if

	if overdosewarningval == true then
		if overdosevalue > 100 and overdosevalue <= 144 then
			Events.OnTick.Add(OverdoseWarning);
		end--if
	end--if

	if overdosefunctionval == true then
		if overdosevalue >= 145 then
			Events.OnTick.Add(OverdoseFunctionStats);
			Events.EveryTenMinutes.Add(OverdoseFunctionDeath);
		end--if
	end--if
end--function

function OnSnort_MethBaggie(items, result, player)
	local dmg = player:getBodyDamage();
	local stats = player:getStats();

	stats:setBoredom(stats:getBoredom() - 55.5);
	stats:setFear(0);
	stats:setEndurance(stats:getEndurance() + 50);
	stats:setFatigue(stats:getFatigue() - 35);
	stats:setHunger(stats:getHunger() - 30);
	stats:setStress(0.35);
	dmg:setUnhappynessLevel(dmg:getUnhappynessLevel() -45);

	if overdosevalue == 0 then
		overdosecheckval = true;
	else
		overdosecheckval = false;
	end--if

	if overdosevalue < 145 then
		overdosefunctionval = true;
	else
		overdosefunctionval = false;
	end--if

	if overdosevalue < 145 then
		overdosewarningval = true;
	else
		overdosewarningval = false;
	end--if

	overdosevalue = overdosevalue + 20

	if overdosecheckval == true then
		OverdoseCheck();
	end--if

	if overdosewarningval == true then
		if overdosevalue > 100 and overdosevalue <= 144 then
			Events.OnTick.Add(OverdoseWarning);
		end--if
	end--if

	if overdosefunctionval == true then
		if overdosevalue >= 145 then
			Events.OnTick.Add(OverdoseFunctionStats);
			Events.EveryTenMinutes.Add(OverdoseFunctionDeath);
		end--if
	end--if
end--function

--//-----FUNCTIONS FOR OVERDOSING-----\\--

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
	dmg:setUnhappynessLevel(80);
end--function
	
function OverdoseFunctionDeath()
	local dmg = getPlayer():getBodyDamage();
	local stats = getPlayer():getStats();

	dmg:setFoodSicknessLevel(dmg:getFoodSicknessLevel() + 35);
end--function
