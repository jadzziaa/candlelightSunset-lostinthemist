require 'NPCs/ZombiesZoneDefinition'

SLEO_ZombiesZoneDefinition = ZombiesZoneDefinition or {};

-- name of the zone for the zone type ZombiesType (in worldzed)

ZombiesZoneDefinition.BlackSWAT = {
	SharkBlackSWATLight = {
		name="SharkBlackSWATLight",
		toSpawn = 4,
		chance=100,
	},
}

ZombiesZoneDefinition.BlueSWAT = {
	SharkBlueSWATLight = {
		name="SharkBlueSWATLight",
		toSpawn = 4,
		chance=100,
	},
}

ZombiesZoneDefinition.GreenSWAT = {
	SharkGreenSWATLight = {
		name="SharkGreenSWATLight",
		toSpawn = 4,
		chance=100,
	},
}

-- total chance can be over 100% we don't care as we'll roll on the totalChance and not a 100 (unlike the specific outfits on top of this)
SLEO_ZombiesZoneDefinition.Default = ZombiesZoneDefinition.Default or {};
