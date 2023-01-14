require 'NPCs/ZombiesZoneDefinition'

local function STRSpawns()

	-- Check if the custom zones are enabled in sandbox options
	if SandboxVars.STR.CustomZones then

	ZombiesZoneDefinition = ZombiesZoneDefinition or {};

		if getActivatedMods():contains("RavenCreek") then

			ZombiesZoneDefinition.PoliceRavenCreek = {
				PoliceRavenCreek = {
					name="PoliceRavenCreek",
					chance=40,
				},
				PoliceRavenCreekRiot = {
					name="PoliceRavenCreekRiot",
					chance=20,
				},
				PoliceRavenCreekDress = {
					name="PoliceRavenCreekDress",
					chance=5,
				},
				OfficeWorkerSkirt = {
					name="OfficeWorkerSkirt",
					chance=20,
					gender="female",
				},
				OfficeWorker = {
					name="OfficeWorker",
					chance=20,
					gender="male",
					beardStyles="null:80",
				},
			}

			ZombiesZoneDefinition.FireDeptRavenCreek = {
				EMSRavenCreek = {
					name="EMSRavenCreek",
					chance=15,
				},
				EMSRavenCreekDress = {
					name="EMSRavenCreekDress",
					chance=5,
				},
				EMSRavenCreekSupervisor = {
					name="EMSRavenCreekSupervisor",
					chance=15,
				},
				EMSRavenCreekDressSupervisor = {
					name="EMSRavenCreekDressSupervisor",
					chance=5,
				},
				Fireman_RavenCreek_Formal = {
					name="Fireman_RavenCreek_Formal",
					chance=10,
				},
				Fireman_RavenCreek_Formal_Supervisor = {
					name="Fireman_RavenCreek_Formal_Supervisor",
					chance=10,
				},
				Fireman_RavenCreek_Dress = {
					name="Fireman_RavenCreek_Dress",
					chance=5,
				},
				Fireman_RavenCreek_Dress_Supervisor = {
					name="Fireman_RavenCreek_Dress_Supervisor",
					chance=5,
				},
				Fireman_RavenCreek_Black = {
					name="Fireman_RavenCreek_Black",
					chance=20,
				},
				FiremanFullSuit_RavenCreek_Black = {
					name="FiremanFullSuit_RavenCreek_Black",
					chance=15,
				},
				Fireman_RavenCreek_Khaki = {
					name="Fireman_RavenCreek_Khaki",
					chance=20,
				},
				FiremanFullSuit_RavenCreek_Khaki = {
					name="FiremanFullSuit_RavenCreek_Khaki",
					chance=15,
				},
			}

			ZombiesZoneDefinition.RavenCreekPrison = {
				-- Gonna force male zombies in prison
				maleChance = 80,
				Doctor = {
					name="Doctor",
					chance=2,
				},
				Priest = {
					name="Priest",
					toSpawn=1,
					gender="male",
					mandatory="true",
				},
				Doctor2 = {
					name="Doctor",
					chance=20,
					room="medicalstorage",
				},
				Nurse = {
					name="Nurse",
					chance=30,
					room="medicalstorage",
				},
				Priest = {
					name="Priest",
					mandatory="true",
					toSpawn=1,
					gender="male",
				},
				Waiter_Diner = {
					name="Waiter_Diner",
					chance=2,
				},
				PrisonGuard = {
					name="DOC_RavenCreek",
					chance=20,
					gender="male",
				},
				OfficeWorkerSkirt = {
					name="OfficeWorkerSkirt",
					gender="female",
					chance=30,
					room="office",
				},
				OfficeWorker = {
					name="OfficeWorker",
					gender="male",
					chance=30,
					room="office",
					beardStyles="null:80",
				},
				Security = {
					name="DOC_RavenCreek",
					gender="male",
					chance=100,
					room="security",
				},
				Inmate = {
					name="InmateRavenCreek",
					chance=76,
					gender="male",
					room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
				},
				-- this one is used for lower chance of inmate in some rooms
				InmateLowerZone = {
					name="InmateRavenCreek",
					chance=30,
					gender="male",
					room="bathroom;kitchen;medicalstorage;library",
				},
				Naked = {
					name="Naked",
					chance=50,
					gender="male",
					room="bathroom",
				},
				Cook_Generic = {
					name="Cook_Generic",
					chance=30,
					gender="male",
					room="kitchen",
				},
			}

		end

	ZombiesZoneDefinition.BankSecurity = {
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=25,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=25,
			gender="male",
			beardStyles="null:80",
		},
		Trader = {
			name="Trader",
			chance=10,
			beardStyles="null:80",
		},
		SecurityBank = {
			name="SecurityBank",
			chance=5,
		},
	}

	ZombiesZoneDefinition.MallOhio = {
		SecurityMallOhio = {
			name="SecurityMallOhio",
			chance=5,
		},
		Generic01 = {
			name="Generic01",
			chance=20,
		},
		Generic02 = {
			name="Generic02",
			chance=20,
		},
		Generic03 = {
			name="Generic03",
			chance=20,
		},
		Generic04 = {
			name="Generic04",
			chance=20,
		},
		Generic05 = {
			name="Generic05",
			chance=20,
		},
		Generic_Skirt = {
			name="Generic_Skirt",
			chance=20,
			gender="female",
		},
		DressLong = {
			name="DressLong",
			chance=10,
			gender="female",
		},
		DressNormal = {
			name="DressNormal",
			chance=10,
			gender="female",
		},
		DressShort = {
			name="DressShort",
			chance=10,
			gender="female",
		},
	}

	ZombiesZoneDefinition.MallValley = {
		SecurityMallValley = {
			name="SecurityMallValley",
			chance=5,
		},
		Generic01 = {
			name="Generic01",
			chance=20,
		},
		Generic02 = {
			name="Generic02",
			chance=20,
		},
		Generic03 = {
			name="Generic03",
			chance=20,
		},
		Generic04 = {
			name="Generic04",
			chance=20,
		},
		Generic05 = {
			name="Generic05",
			chance=20,
		},
		Generic_Skirt = {
			name="Generic_Skirt",
			chance=20,
			gender="female",
		},
		DressLong = {
			name="DressLong",
			chance=10,
			gender="female",
		},
		DressNormal = {
			name="DressNormal",
			chance=10,
			gender="female",
		},
		DressShort = {
			name="DressShort",
			chance=10,
			gender="female",
		},
	}

	ZombiesZoneDefinition.MallLV = {
		SecurityMallLV = {
			name="SecurityMallLV",
			chance=5,
		},
		Generic01 = {
			name="Generic01",
			chance=20,
		},
		Generic02 = {
			name="Generic02",
			chance=20,
		},
		Generic03 = {
			name="Generic03",
			chance=20,
		},
		Generic04 = {
			name="Generic04",
			chance=20,
		},
		Generic05 = {
			name="Generic05",
			chance=20,
		},
		Generic_Skirt = {
			name="Generic_Skirt",
			chance=20,
			gender="female",
		},
		DressLong = {
			name="DressLong",
			chance=10,
			gender="female",
		},
		DressNormal = {
			name="DressNormal",
			chance=10,
			gender="female",
		},
		DressShort = {
			name="DressShort",
			chance=10,
			gender="female",
		},
	}

	ZombiesZoneDefinition.HotelHav = {
		SecurityHotelHavisham = {
			name="SecurityHotelHavisham",
			chance=5,
		},
		Tourist = {
			name="Tourist",
			chance=20,
		},
		Golfer = {
			name="Golfer",
			chance=15,
		},
		Classy = {
			name="Classy",
			chance=20,
		},
	}

	ZombiesZoneDefinition.HotelFancy = {
		SecurityHotelFancy = {
			name="SecurityHotelFancy",
			chance=5,
		},
		Tourist = {
			name="Tourist",
			chance=20,
		},
		Golfer = {
			name="Golfer",
			chance=15,
		},
		Classy = {
			name="Classy",
			chance=20,
		},
	}

	ZombiesZoneDefinition.MuldraughPD = {
		PoliceMuldraugh = {
			name="PoliceMuldraugh",
			chance=40,
		},
		PoliceMuldraughRiot = {
			name="PoliceMuldraughRiot",
			chance=20,
		},
		PoliceMuldraughDress = {
			name="PoliceMuldraughDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.WestPointPD = {
		PoliceWestPoint = {
			name="PoliceWestPoint",
			chance=40,
		},
		PoliceWestPointRiot = {
			name="PoliceWestPointRiot",
			chance=20,
		},
		PoliceWestPointDress = {
			name="PoliceWestPointDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.MeadeSO = {
		PoliceMeade = {
			name="PoliceMeade",
			chance=40,
		},
		PoliceMeadeRiot = {
			name="PoliceMeadeRiot",
			chance=20,
		},
		PoliceMeadeDress = {
			name="PoliceMeadeDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.RiversidePD = {
		PoliceRiverside = {
			name="PoliceRiverside",
			chance=40,
		},
		PoliceRiversideRiot = {
			name="PoliceRiversideRiot",
			chance=20,
		},
		PoliceRiversideDress = {
			name="PoliceRiversideDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.RosewoodSD = {
		PoliceRosewood = {
			name="PoliceRosewood",
			chance=40,
		},
		PoliceRosewoodRiot = {
			name="PoliceRosewoodRiot",
			chance=20,
		},
		PoliceRosewoodDress = {
			name="PoliceRosewoodDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.LouisvillePD = {
		PoliceLouisville = {
			name="PoliceLouisville",
			chance=40,
		},
		PoliceLouisvilleRiot = {
			name="PoliceLouisvilleRiot",
			chance=20,
		},
		PoliceLouisvilleDress = {
			name="PoliceLouisvilleDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.JeffersonPD = {
		PoliceJeffersonPD = {
			name="PoliceJeffersonPD",
			chance=40,
		},
		PoliceJeffersonPDRiot = {
			name="PoliceJeffersonPDRiot",
			chance=20,
		},
		PoliceJeffersonPDDress = {
			name="PoliceJeffersonPDDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.JeffersonSD = {
		PoliceJeffersonSD = {
			name="PoliceJeffersonSD",
			chance=40,
		},
		PoliceJeffersonSDRiot = {
			name="PoliceJeffersonSDRiot",
			chance=20,
		},
		PoliceJeffersonSDDress = {
			name="PoliceJeffersonSDDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.LouisvilleKSP = {
		KSP_Trooper = {
			name="KSP_Trooper",
			chance=40,
		},
		KSP_TrooperRiot = {
			name="KSP_TrooperRiot",
			chance=20,
		},
		KSP_TrooperDress = {
			name="KSP_TrooperDress",
			chance=5,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.LouisvilleKSPJail = {
		-- Gonna force male zombies
		maleChance = 80,
		PrisonGuard = {
			name="KSP_Trooper",
			chance=20,
			gender="male",
		},
		Security = {
			name="KSP_Trooper",
			gender="male",
			chance=100,
			room="security",
		},
		Inmate = {
			name="Inmate",
			chance=76,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateLowerZone = {
			name="Inmate",
			chance=30,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
	}

	ZombiesZoneDefinition.RosewoodPrison = {
		-- Gonna force male zombies in prison
		maleChance = 80,
		Doctor = {
			name="Doctor",
			chance=2,
		},
		Priest = {
			name="Priest",
			toSpawn=1,
			gender="male",
			mandatory="true",
		},
		Doctor2 = {
			name="Doctor",
			chance=20,
			room="medicalstorage",
		},
		Nurse = {
			name="Nurse",
			chance=30,
			room="medicalstorage",
		},
		Priest = {
			name="Priest",
			mandatory="true",
			toSpawn=1,
			gender="male",
		},
		Waiter_Diner = {
			name="Waiter_Diner",
			chance=2,
		},
		PrisonGuard = {
			name="DOC_Meade",
			chance=20,
			gender="male",
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			gender="female",
			chance=30,
			room="office",
		},
		OfficeWorker = {
			name="OfficeWorker",
			gender="male",
			chance=30,
			room="office",
			beardStyles="null:80",
		},
		Security = {
			name="DOC_Meade",
			gender="male",
			chance=100,
			room="security",
		},
		InmateMeadeOrange = {
			name="InmateMeadeOrange",
			chance=76,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateMeadeOrangeLowerZone = {
			name="InmateMeadeOrange",
			chance=30,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
		InmateMeadeYellow = {
			name="InmateMeadeYellow",
			chance=76,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateMeadeYellowLowerZone = {
			name="InmateMeadeYellow",
			chance=30,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
		Naked = {
			name="Naked",
			chance=50,
			gender="male",
			room="bathroom",
		},
		Cook_Generic = {
			name="Cook_Generic",
			chance=30,
			gender="male",
			room="kitchen",
		},
	}

	ZombiesZoneDefinition.RosewoodPrisonMax = {
		-- Gonna force male zombies in prison
		maleChance = 80,
		Doctor = {
			name="Doctor",
			chance=2,
		},
		Priest = {
			name="Priest",
			toSpawn=1,
			gender="male",
			mandatory="true",
		},
		Doctor2 = {
			name="Doctor",
			chance=20,
			room="medicalstorage",
		},
		Nurse = {
			name="Nurse",
			chance=30,
			room="medicalstorage",
		},
		Priest = {
			name="Priest",
			mandatory="true",
			toSpawn=1,
			gender="male",
		},
		Waiter_Diner = {
			name="Waiter_Diner",
			chance=2,
		},
		PrisonGuard = {
			name="DOC_Meade",
			chance=20,
			gender="male",
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			gender="female",
			chance=30,
			room="office",
		},
		OfficeWorker = {
			name="OfficeWorker",
			gender="male",
			chance=30,
			room="office",
			beardStyles="null:80",
		},
		Security = {
			name="DOC_Meade",
			gender="male",
			chance=100,
			room="security",
		},
		InmateMeadeRed = {
			name="InmateMeadeRed",
			chance=76,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateMeadeRedLowerZone = {
			name="InmateMeadeRed",
			chance=30,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
		Naked = {
			name="Naked",
			chance=50,
			gender="male",
			room="bathroom",
		},
		Cook_Generic = {
			name="Cook_Generic",
			chance=30,
			gender="male",
			room="kitchen",
		},
	}

	ZombiesZoneDefinition.LouisvillePDPrison = {
		-- Gonna force male zombies in prison
		maleChance = 80,
		Doctor = {
			name="Doctor",
			chance=2,
		},
		Priest = {
			name="Priest",
			toSpawn=1,
			gender="male",
			mandatory="true",
		},
		Doctor2 = {
			name="Doctor",
			chance=20,
			room="medicalstorage",
		},
		Nurse = {
			name="Nurse",
			chance=30,
			room="medicalstorage",
		},
		Priest = {
			name="Priest",
			mandatory="true",
			toSpawn=1,
			gender="male",
		},
		Waiter_Diner = {
			name="Waiter_Diner",
			chance=2,
		},
		PrisonGuard = {
			name="DOC_Jefferson",
			chance=20,
			gender="male",
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			gender="female",
			chance=30,
			room="office",
		},
		OfficeWorker = {
			name="OfficeWorker",
			gender="male",
			chance=30,
			room="office",
			beardStyles="null:80",
		},
		Security = {
			name="DOC_Jefferson",
			gender="male",
			chance=100,
			room="security",
		},
		Inmate = {
			name="InmateJefferson",
			chance=76,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateLowerZone = {
			name="InmateJefferson",
			chance=30,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
		Naked = {
			name="Naked",
			chance=50,
			gender="male",
			room="bathroom",
		},
		Cook_Generic = {
			name="Cook_Generic",
			chance=30,
			gender="male",
			room="kitchen",
		},
	}

	ZombiesZoneDefinition.JeffersonPDJail = {
		-- Gonna force male zombies
		maleChance = 80,
		PrisonGuard = {
			name="PoliceJeffersonPD",
			chance=20,
			gender="male",
		},
		Security = {
			name="PoliceJeffersonPD",
			gender="male",
			chance=100,
			room="security",
		},
		Inmate = {
			name="Inmate",
			chance=76,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateLowerZone = {
			name="Inmate",
			chance=30,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
	}

	ZombiesZoneDefinition.JeffersonSDJail = {
		-- Gonna force male zombies
		maleChance = 80,
		PrisonGuard = {
			name="PoliceJeffersonSD",
			chance=20,
			gender="male",
		},
		Security = {
			name="PoliceJeffersonSD",
			gender="male",
			chance=100,
			room="security",
		},
		Inmate = {
			name="Inmate",
			chance=76,
			gender="male",
			room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
		},
		-- this one is used for lower chance of inmate in some rooms
		InmateLowerZone = {
			name="Inmate",
			chance=30,
			gender="male",
			room="bathroom;kitchen;medicalstorage;library",
		},
	}


	ZombiesZoneDefinition.WestPointPicnic = {
		FederalRanger = {
			name="FederalRanger",
			chance=15,
		},
		FederalRangerDress = {
			name="FederalRangerDress",
			chance=5,
		},
		StateLawRanger = {
			name="StateLawRanger",
			chance=15,
		},
		StateLawRangerDress = {
			name="State_LawRangerDress",
			chance=5,
		},
		StateRanger = {
			name="StateRanger",
			chance=15,
		},
		StateRangerDress = {
			name="StateRangerDress",
			chance=10,
		},
	}

	ZombiesZoneDefinition.MuldraughPicnic = {
		FederalRanger = {
			name="FederalRanger",
			chance=15,
		},
		FederalRangerDress = {
			name="FederalRangerDress",
			chance=5,
		},
		StateLawRanger = {
			name="StateLawRanger",
			chance=15,
		},
		StateLawRangerDress = {
			name="State_LawRangerDress",
			chance=5,
		},
		StateRanger = {
			name="StateRanger",
			chance=15,
		},
		StateRangerDress = {
			name="StateRangerDress",
			chance=5,
		},
	}

	ZombiesZoneDefinition.DixiePicnic = {
		FederalRanger = {
			name="FederalRanger",
			chance=15,
		},
		FederalRangerDress = {
			name="FederalRangerDress",
			chance=5,
		},
		StateLawRanger = {
			name="StateLawRanger",
			chance=15,
		},
		StateLawRangerDress = {
			name="State_LawRangerDress",
			chance=5,
		},
		StateRanger = {
			name="StateRanger",
			chance=15,
		},
		StateRangerDress = {
			name="StateRangerDress",
			chance=5,
		},
	}

	ZombiesZoneDefinition.MeadeEMS = {
		EMSMeade = {
			name="EMSMeade",
			chance=35,
		},
		EMSMeadeDress = {
			name="EMSMeadeDress",
			chance=5,
		},
		Doctor = {
			name="Doctor",
			chance=3,
		},
		Nurse = {
			name="Nurse",
			chance=5,
		},
	}

	ZombiesZoneDefinition.LouisvilleEMS = {
		EMSLouisville = {
			name="EMSLouisville",
			chance=35,
		},
		EMSLouisvilleDress = {
			name="EMSLouisvilleDress",
			chance=5,
		},
		Doctor = {
			name="Doctor",
			chance=3,
		},
		Nurse = {
			name="Nurse",
			chance=5,
		},
	}

	ZombiesZoneDefinition.JeffersonEMS = {
		EMSJefferson = {
			name="EMSJefferson",
			chance=35,
		},
		EMSJeffersonDress = {
			name="EMSJeffersonDress",
			chance=5,
		},
		Doctor = {
			name="Doctor",
			chance=3,
		},
		Nurse = {
			name="Nurse",
			chance=5,
		},
	}

	ZombiesZoneDefinition.FireDeptRW = {
		Fireman_Meade_Formal = {
			name="Fireman_Meade_Formal",
			chance=10,
		},
		Fireman_Meade_Formal_Supervisor = {
			name="Fireman_Meade_Formal_Supervisor",
			chance=10,
		},
		Fireman_Rosewood_Formal = {
			name="Fireman_Rosewood_Formal",
			chance=10,
		},
		Fireman_Rosewood_Formal_Supervisor = {
			name="Fireman_Rosewood_Formal_Supervisor",
			chance=10,
		},
		Fireman_Meade_Black = {
			name="Fireman_Meade_Black",
			chance=20,
		},
		FiremanFullSuit_Meade_Black = {
			name="FiremanFullSuit_Meade_Black",
			chance=15,
		},
		Fireman_Meade_Khaki = {
			name="Fireman_Meade_Khaki",
			chance=20,
		},
		FiremanFullSuit_Meade_Khaki = {
			name="FiremanFullSuit_Meade_Khaki",
			chance=15,
		},
		Fireman_Rosewood_Black = {
			name="Fireman_Rosewood_Black",
			chance=20,
		},
		FiremanFullSuit_Rosewood_Black = {
			name="FiremanFullSuit_Rosewood_Black",
			chance=15,
		},
		Fireman_Rosewood_Khaki = {
			name="Fireman_Rosewood_Khaki",
			chance=20,
		},
		FiremanFullSuit_Rosewood_Khaki = {
			name="FiremanFullSuit_Rosewood_Khaki",
			chance=15,
		},
	}

	ZombiesZoneDefinition.FireDeptLV = {
		Fireman_Louisville_Formal = {
			name="Fireman_Louisville_Formal",
			chance=10,
		},
		Fireman_Louisville_Formal_Supervisor = {
			name="Fireman_Louisville_Formal_Supervisor",
			chance=10,
		},
		Fireman_Louisville_Dress_Supervisor = {
			name="Fireman_Louisville_Dress_Supervisor",
			chance=5,
		},
		Fireman_Louisville_Black = {
			name="Fireman_Louisville_Black",
			chance=20,
		},
		FiremanFullSuit_Louisville_Black = {
			name="FiremanFullSuit_Louisville_Black",
			chance=15,
		},
		Fireman_Louisville_Khaki = {
			name="Fireman_Louisville_Khaki",
			chance=20,
		},
		FiremanFullSuit_Louisville_Khaki = {
			name="FiremanFullSuit_Louisville_Khaki",
			chance=15,
		},
	}

	ZombiesZoneDefinition.USPS = {
		USPS_Mail = {
			name="USPS_Mail",
			chance=40,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=20,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=20,
			gender="male",
			beardStyles="null:80",
		},
	}

	ZombiesZoneDefinition.CourtHouse = {
		Judge = {
			name="Judge",
			chance=25,
		},
		OfficeWorkerSkirt = {
			name="OfficeWorkerSkirt",
			chance=35,
			gender="female",
		},
		OfficeWorker = {
			name="OfficeWorker",
			chance=35,
			gender="male",
			beardStyles="null:80",
		},
		Trader = {
			name="Trader",
			chance=15,
			beardStyles="null:80",
		},
	}

		if getActivatedMods():contains("TWDRG") then

			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "PoliceSheriff", chance=35});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "PoliceSheriff", chance=35});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "PoliceSheriff", chance=35});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "PoliceSheriff", chance=35});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "PoliceSheriff", chance=35});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "PoliceSheriff", chance=35});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "PoliceSheriff", chance=35});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "PoliceSheriff", chance=35});

		end

		if getActivatedMods():contains("SLEO") then

			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SharkGreenSWATRiot", chance=5});

			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkBlueSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkBlueSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkBlueSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkBlueSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkBlackSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkBlackSWATRiot", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkBlackSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkGreenSWATBelt", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkGreenSWAT", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkGreenSWATGasMask", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SharkGreenSWATRiot", chance=5});

		end

		if getActivatedMods():contains("Susceptible") then

			table.insert(ZombiesZoneDefinition.MuldraughPD,{name = "SusceptiblePoliceMuldraugh", chance=5});

			table.insert(ZombiesZoneDefinition.WestPointPD,{name = "SusceptiblePoliceWestPoint", chance=5});

			table.insert(ZombiesZoneDefinition.MeadeSO,{name = "SusceptiblePoliceMeade", chance=5});

			table.insert(ZombiesZoneDefinition.RiversidePD,{name = "SusceptiblePoliceRiverside", chance=5});

			table.insert(ZombiesZoneDefinition.RosewoodSD,{name = "SusceptiblePoliceRosewood", chance=5});

			table.insert(ZombiesZoneDefinition.LouisvillePD,{name = "SusceptiblePoliceLouisville", chance=5});

			table.insert(ZombiesZoneDefinition.JeffersonPD,{name = "SusceptiblePoliceJeffersonPD", chance=5});

			table.insert(ZombiesZoneDefinition.JeffersonSD,{name = "SusceptiblePoliceJeffersonSD", chance=5});

			table.insert(ZombiesZoneDefinition.LouisvilleKSP,{name = "SusceptibleKSP_Trooper", chance=5});

			table.insert(ZombiesZoneDefinition.MeadeEMS,{name = "SusceptibleEMSMeade", chance=5});

			table.insert(ZombiesZoneDefinition.LouisvilleEMS,{name = "SusceptibleEMSLouisville", chance=5});

			table.insert(ZombiesZoneDefinition.JeffersonEMS,{name = "SusceptibleEMSJefferson", chance=5});

			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFireman_Meade_Black", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFiremanFullSuit_Meade_Black", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFireman_Meade_Khaki", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFiremanFullSuit_Meade_Khaki", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFireman_Rosewood_Black", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFiremanFullSuit_Rosewood_Black", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFireman_Rosewood_Khaki", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptRW,{name = "SusceptibleFiremanFullSuit_Rosewood_Khaki", chance=5});

			table.insert(ZombiesZoneDefinition.FireDeptLV,{name = "SusceptibleFireman_Louisville_Black", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptLV,{name = "SusceptibleFiremanFullSuit_Louisville_Black", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptLV,{name = "SusceptibleFireman_Louisville_Khaki", chance=5});
			table.insert(ZombiesZoneDefinition.FireDeptLV,{name = "SusceptibleFiremanFullSuit_Louisville_Khaki", chance=5});

			table.insert(ZombiesZoneDefinition.WestPointPicnic,{name = "SusceptibleFederalRanger", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPicnic,{name = "SusceptibleState_LawRanger", chance=5});
			table.insert(ZombiesZoneDefinition.WestPointPicnic,{name = "SusceptibleStateRanger", chance=5});

			table.insert(ZombiesZoneDefinition.MuldraughPicnic,{name = "SusceptibleFederalRanger", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPicnic,{name = "SusceptibleState_LawRanger", chance=5});
			table.insert(ZombiesZoneDefinition.MuldraughPicnic,{name = "SusceptibleStateRanger", chance=5});

			table.insert(ZombiesZoneDefinition.DixiePicnic,{name = "SusceptibleFederalRanger", chance=5});
			table.insert(ZombiesZoneDefinition.DixiePicnic,{name = "SusceptibleState_LawRanger", chance=5});
			table.insert(ZombiesZoneDefinition.DixiePicnic,{name = "SusceptibleStateRanger", chance=5});

			table.insert(ZombiesZoneDefinition.LouisvilleKSPJail,{name = "SusceptibleKSP_Trooper", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvilleKSPJail,{name = "SusceptibleInmateJefferson", chance=5});

			table.insert(ZombiesZoneDefinition.RosewoodPrison,{name = "SusceptibleDOC_Meade", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodPrison,{name = "SusceptibleInmateMeadeOrange", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodPrison,{name = "SusceptibleInmateMeadeYellow", chance=5});

			table.insert(ZombiesZoneDefinition.RosewoodPrisonMax,{name = "SusceptibleDOC_Meade", chance=5});
			table.insert(ZombiesZoneDefinition.RosewoodPrisonMax,{name = "SusceptibleInmateMeadeRed", chance=5});

			table.insert(ZombiesZoneDefinition.LouisvillePDPrison,{name = "SusceptibleDOC_Jefferson", chance=5});
			table.insert(ZombiesZoneDefinition.LouisvillePDPrison,{name = "SusceptibleInmateJefferson", chance=5});

			table.insert(ZombiesZoneDefinition.JeffersonPDJail,{name = "SusceptiblePoliceJeffersonPD", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonPDJail,{name = "SusceptibleInmateJefferson", chance=5});

			table.insert(ZombiesZoneDefinition.JeffersonSDJail,{name = "SusceptiblePoliceJeffersonSD", chance=5});
			table.insert(ZombiesZoneDefinition.JeffersonSDJail,{name = "SusceptibleInmateJefferson", chance=5});

			if getActivatedMods():contains("RavenCreek") then
				table.insert(ZombiesZoneDefinition.PoliceRavenCreek,{name = "SusceptiblePoliceRavenCreek", chance=5});
			end
		end

	-- Check if the vanilla zones are enabled in sandbox options
	elseif not SandboxVars.STR.CustomZones then

		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMuldraugh", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMuldraughRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMuldraughDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceWestPoint", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceWestPoint", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceWestPointDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMeade", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMeadeRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceMeadeDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRiverside", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRiversideRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRiversideDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRosewood", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRosewoodRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRosewoodDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceLouisville", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceLouisvilleRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceLouisvilleDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonPD", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonPDRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonPDDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonSD", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonSDRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "PoliceJeffersonSDDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "KSP_Trooper", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "KSP_TrooperRiot", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "KSP_TrooperDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "FederalRanger", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "FederalRangerDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "State_LawRanger", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "State_LawRangerDress", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "StateRanger", chance=5});
		table.insert(ZombiesZoneDefinition.Police,{name = "StateRangerDress", chance=5});

		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceMuldraugh", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceMuldraughRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceMuldraughDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceWestPoint", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceWestPointRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceWestPointDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceMeade", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceMeadeRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceMeadeDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRiverside", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRiversideRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRiversideDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRosewood", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRosewoodRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRosewoodDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceLouisville", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceLouisvilleRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceLouisvilleDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceJeffersonPD", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceJeffersonPDRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceJeffersonPDDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceJeffersonSD", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceJeffersonSDRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceJeffersonSDDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "KSP_Trooper", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "KSP_TrooperRiot", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "KSP_TrooperDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "FederalRanger", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "FederalRangerDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "State_LawRanger", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "State_LawRangerDress", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "StateRanger", chance=5});
		table.insert(ZombiesZoneDefinition.PoliceState,{name = "StateRangerDress", chance=5});

		table.insert(ZombiesZoneDefinition.Prison,{name = "DOC_Meade", chance=5});
		table.insert(ZombiesZoneDefinition.Prison,{name = "InmateMeadeOrange", chance=5});
		table.insert(ZombiesZoneDefinition.Prison,{name = "InmateMeadeYellow", chance=5});
		table.insert(ZombiesZoneDefinition.Prison,{name = "InmateMeadeRed", chance=5});
		table.insert(ZombiesZoneDefinition.Prison,{name = "DOC_Jefferson", chance=5});
		table.insert(ZombiesZoneDefinition.Prison,{name = "InmateJefferson", chance=5});

		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Meade_Formal", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Meade_Formal_Supervisor", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Meade_Black", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "FiremanFullSuit_Meade_Black", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Meade_Khaki", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "FiremanFullSuit_Meade_Khaki", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Rosewood_Formal", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Rosewood_Formal_Supervisor", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Rosewood_Black", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "FiremanFullSuit_Rosewood_Black", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Rosewood_Khaki", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "FiremanFullSuit_Rosewood_Khaki", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Louisville_Formal", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Louisville_Formal_Supervisor", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Louisville_Dress_Supervisor", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Louisville_Black", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "FiremanFullSuit_Louisville_Black", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "Fireman_Louisville_Khaki", chance=5});
		table.insert(ZombiesZoneDefinition.FireDept,{name = "FiremanFullSuit_Louisville_Khaki", chance=5});

		table.insert(ZombiesZoneDefinition.Doctor,{name = "EMSMeade", chance=5});
		table.insert(ZombiesZoneDefinition.Doctor,{name = "EMSMeadeDress", chance=5});
		table.insert(ZombiesZoneDefinition.Doctor,{name = "EMSLouisville", chance=5});
		table.insert(ZombiesZoneDefinition.Doctor,{name = "EMSLouisvilleDress", chance=5});
		table.insert(ZombiesZoneDefinition.Doctor,{name = "EMSJefferson", chance=5});
		table.insert(ZombiesZoneDefinition.Doctor,{name = "EMSJeffersonDress", chance=5});

		if getActivatedMods():contains("RavenCreek") then

			table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRavenCreek", chance=5});
			table.insert(ZombiesZoneDefinition.Police,{name = "PoliceRavenCreekRiot", chance=5});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRavenCreek", chance=5});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "PoliceRavenCreekRiot", chance=5});

			table.insert(ZombiesZoneDefinition.Prison,{name = "DOC_RavenCreek", chance=5});
			table.insert(ZombiesZoneDefinition.Prison,{name = "InmateRavenCreek", chance=5});

		end

		if getActivatedMods():contains("Susceptible") then

			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceMuldraugh", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceWestPoint", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceMeade", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceRiverside", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceRosewood", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceLouisville", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceJeffersonPD", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceJeffersonSD", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptibleKSP_Trooper", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptibleFederalRanger", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptibleState_LawRanger", chance=25});
			table.insert(ZombiesZoneDefinition.Police,{name = "SusceptibleStateRanger", chance=25});

			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceMuldraugh", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceWestPoint", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceMeade", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceRiverside", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceRosewood", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceLouisville", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceJeffersonPD", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptiblePoliceJeffersonSD", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptibleKSP_Trooper", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptibleFederalRanger", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptibleState_LawRanger", chance=25});
			table.insert(ZombiesZoneDefinition.PoliceState,{name = "SusceptibleStateRanger", chance=25});

			table.insert(ZombiesZoneDefinition.Doctor,{name = "SusceptibleEMSMeade", chance=25});
			table.insert(ZombiesZoneDefinition.Doctor,{name = "SusceptibleEMSLouisville", chance=25});
			table.insert(ZombiesZoneDefinition.Doctor,{name = "SusceptibleEMSJefferson", chance=25});

			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFireman_Meade_Black", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFiremanFullSuit_Meade_Black", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFireman_Meade_Khaki", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFiremanFullSuit_Meade_Khaki", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFireman_Rosewood_Black", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFiremanFullSuit_Rosewood_Black", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFireman_Rosewood_Khaki", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFiremanFullSuit_Rosewood_Khaki", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFireman_Louisville_Black", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFiremanFullSuit_Louisville_Black", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFireman_Louisville_Khaki", chance=25});
			table.insert(ZombiesZoneDefinition.FireDept,{name = "SusceptibleFiremanFullSuit_Louisville_Khaki", chance=25});

			table.insert(ZombiesZoneDefinition.Prison,{name = "SusceptibleKSP_Trooper", chance=25});
			table.insert(ZombiesZoneDefinition.Prison,{name = "SusceptibleInmateJefferson", chance=25});
			table.insert(ZombiesZoneDefinition.Prison,{name = "SusceptibleDOC_Meade", chance=25});
			table.insert(ZombiesZoneDefinition.Prison,{name = "SusceptibleInmateMeadeOrange", chance=25});
			table.insert(ZombiesZoneDefinition.Prison,{name = "SusceptibleInmateMeadeYellow", chance=25});
			table.insert(ZombiesZoneDefinition.Prison,{name = "SusceptibleInmateMeadeRed", chance=25});

			if getActivatedMods():contains("RavenCreek") then
				table.insert(ZombiesZoneDefinition.Police,{name = "SusceptiblePoliceRavenCreek", chance=25});
			end
		end
	end
end

Events.OnInitGlobalModData.Add(STRSpawns);
