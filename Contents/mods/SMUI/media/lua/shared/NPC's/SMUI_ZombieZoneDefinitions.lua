require 'NPCs/ZombiesZoneDefinition'

SMUI_ZombiesZoneDefinition = ZombiesZoneDefinition or {};

-- name of the zone for the zone type ZombiesType (in worldzed)

ZombiesZoneDefinition.GeneralMilitary = {
	SharkArmyCamoGreen = {
		name="SharkArmyCamoGreen",
		chance=100,
	},

	SharkArmyCamoGreenMale = {
		name="SharkArmyCamoGreenMale",
		chance=100,
	},

	SharkArmyCamoGreenFemale = {
		name="SharkArmyCamoGreenFemale",
		chance=15,
	},

	SharkArmyMedicalMale = {
		name="SharkMedicalFemale",
		chance=1,
	},

	SharkArmyMedicalFemale = {
		name="SharkArmyMedicalFemale",
		chance=1,
	},
}

ZombiesZoneDefinition.MilitaryPolice = {
	SharkMilitaryPolice = {
		name="SharkMilitaryPolice",
		chance=100,
	},
}

ZombiesZoneDefinition.NationalGuard = {
	SharkNationalGuard = {
		name="SharkArmyCamoGreenReservist",
		chance=100,
	},
}

ZombiesZoneDefinition.SpecialForces = {
	SharkSpecialForces = {
		name="SharkSpecialForces",
		chance=100,
	},
}

ZombiesZoneDefinition.SecretLab = {
	SharkSecretLabSoldier = {
		name="SharkSecretLabSoldier",
		chance=100,
	},
	SharkSecretLabMP = {
		name="SharkSecretLabMP",
		chance=15,
	},
}

ZombiesZoneDefinition.Militamen = {
	SharkPreparedSurvivor = {
		name="SharkPreparedSurvivor",
		chance=60,
	},
	SharkBandit = {
		name="SharkBandit",
		chance=60,
	},
}

-- total chance can be over 100% we don't care as we'll roll on the totalChance and not a 100 (unlike the specific outfits on top of this)
SMUI_ZombiesZoneDefinition.Default = ZombiesZoneDefinition.Default or {};
