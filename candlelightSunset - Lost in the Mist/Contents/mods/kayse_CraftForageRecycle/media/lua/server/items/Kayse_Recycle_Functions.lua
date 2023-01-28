--require "recipecode";

function Kayse_CFR_Carpentry01(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Woodwork , 1);
end

function Kayse_CFR_Carpentry02(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Woodwork , 2);
end

function Kayse_CFR_Electrical01(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Electricity, 1);
end

function Kayse_CFR_Electrical02(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Electricity, 2);
end

function Kayse_CFR_Electrical05(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Electricity, 5);
end

function Kayse_CFR_Generator(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Mechanics, 25);
	player:getXp():AddXP(Perks.MetalWelding, 25);
	player:getXp():AddXP(Perks.Electricity, 25);
end

function Kayse_CFR_Metalworking01(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.MetalWelding, 1);
end

function Kayse_CFR_Metalworking02(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.MetalWelding, 2);
end

function Kayse_CFR_Metalworking05(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.MetalWelding, 5);
end

function Kayse_CFR_EngineParts(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.MetalWelding, 5);
	player:getXp():AddXP(Perks.Mechanics, 5);
end

function Kayse_CFR_Glassblowing(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.MetalWelding, 5);
	player:getXp():AddXP(Perks.Cooking, 5);
end

function Kayse_CFR_Metalworking15(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.MetalWelding, 15);
end

function Kayse_CFR_Cooking01(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Cooking, 1);
end

function Kayse_CFR_Cooking05(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Cooking, 5);
end

function Kayse_CFR_FirstAid05(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Doctor, 5);
end

function Kayse_CFR_FirstAid25(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Doctor, 25);
end

function Kayse_CFR_Tailoring01(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Tailoring, 1);
end

function Kayse_CFR_Tailoring05(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Tailoring, 5);
end

function Kayse_CFR_Tailoring10(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Tailoring, 10);
end



function Kayse_CFR_WoundPoultice(items, result, player) -- Rename the resulting item.
    result:setName("Wound Recovery Poultice");
end

function Kayse_CFR_NonDairyMilk(items, result, player) -- Rename the resulting item.
    result:setName("Non-Dairy Milk");
end

function Kayse_CFR_AddJar(items, result, player) -- Add a jar.
	player:getInventory():AddItem("Base.EmptyJar");
end

function Kayse_CFR_EmptyBlowTorch(items, result, player) -- Randomly add corpse loot.
	result:setUsedDelta(0);
end

function Kayse_CFR_HouseKey(items, result, player) -- Randomly add corpse loot.
	--local newKey = player:getInventory():AddItem("Base.Key1");
	result:takeKeyId();--This API doesn't seem to work for me...
	print(result:getKeyId())
end

function Kayse_CFR_Autopsy(items, result, player) -- Randomly add corpse loot.
	--result:setName("Human Leather");--Not needed anymore.
	local die = ZombRand(10)
	if die > 5 then
		player:getInventory():AddItem("Base.Doll");
	end
	player:addBlood(100);
	player:addBlood(BloodBodyPartType.Hand_L, false, true, false);
	player:addBlood(BloodBodyPartType.Hand_R, false, true, false);
	player:splatBloodFloorBig();
end

function Kayse_CFR_Whittle(items, result, player) -- Randomly add whittle result.
	--result:setName("Human Leather");--Not needed anymore.
	local die = ZombRand(10)
	local CarpLevel = player:getPerkLevel(Perks.Woodwork)
	local die = -5 + CarpLevel + ZombRand(10)
	print("Die roll is: "..die)
	if die == 1 then
		player:getInventory():AddItem("Base.KnittingNeedles");
	elseif die == 2 then
		player:getInventory():AddItem("Base.ToyCar");
	elseif die == 3 then
		player:getInventory():AddItem("Base.Dice");
	elseif die == 4 then
		player:getInventory():AddItem("Base.Comb");
	elseif die == 5 then
		player:getInventory():AddItem("Base.Spoon");
	elseif die == 6 then
		player:getInventory():AddItem("Base.Fork");
	elseif die == 7 then
		player:getInventory():AddItem("Base.RollingPin");
	elseif die == 8 then
		player:getInventory():AddItem("Base.Pencil");
	elseif die > 0 then
		player:getInventory():AddItem("Base.Bowl");
	else
		player:getInventory():AddItem("Base.UnusableWood");
	end
end