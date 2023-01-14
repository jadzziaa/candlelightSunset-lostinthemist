local function AddLootToType(itemName, containerName, itemChance)
	local containerData = ProceduralDistributions.list[containerName]
    if not containerData then
        print("Container does not exist. Are you sure you typed it in correctly?")
        return
    end

	table.insert(containerData.items, itemName);
	table.insert(containerData.items, itemChance);
end

--[[AddLootToType("HandCrank", "CrateElectronics", 2)
AddLootToType("HandCrank", "ElectronicStoreMisc", 4)
AddLootToType("HandCrank", "EngineerTools", 1)
AddLootToType("HandCrank", "StoreShelfElectronics", 3)
AddLootToType("HandCrank", "GigamartHouseElectronics", 4)
AddLootToType("MakeshiftCrank", "ImprovisedCrafts", 1)]]

AddLootToType("Base.LargeFishingMagnet", "CrateFishing", 0.5)
AddLootToType("Base.LargeFishingMagnet", "FishingStoreGear", 0.5)

AddLootToType("Base.MediumFishingMagnet", "GigamartTools", 0.6)
AddLootToType("Base.MediumFishingMagnet", "SurvivalGear", 0.5)
AddLootToType("Base.MediumFishingMagnet", "ScienceMisc", 0.8)
AddLootToType("Base.MediumFishingMagnet", "CrateRandomJunk", 0.06)
AddLootToType("Base.MediumFishingMagnet", "ClosetShelfGeneric", 0.3)

AddLootToType("Base.SmallFishingMagnet", "KitchenRandom", 0.8)
AddLootToType("Base.SmallFishingMagnet", "DrugShackMisc", 0.8)
AddLootToType("Base.SmallFishingMagnet", "OfficeDrawers", 0.4)
AddLootToType("Base.SmallFishingMagnet", "PoliceDesk", 0.8)
AddLootToType("Base.SmallFishingMagnet", "ClassroomDesk", 0.8)
AddLootToType("Base.SmallFishingMagnet", "DeskGeneric", 0.8)
AddLootToType("Base.SmallFishingMagnet", "OfficeDesk", 0.8)
AddLootToType("Base.SmallFishingMagnet", "OfficeDeskHome", 0.8)
AddLootToType("Base.SmallFishingMagnet", "PoliceDesk", 0.8)
AddLootToType("Base.SmallFishingMagnet", "PoliceDesk", 0.8)
AddLootToType("Base.SmallFishingMagnet", "PoliceDesk", 0.8)