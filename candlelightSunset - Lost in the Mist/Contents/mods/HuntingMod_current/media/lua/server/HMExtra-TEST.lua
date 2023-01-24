--- HUNTING MOD LUAS ---
--- *UNGRATEFULDEAD* ---
------------------------
-------BUTCHERING-------

function getHuntCutWildpig (items, result, player)
	local inv = player:getInventory();
	inv:AddItem ("Base.Bacon");
	inv:AddItem ("HuntingMod.FreshHam");
end

function getHuntCutBear (items, result, player)
	local inv = player:getInventory();
	inv:AddItem ("Base.Steak");
	inv:AddItem ("HuntingMod.FreshHam");
end

function getHuntCutDeer (items, result, player)
	local inv = player:getInventory();
	inv:AddItem ("Base.Steak");
	inv:AddItem ("HuntingMod.FreshHam");
end

function getHuntCutElk (items, result, player)
	local inv = player:getInventory();
	inv:AddItem ("Base.Steak");
	inv:AddItem ("HuntingMod.FreshHam");
end

-------------------------------
---- HUNTING PROBABILITIES ----
-------------------------------

--SMALL GAME SPEAR--
function getHuntSGS (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Spear);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	local hunt2 = ZombRand(7);
	if hunt >= 37
	and hunt2 == 0 then
		player:getInventory():AddItem("HuntingMod.HMDeadRabbit");
	elseif hunt >= 37
		and hunt2 == 1 then
		player:getInventory():AddItem("HuntingMod.HMDeadSquirrel");
	elseif hunt >= 37
		and hunt2 == 2 then
		player:getInventory():AddItem("HuntingMod.HMDeadRaccoon");
	elseif hunt >= 37
		and hunt2 == 3 then
		player:getInventory():AddItem("HuntingMod.HMDeadOpossum");
	elseif hunt >= 37
		and hunt2 == 4 then
		player:getInventory():AddItem("HuntingMod.HMDeadSkunk");
	elseif hunt >= 37
		and hunt2 == 5 then
		player:getInventory():AddItem("HuntingMod.HMDeadFox");
	elseif hunt >= 37
		and hunt2 == 6 then
		player:getInventory():AddItem("HuntingMod.HMDeadBeaver");
	end
end

--SMALL GAME VARMINT RIFLE--
function getHuntSGV (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Aiming);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	local hunt2 = ZombRand(7);
	if hunt >= 25
	and hunt2 == 0 then
		player:getInventory():AddItem("HuntingMod.HMDeadRabbit");
	elseif hunt >= 25
		and hunt2 == 1 then
		player:getInventory():AddItem("HuntingMod.HMDeadSquirrel");
	elseif hunt >= 25
		and hunt2 == 2 then
		player:getInventory():AddItem("HuntingMod.HMDeadRaccoon");
	elseif hunt >= 25
		and hunt2 == 3 then
		player:getInventory():AddItem("HuntingMod.HMDeadOpossum");
	elseif hunt >= 25
		and hunt2 == 4 then
		player:getInventory():AddItem("HuntingMod.HMDeadSkunk");
	elseif hunt >= 25
		and hunt2 == 5 then
		player:getInventory():AddItem("HuntingMod.HMDeadFox");
	elseif hunt >= 25
		and hunt2 == 6 then
		player:getInventory():AddItem("HuntingMod.HMDeadBeaver");
	end
end

--BIRDS SHOTGUN OR VARMINT RIFLE --

function getHuntBIG (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Aiming);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	local hunt2 = ZombRand (5);
	if hunt >= 24
	and hunt2 == 0 then
		player:getInventory():AddItem("HuntingMod.HMDeadGrouse");
	elseif hunt >= 24
		and hunt2 == 1 then
		player:getInventory():AddItem("HuntingMod.HMDeadQuail");
	elseif hunt >= 24
		and hunt2 == 2 then
		player:getInventory():AddItem("HuntingMod.HMDeadDuck");
	elseif hunt >= 24
		and hunt2 == 3 then
		player:getInventory():AddItem("HuntingMod.HMDeadGoose");
	elseif hunt >= 24
		and hunt2 == 4 then
		player:getInventory():AddItem("HuntingMod.HMDeadTurkey");
	end
end

--DEER SPEAR--

function getHuntDES (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Spear);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	local hunt2 = ZombRand (3);
	if hunt >= 38
		and hunt2 == 0 then
		player:getInventory():AddItem("HuntingMod.HMDeadElk");
	elseif hunt >= 38
		and hunt2 >= 1 then
		player:getInventory():AddItem("HuntingMod.HMDeadDeer");
	end
end

--DEER RIFLE--

function getHuntDER (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Aiming);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	local hunt2 = ZombRand (3);
	if hunt >= 26
		and hunt2 == 0 then
		player:getInventory():AddItem("HuntingMod.HMDeadElk");
	elseif hunt >= 26
		and hunt2 >= 1 then
		player:getInventory():AddItem("HuntingMod.HMDeadDeer");
	end
end

--PIG SPEAR--

function getHuntPIS (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Spear);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	if hunt >= 39 then
		player:getInventory():AddItem("HuntingMod.HMDeadWildpig");
	end
end

--PIG SHOTGUN/RIFLE--

function getHuntPIG (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Aiming);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	if hunt >= 26 then
		player:getInventory():AddItem("HuntingMod.HMDeadWildpig");
	end
end

--BEAR SHOTGUN/RIFLE

function getHuntBEG (items, result, player)
	local skill1 = player:getPerkLevel(Perks.Aiming);
	local skill2 = player:getPerkLevel(Perks.Sneak);
	local skill3 = skill1+skill2;
	local hunt = skill3+ZombRand(40);
	if hunt >= 29 then
		player:getInventory():AddItem("HuntingMod.HMDeadBear");
	end
end
