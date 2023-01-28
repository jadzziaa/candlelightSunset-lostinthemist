function CFR_AdjustForage()
	--print("Adjusting forage for New York...");
	removeForage = {
				Banana = "Base.Banana",
				Lemon = "Base.Lemon",
				Lime = "Base.Lime",
				Orange = "Base.Orange",
				Pineapple = "Base.Pineapple",
				Avocado = "Base.Avocado",
				--Peanuts = "Base.Peanuts",
				Mango = "Base.Mango",
				--BlackSage = "Base.BlackSage",
				--Plantain = "Base.Plantain",--Replace Plantain and BlackSage with Birch Bark?
				--LemonGrass = "Base.LemonGrass",--Replace with wheat grass?
				
			};

	for itemName, itemFullName in pairs(removeForage) do
		forageDefs[itemName].zones["Forest"] = 0
		forageDefs[itemName].zones["DeepForest"] = 0
		forageDefs[itemName].zones["Vegitation"] = 0
		forageDefs[itemName].zones["Farm"] = 0
		forageDefs[itemName].zones["FarmLand"] = 0
		forageDefs[itemName].zones["TrailerPark"] = 0
		forageDefs[itemName].zones["TownZone"] = 0
		forageDefs[itemName].zones["Nav"] = 0
	end
	
	-- forageDefs["kayse_BirchBark"] = {
		-- type = "Kayse_Recycle.kayse_BirchBark",
		-- minCount = 2,
		-- maxCount = 8,
		-- xp = 15,
		-- recipes = { "Herbalist" },
		-- categories = { "MedicinalPlants" },
		-- zones = {
			-- Forest = 15,
			-- DeepForest = 25,
			-- Vegitation = 5,
			-- FarmLand = 5,
			-- Farm = 5,
		-- },
		-- months = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
	-- };
	
	-- forageDefs["kayse_WheatGrass"] = {
		-- type = "Kayse_Recycle.kayse_WheatGrass",
		-- minCount = 4,
		-- maxCount = 16,
		-- xp = 15,
		-- recipes = { "Herbalist" },
		-- categories = { "MedicinalPlants" },
		-- zones = {
			-- Forest      = 5,
			-- DeepForest  = 5,
			-- Vegitation  = 5,
			-- FarmLand = 25,
			-- Farm = 15,
		-- },
		-- months = { 3, 4, 5, 6, 7, 8, 9, 10},
	-- };
end

function CFR_BloodCurse()
	local players = getOnlinePlayers()
	if players == nil then
		local player = getPlayer()
		if player:HasItem("kayse_Hat_Cowboy") then
			print("Cursing a player: ".. player:getUsername())
			player:addBlood(BloodBodyPartType.Head, false, true, false);
			player:splatBloodFloorBig();
		end
		return
	else
		for i=0, players:size()-1 do
			local player = players:get(i)
			if player:HasItem("kayse_Hat_Cowboy") then
				print("Cursing a player: ".. player:getUsername())
				player:addBlood(BloodBodyPartType.Head, false, true, false);
				player:splatBloodFloorBig();
			end
		end
	end
end

CFR_AdjustForage()
--Commented out code mostly works, just is a bit extreme for Kentucky.

--Events.EveryTenMinutes.Add(CFR_BloodCurse)