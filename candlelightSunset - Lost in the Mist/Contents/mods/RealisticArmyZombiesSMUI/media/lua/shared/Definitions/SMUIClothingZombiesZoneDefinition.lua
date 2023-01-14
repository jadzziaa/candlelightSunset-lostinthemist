SMUIZombiesZoneDefinition = ZombiesZoneDefinition or {};


SMUIZombiesZoneDefinition.Army = {

	ArmyInstructorM = {
		name="ArmyInstructor",
		toSpawn=0,
		mandatory="false",
		gender="male",
	},
	SharkArmyInstructorM = {
		name="SharkArmyInstructor",
		toSpawn=0,
		mandatory="false",
		gender="male",
	},
	GhillieM = {
		name="Ghillie",
		toSpawn=0,
		mandatory="false",
		gender="male",
	},		
	ArmyInstructor = {
		name="ArmyInstructor",
		chance=0,
		gender="male",
	},
	SharkArmyInstructor = {
		name="SharkArmyInstructor",
		chance=5,
		gender="male",
	},	
	SharkArmyCamoGreenMaleGasMask = {
		name="SharkArmyCamoGreenMaleGasMask",
		chance=56,
		gender="male",
	},	
	ArmyCamoDesert = {
		name="ArmyCamoDesert",
		chance=0,
	},
	SharkArmyCamoDesertMale = {
		name="SharkArmyCamoDesertMale",
		chance=1,
		gender="male",
	},
	SharkArmyCamoDesertMaleDCU = {
		name="SharkArmyCamoDesertMaleDCU",
		chance=3,
		gender="male",
	},
	SharkArmyCamoDesertFemale = {
		name="SharkArmyCamoDesertFemale",
		chance=1,
		gender="female",
	},	
	ArmyCamoGreen = {
		name="ArmyCamoGreen",
		chance=0,
	},
	SharkArmyCamoGreenMale = {
		name="SharkArmyCamoGreenMale",
		chance=22,
		gender="male",		
	},
	SharkArmyCamoGreenFemale = {
		name="SharkArmyCamoGreenFemale",
		chance=1,
		gender="female",			
	},
	SharkArmyCamoGreenNVGMale = {
		name="SharkArmyCamoGreenNVGMale",
		chance=2,
		gender="male",			
	},
	SharkArmyCamoGreenNVGFemale = {
		name="SharkArmyCamoGreenNVGFemale",
		chance=1,
		gender="female",			
	},
	SharkTankCrewman = {
		name="SharkTankCrewman",
		chance=3,
		gender="male",			
	},
	SharkMOPPSuitOD = {
		name="SharkMOPPSuitOD",
		chance=12,
		gender="male",			
	},
	SharkArmyCamoUrbanGearedMale = {
		name="SharkArmyCamoUrbanGearedMale",
		chance=12,
		gender="male",			
	},
	SharkArmyCamoUrbanMale = {
		name="SharkArmyCamoUrbanMale",
		chance=2,
		gender="male",			
	},
	
	
}

SMUIZombiesZoneDefinition.SecretBase = {
	ArmyGeneral = {
		name="ArmyGeneral",
		chance=1,
		gender="male",
	},
	Priest = {
		name="Priest",
		toSpawn=1,
		gender="male",
		mandatory="true",
	},
	ArmyInstructor = {
		name="ArmyInstructor",
		chance=0,
		gender="male",
	},
	ArmyCamoGreen = {
		name="ArmyCamoGreen",
		chance=0,
	},
	OfficeWorkerSkirt = {
		name="OfficeWorkerSkirt",
		chance=10,
		gender="female",
	},
	OfficeWorker = {
		name="OfficeWorker",
		chance=10,
		gender="male",
		beardStyles="null:80",
	},
	SharkArmyCamoUrbanGearedMale = {
		name="SharkArmyCamoUrbanGearedMale",
		gender="male",			
		chance=15,
	},
	SharkArmyCamoGreenMaleGasMask = {
		name="SharkArmyCamoGreenMaleGasMask",
		chance=35,
		gender="male",
	},	
	SharkCleanUpCrew = {
		name="SharkArmyCamoUrbanMale",
		gender="male",			
		toSpawn=10,
		chance=30,
	},
	Doctor = {
		name="Doctor",
		chance=10,
	},
}

local SharkPreparedSurvivor = {
		name="SharkPreparedSurvivor",
		gender="male",		
		chance=10,
	};
ZombiesZoneDefinition.Survivalist[SharkPreparedSurvivor] = SharkPreparedSurvivor;

local SharkHunter = {
		name="SharkHunter",
		gender="male",		
		chance=3,
	};
ZombiesZoneDefinition.TrailerPark[SharkHunter] = SharkHunter;

local SharkHunter2 = {
		name="SharkHunter",
		gender="male",		
		chance=10,
	};
ZombiesZoneDefinition.Survivalist[SharkHunter2] = SharkHunte2r;

local SharkVeteran = {
		name="SharkVeteran",
		gender="male",		
		chance=3,
	};
ZombiesZoneDefinition.Bar[SharkVeteran] = SharkVeteran;
ZombiesZoneDefinition.StreetPoor[SharkVeteran] = SharkVeteran;
ZombiesZoneDefinition.TrailerPark[SharkVeteran] = SharkVeteran;

-- total chance can be over 100% we don't care as we'll roll on the totalChance and not a 100 (unlike the specific outfits on top of this)
SMUIZombiesZoneDefinition.Default = ZombiesZoneDefinition.Default or {};

table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkArmyCamoGreenMale", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkArmyCamoGreenMaleGasMask", chance=0.04});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkArmyCamoGreenFemale", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkArmyCamoGreenReservist", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkArmyInstructor", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkTankCrewman", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkMilitaryPolice", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkVeteran", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkBandit", chance=0.01});
table.insert(SMUIZombiesZoneDefinition.Default,{name = "SharkPreparedSurvivor", chance=0.01});
