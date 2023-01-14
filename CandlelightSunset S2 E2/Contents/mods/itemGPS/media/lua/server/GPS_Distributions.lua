require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"
require "Items/ItemPicker"	
    --     Outfit_FiremanStripper  Outfit_PoliceStripper  
	
	
SuburbsDistributions.all.Outfit_AmbulanceDriver = SuburbsDistributions.all.Outfit_AmbulanceDriver or {rolls = 1,items = {},junk= {rolls =1, items={}}}
table.insert(SuburbsDistributions["all"]["Outfit_AmbulanceDriver"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_AmbulanceDriver"].junk.items, 0.6);	


SuburbsDistributions.all.Outfit_FiremanFullSuit = SuburbsDistributions.all.Outfit_FiremanFullSuit or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_FiremanFullSuit"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_FiremanFullSuit"].junk.items, 0.8);	
----------------------------------------------

SuburbsDistributions.all.Outfit_PrivateMilitia = SuburbsDistributions.all.Outfit_PrivateMilitia or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_PrivateMilitia"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_PrivateMilitia"].junk.items, 1);	


SuburbsDistributions.all.Outfit_Police = SuburbsDistributions.all.Outfit_Police or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_Police"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_Police"].junk.items, 1);	
----------------------------------------------

SuburbsDistributions.all.Outfit_Ghillie = SuburbsDistributions.all.Outfit_Ghillie or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_Ghillie"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_Ghillie"].junk.items, 1.5);	


SuburbsDistributions.all.Outfit_ArmyCamoGreen = SuburbsDistributions.all.Outfit_ArmyCamoGreen or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_ArmyCamoGreen"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_ArmyCamoGreen"].junk.items, 1.1);	


SuburbsDistributions.all.Outfit_ArmyCamoDesert = SuburbsDistributions.all.Outfit_ArmyCamoDesert or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_ArmyCamoDesert"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_ArmyCamoDesert"].junk.items, 1.1);
------------------------------------------------

SuburbsDistributions.all.Outfit_PoliceState = SuburbsDistributions.all.Outfit_PoliceState or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_PoliceState"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_PoliceState"].junk.items, 1.4);	
------------------------------------------------

SuburbsDistributions.all.Outfit_Ranger = SuburbsDistributions.all.Outfit_Ranger or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_Ranger"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_Ranger"].junk.items, 1.7);	


