require 'Items/ProceduralDistributions'
if (not getActivatedMods():contains("TrueActionsDancingVHS") and 
		not getActivatedMods():contains("TrueActionsDancingVHS_test")) or
		getActivatedMods():contains("TrueActionsDancingVHS_MAG") or
		getActivatedMods():contains("TrueActionsDancingVHS_MAG_test") then
	print("INFO: TRUE ACTIONS DANCING. Magazines WILL spawn")
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, "TAD.BobTA_African_Noodle_Mag")
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, 0.7)
	table.insert(ProceduralDistributions.list["BedroomDresser"].items, "TAD.BobTA_African_Noodle_Mag")
	table.insert(ProceduralDistributions.list["BedroomDresser"].items, 0.7)
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, "TAD.BobTA_African_Noodle_Mag")
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreBooks"].items, "TAD.BobTA_African_Rainbow_Mag")
	table.insert(ProceduralDistributions.list["BookstoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["Locker"].items, "TAD.BobTA_African_Rainbow_Mag")
	table.insert(ProceduralDistributions.list["Locker"].items, 0.7)
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, "TAD.BobTA_African_Rainbow_Mag")
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateBooks"].items, "TAD.BobTA_Arms_Hip_Hop_Mag")
	table.insert(ProceduralDistributions.list["CrateBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, "TAD.BobTA_Arms_Hip_Hop_Mag")
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateSports"].items, "TAD.BobTA_Arms_Hip_Hop_Mag")
	table.insert(ProceduralDistributions.list["CrateSports"].items, 0.7)
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, "TAD.BobTA_Arm_Push_Mag")
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateAntiqueStove"].items, "TAD.BobTA_Arm_Push_Mag")
	table.insert(ProceduralDistributions.list["CrateAntiqueStove"].items, 0.7)
	table.insert(ProceduralDistributions.list["BinBar"].items, "TAD.BobTA_Arm_Push_Mag")
	table.insert(ProceduralDistributions.list["BinBar"].items, 0.7)
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, "TAD.BobTA_Arm_Wave_One_Mag")
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, "TAD.BobTA_Arm_Wave_One_Mag")
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, 0.7)
	table.insert(ProceduralDistributions.list["LivingRoomShelf"].items, "TAD.BobTA_Arm_Wave_One_Mag")
	table.insert(ProceduralDistributions.list["LivingRoomShelf"].items, 0.7)
	table.insert(ProceduralDistributions.list["BedroomDresser"].items, "TAD.BobTA_Arm_Wave_Two_Mag")
	table.insert(ProceduralDistributions.list["BedroomDresser"].items, 0.7)
	table.insert(ProceduralDistributions.list["PrisonGuardLockers"].items, "TAD.BobTA_Arm_Wave_Two_Mag")
	table.insert(ProceduralDistributions.list["PrisonGuardLockers"].items, 0.7)
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, "TAD.BobTA_Arm_Wave_Two_Mag")
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryCounter"].items, "TAD.BobTA_Around_The_World_Mag")
	table.insert(ProceduralDistributions.list["LibraryCounter"].items, 0.7)
	table.insert(ProceduralDistributions.list["LivingRoomShelf"].items, "TAD.BobTA_Around_The_World_Mag")
	table.insert(ProceduralDistributions.list["LivingRoomShelf"].items, 0.7)
	table.insert(ProceduralDistributions.list["BinBar"].items, "TAD.BobTA_Around_The_World_Mag")
	table.insert(ProceduralDistributions.list["BinBar"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, "TAD.BobTA_Bboy_Hip_Hop_One_Mag")
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateAntiqueStove"].items, "TAD.BobTA_Bboy_Hip_Hop_One_Mag")
	table.insert(ProceduralDistributions.list["CrateAntiqueStove"].items, 0.7)
	table.insert(ProceduralDistributions.list["FireDeptLockers"].items, "TAD.BobTA_Bboy_Hip_Hop_One_Mag")
	table.insert(ProceduralDistributions.list["FireDeptLockers"].items, 0.7)
	table.insert(ProceduralDistributions.list["GardenStoreMisc"].items, "TAD.BobTA_Bboy_Hip_Hop_Three_Mag")
	table.insert(ProceduralDistributions.list["GardenStoreMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["ClassroomShelves"].items, "TAD.BobTA_Bboy_Hip_Hop_Three_Mag")
	table.insert(ProceduralDistributions.list["ClassroomShelves"].items, 0.7)
	table.insert(ProceduralDistributions.list["JewelryStorageAll"].items, "TAD.BobTA_Bboy_Hip_Hop_Three_Mag")
	table.insert(ProceduralDistributions.list["JewelryStorageAll"].items, 0.7)
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, "TAD.BobTA_Bboy_Hip_Hop_Two_Mag")
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateCamping"].items, "TAD.BobTA_Bboy_Hip_Hop_Two_Mag")
	table.insert(ProceduralDistributions.list["CrateCamping"].items, 0.7)
	table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "TAD.BobTA_Bboy_Hip_Hop_Two_Mag")
	table.insert(ProceduralDistributions.list["BarCounterMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, "TAD.BobTA_Body_Wave_Mag")
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, 0.7)
	table.insert(ProceduralDistributions.list["BedroomSideTable"].items, "TAD.BobTA_Body_Wave_Mag")
	table.insert(ProceduralDistributions.list["BedroomSideTable"].items, 0.7)
	table.insert(ProceduralDistributions.list["MagazineRackNewspaper"].items, "TAD.BobTA_Body_Wave_Mag")
	table.insert(ProceduralDistributions.list["MagazineRackNewspaper"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateAntiqueStove"].items, "TAD.BobTA_Booty_Step_Mag")
	table.insert(ProceduralDistributions.list["CrateAntiqueStove"].items, 0.7)
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, "TAD.BobTA_Booty_Step_Mag")
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, "TAD.BobTA_Booty_Step_Mag")
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["DaycareCounter"].items, "TAD.BobTA_Breakdance_Brooklyn_Uprock_Mag")
	table.insert(ProceduralDistributions.list["DaycareCounter"].items, 0.7)
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, "TAD.BobTA_Breakdance_Brooklyn_Uprock_Mag")
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["FireDeptLockers"].items, "TAD.BobTA_Breakdance_Brooklyn_Uprock_Mag")
	table.insert(ProceduralDistributions.list["FireDeptLockers"].items, 0.7)
	table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "TAD.BobTA_Cabbage_Patch_Mag")
	table.insert(ProceduralDistributions.list["BarCounterMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, "TAD.BobTA_Cabbage_Patch_Mag")
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["ChangeroomCounters"].items, "TAD.BobTA_Cabbage_Patch_Mag")
	table.insert(ProceduralDistributions.list["ChangeroomCounters"].items, 0.7)
	table.insert(ProceduralDistributions.list["MechanicShelfMisc"].items, "TAD.BobTA_Can_Can_Mag")
	table.insert(ProceduralDistributions.list["MechanicShelfMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["GigamartToys"].items, "TAD.BobTA_Can_Can_Mag")
	table.insert(ProceduralDistributions.list["GigamartToys"].items, 0.7)
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, "TAD.BobTA_Can_Can_Mag")
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, "TAD.BobTA_Chicken_Mag")
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, 0.7)
	table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, "TAD.BobTA_Chicken_Mag")
	table.insert(ProceduralDistributions.list["OfficeDeskHome"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateEmptyMixed"].items, "TAD.BobTA_Chicken_Mag")
	table.insert(ProceduralDistributions.list["CrateEmptyMixed"].items, 0.7)
	table.insert(ProceduralDistributions.list["WardrobeWomanClassy"].items, "TAD.BobTA_Crazy_Legs_Mag")
	table.insert(ProceduralDistributions.list["WardrobeWomanClassy"].items, 0.7)
	table.insert(ProceduralDistributions.list["ClassroomMisc"].items, "TAD.BobTA_Crazy_Legs_Mag")
	table.insert(ProceduralDistributions.list["ClassroomMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, "TAD.BobTA_Crazy_Legs_Mag")
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["MagazineRackMixed"].items, "TAD.BobTA_Defile_De_Samba_Parade_Mag")
	table.insert(ProceduralDistributions.list["MagazineRackMixed"].items, 0.7)
	table.insert(ProceduralDistributions.list["WardrobeRedneck"].items, "TAD.BobTA_Defile_De_Samba_Parade_Mag")
	table.insert(ProceduralDistributions.list["WardrobeRedneck"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreBags"].items, "TAD.BobTA_Defile_De_Samba_Parade_Mag")
	table.insert(ProceduralDistributions.list["BookstoreBags"].items, 0.7)
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, "TAD.BobTA_Hokey_Pokey_Mag")
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, "TAD.BobTA_Hokey_Pokey_Mag")
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, 0.7)
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, "TAD.BobTA_Hokey_Pokey_Mag")
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, 0.7)
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, "TAD.BobTA_Kick_Step_Mag")
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["OfficeDesk"].items, "TAD.BobTA_Kick_Step_Mag")
	table.insert(ProceduralDistributions.list["OfficeDesk"].items, 0.7)
	table.insert(ProceduralDistributions.list["ElectronicStoreMagazines"].items, "TAD.BobTA_Kick_Step_Mag")
	table.insert(ProceduralDistributions.list["ElectronicStoreMagazines"].items, 0.7)
	table.insert(ProceduralDistributions.list["DeskGeneric"].items, "TAD.BobTA_Macarena_Mag")
	table.insert(ProceduralDistributions.list["DeskGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["DaycareShelves"].items, "TAD.BobTA_Macarena_Mag")
	table.insert(ProceduralDistributions.list["DaycareShelves"].items, 0.7)
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, "TAD.BobTA_Macarena_Mag")
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateSports"].items, "TAD.BobTA_Maraschino_Mag")
	table.insert(ProceduralDistributions.list["CrateSports"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateSports"].items, "TAD.BobTA_Maraschino_Mag")
	table.insert(ProceduralDistributions.list["CrateSports"].items, 0.7)
	table.insert(ProceduralDistributions.list["ClassroomMisc"].items, "TAD.BobTA_Maraschino_Mag")
	table.insert(ProceduralDistributions.list["ClassroomMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, "TAD.BobTA_MoonWalk_One_Mag")
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateCamping"].items, "TAD.BobTA_MoonWalk_One_Mag")
	table.insert(ProceduralDistributions.list["CrateCamping"].items, 0.7)
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, "TAD.BobTA_MoonWalk_One_Mag")
	table.insert(ProceduralDistributions.list["OtherGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["OfficeDesk"].items, "TAD.BobTA_Northern_Soul_Spin_Mag")
	table.insert(ProceduralDistributions.list["OfficeDesk"].items, 0.7)
	table.insert(ProceduralDistributions.list["MusicStoreOthers"].items, "TAD.BobTA_Northern_Soul_Spin_Mag")
	table.insert(ProceduralDistributions.list["MusicStoreOthers"].items, 0.7)
	table.insert(ProceduralDistributions.list["MechanicShelfMisc"].items, "TAD.BobTA_Northern_Soul_Spin_Mag")
	table.insert(ProceduralDistributions.list["MechanicShelfMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["BinGeneric"].items, "TAD.BobTA_Northern_Soul_Spin_On_Floor_Mag")
	table.insert(ProceduralDistributions.list["BinGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, "TAD.BobTA_Northern_Soul_Spin_On_Floor_Mag")
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreBags"].items, "TAD.BobTA_Northern_Soul_Spin_On_Floor_Mag")
	table.insert(ProceduralDistributions.list["BookstoreBags"].items, 0.7)
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, "TAD.BobTA_Raise_The_Roof_Mag")
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, "TAD.BobTA_Raise_The_Roof_Mag")
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, "TAD.BobTA_Raise_The_Roof_Mag")
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, 0.7)
	table.insert(ProceduralDistributions.list["WardrobeManClassy"].items, "TAD.BobTA_Really_Twirl_Mag")
	table.insert(ProceduralDistributions.list["WardrobeManClassy"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreMisc"].items, "TAD.BobTA_Really_Twirl_Mag")
	table.insert(ProceduralDistributions.list["BookstoreMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["KitchenBook"].items, "TAD.BobTA_Really_Twirl_Mag")
	table.insert(ProceduralDistributions.list["KitchenBook"].items, 0.7)
	table.insert(ProceduralDistributions.list["ClassroomShelves"].items, "TAD.BobTA_Rib_Pops_Mag")
	table.insert(ProceduralDistributions.list["ClassroomShelves"].items, 0.7)
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, "TAD.BobTA_Rib_Pops_Mag")
	table.insert(ProceduralDistributions.list["ToolStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["BinGeneric"].items, "TAD.BobTA_Rib_Pops_Mag")
	table.insert(ProceduralDistributions.list["BinGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, "TAD.BobTA_Rockette_Kick_Mag")
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, "TAD.BobTA_Rockette_Kick_Mag")
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["BinGeneric"].items, "TAD.BobTA_Rockette_Kick_Mag")
	table.insert(ProceduralDistributions.list["BinGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, "TAD.BobTA_Rumba_Dancing_Mag")
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, "TAD.BobTA_Rumba_Dancing_Mag")
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["GigamartToys"].items, "TAD.BobTA_Rumba_Dancing_Mag")
	table.insert(ProceduralDistributions.list["GigamartToys"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreBags"].items, "TAD.BobTA_Running_Man_One_Mag")
	table.insert(ProceduralDistributions.list["BookstoreBags"].items, 0.7)
	table.insert(ProceduralDistributions.list["Locker"].items, "TAD.BobTA_Running_Man_One_Mag")
	table.insert(ProceduralDistributions.list["Locker"].items, 0.7)
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, "TAD.BobTA_Running_Man_One_Mag")
	table.insert(ProceduralDistributions.list["GunStoreMagazineRack"].items, 0.7)
	table.insert(ProceduralDistributions.list["BedroomDresser"].items, "TAD.BobTA_Running_Man_Three_Mag")
	table.insert(ProceduralDistributions.list["BedroomDresser"].items, 0.7)
	table.insert(ProceduralDistributions.list["MechanicShelfBooks"].items, "TAD.BobTA_Running_Man_Three_Mag")
	table.insert(ProceduralDistributions.list["MechanicShelfBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreMisc"].items, "TAD.BobTA_Running_Man_Three_Mag")
	table.insert(ProceduralDistributions.list["BookstoreMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, "TAD.BobTA_Running_Man_Two_Mag")
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, 0.7)
	table.insert(ProceduralDistributions.list["DaycareCounter"].items, "TAD.BobTA_Running_Man_Two_Mag")
	table.insert(ProceduralDistributions.list["DaycareCounter"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, "TAD.BobTA_Running_Man_Two_Mag")
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateCamping"].items, "TAD.BobTA_Salsa_Mag")
	table.insert(ProceduralDistributions.list["CrateCamping"].items, 0.7)
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, "TAD.BobTA_Salsa_Mag")
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, "TAD.BobTA_Salsa_Mag")
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryCounter"].items, "TAD.BobTA_Salsa_Double_Twirl_Mag")
	table.insert(ProceduralDistributions.list["LibraryCounter"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateNewspapers"].items, "TAD.BobTA_Salsa_Double_Twirl_Mag")
	table.insert(ProceduralDistributions.list["CrateNewspapers"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, "TAD.BobTA_Salsa_Double_Twirl_Mag")
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, "TAD.BobTA_Salsa_Double_Twirl_and_Clap_Mag")
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, "TAD.BobTA_Salsa_Double_Twirl_and_Clap_Mag")
	table.insert(ProceduralDistributions.list["LibraryBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, "TAD.BobTA_Salsa_Double_Twirl_and_Clap_Mag")
	table.insert(ProceduralDistributions.list["GigamartSchool"].items, 0.7)
	table.insert(ProceduralDistributions.list["WardrobeWomanClassy"].items, "TAD.BobTA_Salsa_Side_to_Side_Mag")
	table.insert(ProceduralDistributions.list["WardrobeWomanClassy"].items, 0.7)
	table.insert(ProceduralDistributions.list["SalonCounter"].items, "TAD.BobTA_Salsa_Side_to_Side_Mag")
	table.insert(ProceduralDistributions.list["SalonCounter"].items, 0.7)
	table.insert(ProceduralDistributions.list["PrisonGuardLockers"].items, "TAD.BobTA_Salsa_Side_to_Side_Mag")
	table.insert(ProceduralDistributions.list["PrisonGuardLockers"].items, 0.7)
	table.insert(ProceduralDistributions.list["BarCounterMisc"].items, "TAD.BobTA_Shimmy_Mag")
	table.insert(ProceduralDistributions.list["BarCounterMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["PrisonCellRandom"].items, "TAD.BobTA_Shimmy_Mag")
	table.insert(ProceduralDistributions.list["PrisonCellRandom"].items, 0.7)
	table.insert(ProceduralDistributions.list["LivingRoomShelf"].items, "TAD.BobTA_Shimmy_Mag")
	table.insert(ProceduralDistributions.list["LivingRoomShelf"].items, 0.7)
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, "TAD.BobTA_Shim_Sham_Mag")
	table.insert(ProceduralDistributions.list["ShelfGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, "TAD.BobTA_Shim_Sham_Mag")
	table.insert(ProceduralDistributions.list["CampingStoreBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, "TAD.BobTA_Shim_Sham_Mag")
	table.insert(ProceduralDistributions.list["JanitorMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["PrisonGuardLockers"].items, "TAD.BobTA_Shuffling_Mag")
	table.insert(ProceduralDistributions.list["PrisonGuardLockers"].items, 0.7)
	table.insert(ProceduralDistributions.list["SalonCounter"].items, "TAD.BobTA_Shuffling_Mag")
	table.insert(ProceduralDistributions.list["SalonCounter"].items, 0.7)
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, "TAD.BobTA_Shuffling_Mag")
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreMisc"].items, "TAD.BobTA_Side_to_Side_Mag")
	table.insert(ProceduralDistributions.list["BookstoreMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["ToolStoreMisc"].items, "TAD.BobTA_Side_to_Side_Mag")
	table.insert(ProceduralDistributions.list["ToolStoreMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, "TAD.BobTA_Side_to_Side_Mag")
	table.insert(ProceduralDistributions.list["PostOfficeNewspapers"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, "TAD.BobTA_Twist_One_Mag")
	table.insert(ProceduralDistributions.list["CrateMagazines"].items, 0.7)
	table.insert(ProceduralDistributions.list["Locker"].items, "TAD.BobTA_Twist_One_Mag")
	table.insert(ProceduralDistributions.list["Locker"].items, 0.7)
	table.insert(ProceduralDistributions.list["BinGeneric"].items, "TAD.BobTA_Twist_One_Mag")
	table.insert(ProceduralDistributions.list["BinGeneric"].items, 0.7)
	table.insert(ProceduralDistributions.list["ClassroomMisc"].items, "TAD.BobTA_Twist_Two_Mag")
	table.insert(ProceduralDistributions.list["ClassroomMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["BinBar"].items, "TAD.BobTA_Twist_Two_Mag")
	table.insert(ProceduralDistributions.list["BinBar"].items, 0.7)
	table.insert(ProceduralDistributions.list["ToolStoreMisc"].items, "TAD.BobTA_Twist_Two_Mag")
	table.insert(ProceduralDistributions.list["ToolStoreMisc"].items, 0.7)
	table.insert(ProceduralDistributions.list["WardrobeRedneck"].items, "TAD.BobTA_Uprock_Indian_Step_Mag")
	table.insert(ProceduralDistributions.list["WardrobeRedneck"].items, 0.7)
	table.insert(ProceduralDistributions.list["Locker"].items, "TAD.BobTA_Uprock_Indian_Step_Mag")
	table.insert(ProceduralDistributions.list["Locker"].items, 0.7)
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, "TAD.BobTA_Uprock_Indian_Step_Mag")
	table.insert(ProceduralDistributions.list["BookstoreStationery"].items, 0.7)
	table.insert(ProceduralDistributions.list["MechanicShelfBooks"].items, "TAD.BobTA_YMCA_Mag")
	table.insert(ProceduralDistributions.list["MechanicShelfBooks"].items, 0.7)
	table.insert(ProceduralDistributions.list["MusicStoreOthers"].items, "TAD.BobTA_YMCA_Mag")
	table.insert(ProceduralDistributions.list["MusicStoreOthers"].items, 0.7)
	table.insert(ProceduralDistributions.list["CrateCamping"].items, "TAD.BobTA_YMCA_Mag")
	table.insert(ProceduralDistributions.list["CrateCamping"].items, 0.7)
else
	print("INFO: TRUE ACTIONS DANCING. Magazines will NOT spawn")
end