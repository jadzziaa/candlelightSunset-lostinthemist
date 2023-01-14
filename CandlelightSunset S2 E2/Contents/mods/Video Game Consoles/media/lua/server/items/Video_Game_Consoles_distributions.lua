Distributions = Distributions or {};

-- Function made by star -- 
local function AddProcLoot(proc_name, item_name, chance)
	local data = ProceduralDistributions.list
	if not data then
		 return print('VGC ERROR: procedure distributions not found!')
	end
	local c = data[proc_name];
	if not c then
		 return print('VGC ERROR: cant add '..item_name..' to procedure '..proc_name)
	end
	table.insert(c.items, item_name);
	table.insert(c.items, chance);

end

-- ProceduralDistributions

--                        ------- **SNES** -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.SNES", 0.01);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.SNES", 0.01);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.SNES", 0.01);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.SNES", 0.01);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.SNES", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.SNES", 0.01);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.SNES", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.SNES", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.SNES", 0.004);

--                        ------- SNES_Cartridge_Mario -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.SNES_Cartridge_Mario", 0.004);

--                     ------- SNES_Cartridge_Mana -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.SNES_Cartridge_Mana", 0.004);

--                     ------- SNES_Cartridge_Fox -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.SNES_Cartridge_Fox", 0.004);

--                     ------- SNES_Cartridge_MK2 -------


AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.SNES_Cartridge_MK2", 0.004);

--                     ------- SNES_Cartridge_NBA -------


AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.SNES_Cartridge_NBA", 0.004);


--                          -------** GameBoy **-------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.GameBoy", 0.01);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.GameBoy", 0.01);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.GameBoy", 0.01);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.GameBoy", 0.01);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.GameBoy", 0.01);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.GameBoy", 0.01);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.GameBoy", 0.01);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.GameBoy", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.GameBoy", 0.004);

--                        ------- GB_Cartridge_Zelda -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.GB_Cartridge_Zelda", 0.004);

--                     ------- GB_Cartridge_Kirby -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.GB_Cartridge_Kirby", 0.004);

--                     ------- GB_Cartridge_Fantasy -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.GB_Cartridge_Fantasy", 0.004);

--                     ------- GB_Cartridge_Mario -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.GB_Cartridge_Mario", 0.004);

--                     ------- GB_Cartridge_Tetris -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.GB_Cartridge_Tetris", 0.004);


--                        ------- **Genesis** -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Genesis", 0.01);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Genesis", 0.01);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Genesis", 0.01);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Genesis", 0.01);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Genesis", 0.01);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Genesis", 0.01);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Genesis", 0.01);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Genesis", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Genesis", 0.004);

--                     ------- Genesis_Cartridge_Aladdin -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Genesis_Cartridge_aladdin", 0.004);

--                     ------- Genesis_Cartridge_GoldenAxe -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Genesis_Cartridge_gaxe", 0.004);

--                     ------- Genesis_Cartridge_GhoulsAndGoblins -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Genesis_Cartridge_ghouls", 0.004);

--                     ------- Genesis_Cartridge_Sonic -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Genesis_Cartridge_sonic", 0.004);

--                     ------- Genesis_Cartridge_StreetsOfRage -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Genesis_Cartridge_street", 0.004);

--                        ------- **Atari** -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Atari", 0.01);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Atari", 0.01);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Atari", 0.01);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Atari", 0.01);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Atari", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Atari", 0.01);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Atari", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Atari", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Atari", 0.004);

--                     ------- Atari_Cartridge_Combat -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Atari_Cartridge_Combat", 0.004);

--                     ------- Atari_Cartridge_Asteroids -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Atari_Cartridge_Asteroids", 0.004);

--                     ------- Atari_Cartridge_MSPacman -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Atari_Cartridge_MSPacman", 0.004);

--                     ------- Atari_Cartridge_Pitfall -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Atari_Cartridge_Pitfall", 0.004);

--                     ------- Atari_Cartridge_Spaceinvaders -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.Atari_Cartridge_Spaceinvaders", 0.004);


--                        ------- **NES** -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.NES", 0.01);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.NES", 0.01);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.NES", 0.01);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.NES", 0.01);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.NES", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.NES", 0.01);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.NES", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.NES", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.NES", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.NES", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.NES", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.NES", 0.004);

--                     ------- NES_Cartridge_Contra -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.NES_Cartridge_Contra", 0.004);

--                     ------- NES_Cartridge_Mario3 -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.NES_Cartridge_Mario3", 0.004);

--                     ------- NES_Cartridge_Megaman -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.NES_Cartridge_Megaman", 0.004);

--                     ------- NES_Cartridge_Metroid -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.NES_Cartridge_Metroid", 0.004);

--                     ------- NES_Cartridge_Zelda -------

AddProcLoot("BreakRoomShelves",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("ClassroomShelves",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("CrateElectronics",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("ElectronicStoreMisc",  	    "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("ElectronicStoreMusic",	        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("MusicStoreCDs",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("GigamartHouseElectronics",	    "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("LivingRoomShelf",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("LivingRoomShelfNoTapes",		"Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("SchoolLockers",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("OfficeDeskHome",		        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("WardrobeChild",  	            "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("WardrobeMan",	                "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("MechanicShelfElectric",		"Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("CrateCompactDiscs",	        "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("DeskGeneric",	                "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("ShelfGeneric",		            "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);
AddProcLoot("MusicStoreCases",	            "Video_Game_Consoles.NES_Cartridge_Zelda", 0.004);