SuburbsDistributions.all.Outfit_Hunter = SuburbsDistributions.all.Outfit_Hunter or {rolls = 1,items = {},junk= {rolls =1, items={}}}	
table.insert(SuburbsDistributions["all"]["Outfit_Hunter"].junk.items, "Base.GPSdayz");--
table.insert(SuburbsDistributions["all"]["Outfit_Hunter"].junk.items, 1.7);	
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
	SuburbsDistributions.Bag_WeaponBag = SuburbsDistributions.Bag_WeaponBag or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["Bag_WeaponBag"].junk.items, "Base.GPSdayz");--	
	table.insert(SuburbsDistributions["Bag_WeaponBag"].junk.items, 0.3);	
	
	SuburbsDistributions.Bag_SurvivorBag = SuburbsDistributions.Bag_SurvivorBag or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["Bag_SurvivorBag"].junk.items, "Base.GPSdayz");--
	table.insert(SuburbsDistributions["Bag_SurvivorBag"].junk.items, 0.3);
	
	SuburbsDistributions.SurvivorCache1.SurvivorCrate = SuburbsDistributions.SurvivorCache1.SurvivorCrate or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["SurvivorCache1"]["SurvivorCrate"].junk.items, "Base.GPSdayz");--
	table.insert(SuburbsDistributions["SurvivorCache1"]["SurvivorCrate"].junk.items, 0.3);	
	
	SuburbsDistributions.SurvivorCache2.SurvivorCrate = SuburbsDistributions.SurvivorCache2.SurvivorCrate or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["SurvivorCache2"]["SurvivorCrate"].junk.items, "Base.GPSdayz");--
	table.insert(SuburbsDistributions["SurvivorCache2"]["SurvivorCrate"].junk.items, 0.3);

	SuburbsDistributions.Bag_ALICEpack = SuburbsDistributions.Bag_ALICEpack or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["Bag_ALICEpack"].junk.items, "Base.GPSdayz");--
	table.insert(SuburbsDistributions["Bag_ALICEpack"].junk.items, 0.9);

	SuburbsDistributions.Bag_ALICEpack_Army = SuburbsDistributions.Bag_ALICEpack_Army or {rolls = 1,items = {},junk= {rolls =1, items={}}}
	table.insert(SuburbsDistributions["Bag_ALICEpack_Army"].junk.items, "Base.GPSdayz");--
	table.insert(SuburbsDistributions["Bag_ALICEpack_Army"].junk.items, 1.2);
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
	table.insert(ProceduralDistributions.list["CrateElectronics"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["CrateElectronics"].junk.items, 0.6);

	table.insert(ProceduralDistributions.list["ElectronicStoreMisc"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["ElectronicStoreMisc"].junk.items, 0.6);

	table.insert(ProceduralDistributions.list["StoreShelfElectronics"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["StoreShelfElectronics"].junk.items, 0.6);

	table.insert(ProceduralDistributions.list["GigamartHouseElectronics"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["GigamartHouseElectronics"].junk.items, 1.4);

	table.insert(ProceduralDistributions.list["CampingLockers"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["CampingLockers"].junk.items, 0.6);
--------------------------------------------------------
	table.insert(ProceduralDistributions.list["CampingStoreGear"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["CampingStoreGear"].junk.items, 1.4);

	table.insert(ProceduralDistributions.list["ElectronicStoreHAMRadio"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["ElectronicStoreHAMRadio"].junk.items, 1.4);

	table.insert(ProceduralDistributions.list["GunStoreCounter"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["GunStoreCounter"].junk.items, 1);

	table.insert(ProceduralDistributions.list["GunStoreDisplayCase"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["GunStoreDisplayCase"].junk.items, 0.4);

	table.insert(ProceduralDistributions.list["GunStoreShelf"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["GunStoreShelf"].junk.items, 0.4);

	table.insert(ProceduralDistributions.list["FirearmWeapons"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["FirearmWeapons"].junk.items, 0.1);
---------------------------------------------------------
    table.insert(ProceduralDistributions.list["PoliceStorageGuns"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["PoliceStorageGuns"].junk.items, 1.8);

	table.insert(ProceduralDistributions.list["PoliceStorageAmmunition"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["PoliceStorageAmmunition"].junk.items, 1.8);
	
	table.insert(ProceduralDistributions.list["PoliceDesk"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["PoliceDesk"].junk.items, 0.16);


	table.insert(ProceduralDistributions.list["PoliceLockers"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["PoliceLockers"].junk.items, 2);


	table.insert(ProceduralDistributions.list["PoliceStorageOutfit"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["PoliceStorageOutfit"].junk.items, 1.2);
-----------------------------------------------------------
	table.insert(ProceduralDistributions.list["LockerArmyBedroom"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["LockerArmyBedroom"].junk.items, 1);	

	table.insert(ProceduralDistributions.list["ArmyHangarOutfit"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["ArmyHangarOutfit"].junk.items, 0.4);

	table.insert(ProceduralDistributions.list["ArmyStorageGuns"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["ArmyStorageGuns"].junk.items, 0.4);

	table.insert(ProceduralDistributions.list["ArmySurplusMisc"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["ArmySurplusMisc"].junk.items, 0.4);

	table.insert(ProceduralDistributions.list["ArmyStorageElectronics"].junk.items, "Base.GPSdayz");--
	table.insert(ProceduralDistributions.list["ArmyStorageElectronics"].junk.items, 2);
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
	table.insert(VehicleDistributions["GloveBox"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["GloveBox"].junk.items, 0.01);	
----------------------------------------------		
	table.insert(VehicleDistributions["SurvivalistTruckBed"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["SurvivalistTruckBed"].junk.items, 3.7);

	table.insert(VehicleDistributions["AmbulanceGloveBox"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["AmbulanceGloveBox"].junk.items, 3.6);
----------------------------------------------
	table.insert(VehicleDistributions["PoliceTruckBed"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["PoliceTruckBed"].junk.items, 2.2);

	table.insert(VehicleDistributions["PoliceGloveBox"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["PoliceGloveBox"].junk.items, 5.2);
----------------------------------------------
	table.insert(VehicleDistributions["RangerTruckBed"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["RangerTruckBed"].junk.items, 3);

	table.insert(VehicleDistributions["RangerGloveBox"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["RangerGloveBox"].junk.items, 5.6);

	table.insert(VehicleDistributions["HunterTruckBed"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["HunterTruckBed"].junk.items, 3.6);	

	table.insert(VehicleDistributions["HunterGloveBox"].junk.items, "Base.GPSdayz");--
	table.insert(VehicleDistributions["HunterGloveBox"].junk.items, 3);
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
	

	-- table.insert(SuburbsDistributions["electronicsstore"]["counter"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["electronicsstore"]["counter"].items, 0.9);

	-- table.insert(SuburbsDistributions["electronicsstore"]["shelves"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["electronicsstore"]["shelves"].items, 0.3);
	
	-- table.insert(SuburbsDistributions["gunstore"]["counter"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["gunstore"]["counter"].items, 0.3);

	-- table.insert(SuburbsDistributions["gunstore"]["displaycase"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["gunstore"]["displaycase"].items, 0.3);
	
	-- table.insert(SuburbsDistributions["gunstorestorage"]["all"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["gunstorestorage"]["all"].items, 0.3);
	
			--table.insert(ProceduralDistributions.list["GunStoreShelf"].items, "Base.GPSdayz");--
			--table.insert(ProceduralDistributions.list["GunStoreShelf"].items, 0.3);	
	
	-- table.insert(SuburbsDistributions["armystorage"]["locker"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["armystorage"]["locker"].items, 0.3);	
	
	-- table.insert(SuburbsDistributions["armystorage"]["metal_shelves"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["armystorage"]["metal_shelves"].items, 0.3);
	
	-- table.insert(SuburbsDistributions["armyhanger"]["counter"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["armyhanger"]["counter"].items, 0.3);
	
	-- table.insert(SuburbsDistributions["armyhanger"]["locker"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["armyhanger"]["locker"].items, 0.3);
	
	-- table.insert(SuburbsDistributions["armysurplus"]["metal_shelves"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["armysurplus"]["metal_shelves"].items, 0.3);	
	
	-- table.insert(SuburbsDistributions["armysurplus"]["shelves"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["armysurplus"]["shelves"].items, 0.3);	
	-- table.insert(SuburbsDistributions["camping"]["counter"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["camping"]["counter"].items, 0.3);
	-- table.insert(SuburbsDistributions["camping"]["shelves"].items, "Base.GPSdayz");--
	-- table.insert(SuburbsDistributions["camping"]["shelves"].items, 0.3);
	
	--table.insert(SuburbsDistributions["Bag_ALICEpack_Army"].items, "Base.GPSdayz");--
	--table.insert(SuburbsDistributions["Bag_ALICEpack_Army"].items, 10*3);	

	--table.insert(SuburbsDistributions["Bag_ALICEpack"].items, "Base.GPSdayz");--
	--table.insert(SuburbsDistributions["Bag_ALICEpack"].items, 10*3);	
	