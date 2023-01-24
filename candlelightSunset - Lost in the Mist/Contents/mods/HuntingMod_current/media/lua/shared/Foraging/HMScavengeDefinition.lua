require 'Foraging/forageSystem'

Events.onAddForageDefs.Add(function()

	local HMAnimalTraces = {
		type="HuntingMod.HMAnimalTraces",
		minCount=4,
		maxCount=15,
		xp=12,
		skill=1,
		categories = { "Animals", "ForestGoods", "ForestRarities" },
		zones={ Forest=20, DeepForest=25, FarmLand=10, Farm=15, Vegitation=30 },
		bonusMonths = { 11, 12, 1, 2, 3, 4 },
		spawnFuncs = { doDeadTrapAnimalSpawn },
		spawnFuncs = { doWildFoodSpawn },
	};

	local HMAnimalTracks = {
		type="HuntingMod.HMAnimalTracks",
		minCount=2,
		maxCount=10,
		xp=25,
		skill=4,
		categories = { "Animals", "ForestGoods", "ForestRarities" },
		zones={ Forest=20, DeepForest=25, FarmLand=10, Farm=15, Vegitation=30 },
		spawnFuncs = { doWildFoodSpawn },
	};


	local HMAnimalTracksLarge = {
		type="HuntingMod.HMAnimalTracksLarge",
		minCount=1,
		maxCount=5,
		xp=45,
		skill=8,
		categories = { "Animals", "ForestGoods", "ForestRarities" },
		zones={ Forest=20, DeepForest=25, FarmLand=10, Farm=15, Vegitation=30 },
		spawnFuncs = { doWildFoodSpawn },
	};

	local forageCategories = {
		
		["ForestGoods"] = {
			chance = 25,
			name = "ForestGoods",
			typeCategory = "Other",
			showOptionPerk = "PlantScavenging",
			showCategoryLevel = 2,
			validFloors = { "ANY" },
			zoneChance = {
			DeepForest      = 25,
			Forest          = 20,
			Vegitation      = 30,
			FarmLand        = 10,
			Farm            = 15,
			TrailerPark     = 0,
			TownZone        = 0,
			Nav             = 0,
			},
		},
	};
forageSystem.addItemDef(HMAnimalTraces);
forageSystem.addItemDef(HMAnimalTracks);
forageSystem.addItemDef(HMAnimalTracksLarge);

end)
