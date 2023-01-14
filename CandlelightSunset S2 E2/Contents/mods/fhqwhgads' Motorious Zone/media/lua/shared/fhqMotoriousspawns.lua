if VehicleZoneDistribution then


--------------==================NOTE==================--------------
--Changes made for 41.78. Old affected spawns will be commented out--

--------------------------------Vanilla Spawn Zones--------------------------------

---Parking Stall: Most common zone, used pretty much everywhere on the map. It makes up a large portion of spawn zones, so rare cars should typically not be put here, even with a low spawn chance---
---Note: As of spawn chance update, almost, if not all, civilian vehicles are now in parkingstall, many with a VERY low spawn chance.---

--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 0.7};
--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 0.7};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqoneviaS"] = {index = -1, spawnChance = 0.005};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqoneviadrift"] = {index = -1, spawnChance = 0.005};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqSupraMkIV"] = {index = -1, spawnChance = 0.38};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqSupraMkIVSmooth"] = {index = -1, spawnChance = 0.35};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 0.1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqR32GTRN1"] = {index = -1, spawnChance = 0.05};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqR32GTS"] = {index = -1, spawnChance = 0.12};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqR32Sedan"] = {index = -1, spawnChance = 0.12};

--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangLXCoupe50"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangLXCoupe50"] = {index = -1, spawnChance = 0.6};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangLXCoupe"] = {index = -1, spawnChance = 1};
--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangLX50"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangLX50"] = {index = -1, spawnChance = 0.6};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangLX"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangLX50Custom"] = {index = -1, spawnChance = 0.01};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangSVT"] = {index = -1, spawnChance = 0.37};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangGT"] = {index = -1, spawnChance = 0.35};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqFBMustangSAACMkII"] = {index = -1, spawnChance = 0.2};

--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 0.6};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqMX5NAHardtop"] = {index = -1, spawnChance = 0.6};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqMX5NAOffroad"] = {index = -1, spawnChance = 0.07};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqMX5NAWink"] = {index = -1, spawnChance = 0.05};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqMX5NARally"] = {index = -1, spawnChance = 0.05};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhq300ZXZ32"] = {index = -1, spawnChance = 0.38};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq300ZXZ32Plus2"] = {index = -1, spawnChance = 0.36};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq300ZXZ32Slicktop"] = {index = -1, spawnChance = 0.34};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqVWT2T1"] = {index = -1, spawnChance = 0.8};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqVWT2T1Van"] = {index = -1, spawnChance = 0.8};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance =0.01};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqBronco"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqBroncoHalfCab"] = {index = -1, spawnChance = 0.8};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqBroncoOffroad"] = {index = -1, spawnChance = 0.4};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqBroncoHalfCabOffroad"] = {index = -1, spawnChance = 0.4};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq92Econoline"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq92Econoline4Door"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq92EconolineXL"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq92EconolinePAYDAY"] = {index = 0, spawnChance = 0.01};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq92EconolineValkyrie"] = {index = 0, spawnChance = 0.01};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqCrestaJZX90"] = {index = 0, spawnChance = 0.8};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqMarkIIJZX90"] = {index = 0, spawnChance = 0.1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqChaserJZX90"] = {index = 0, spawnChance = 0.12};

--VehicleZoneDistribution.parkingstall.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 0.75};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq70ChallengerRT"] = {index = -1, spawnChance = 0.45};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 0.35};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 0.4};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqLeCar"] = {index = -1, spawnChance = 0.9};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 0.6};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqBomberBFS"] = {index = -1, spawnChance = 0.03};

--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqE36318iSedan"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqE36318iSedan"] = {index = -1, spawnChance = 1};
--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqE36318iCoupe"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqE36318iCoupe"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqE36M3Coupe"] = {index = -1, spawnChance = 0.12};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqE36M3Sedan"] = {index = -1, spawnChance = 0.1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqE36Lime"] = {index = -1, spawnChance = 0.01};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqPrevia"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqPreviaAllTrac"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqImpreza"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqImprezaWag"] = {index = -1, spawnChance = 1};
--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqImprezaCoupe"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqImprezaCoupe"] = {index = -1, spawnChance = 0.8};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqImprezaWRX"] = {index = -1, spawnChance = 0.15};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqImprezaWRXWag"] = {index = -1, spawnChance = 0.15};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqSidekick"] = {index = -1, spawnChance = 1.25};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqSidekickLWB"] = {index = -1, spawnChance = 1.25};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqSidekickHardtop"] = {index = -1, spawnChance = 1.25};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqCountach"] = {index = 0, spawnChance = 0.02};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqLexusSC300"] = {index = -1, spawnChance = 0.43};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqLexusSC400"] = {index = -1, spawnChance = 0.4};

--VehicleZoneDistribution.parkingstall.vehicles["Base.fhqLexusLS400"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqLexusLS400"] = {index = -1, spawnChance = 1.5};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqHQSandman"] = {index = -1, spawnChance = 0.1};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqHQPanelVan"] = {index = -1, spawnChance = 0.12};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhq70ChallengerShaker"] = {index = -1, spawnChance = 0.45};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqDeltaEvo"] = {index = -1, spawnChance = 0.1};

VehicleZoneDistribution.parkingstall.vehicles["Base.fhqM715hardtopCivMZ"] = {index = -1, spawnChance = 0.4};
VehicleZoneDistribution.parkingstall.vehicles["Base.fhqM715CivMZ"] = {index = -1, spawnChance = 0.4};

---Trailer Park: Vehicles that will spawn in trailer park areas. Typically lower quality, but offroad vehicles could work as well---

VehicleZoneDistribution.trailerpark.vehicles["Base.fhqMX5NAOffroad"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trailerpark.vehicles["Base.fhqBronco"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.trailerpark.vehicles["Base.fhqBroncoHalfCab"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trailerpark.vehicles["Base.fhqBroncoOffroad"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trailerpark.vehicles["Base.fhqBroncoHalfCabOffroad"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trailerpark.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trailerpark.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trailerpark.vehicles["Base.fhqChili"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trailerpark.vehicles["Base.fhqE36Lime"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trailerpark.vehicles["Base.fhqM715hardtopCivMZ"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trailerpark.vehicles["Base.fhqM715CivMZ"] = {index = -1, spawnChance = 2};

---Bad Vehicles: Used for for poor areas in-game. The game also picks from this list for car crash stories sometimes---

VehicleZoneDistribution.bad.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.bad.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.bad.vehicles["Base.fhqFBMustangLX"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.bad.vehicles["Base.fhqFBMustangLXCoupe"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.bad.vehicles["Base.fhqVWT2T1"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.bad.vehicles["Base.fhqVWT2T1Van"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.bad.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.bad.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.bad.vehicles["Base.fhqBronco"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.bad.vehicles["Base.fhqBroncoHalfCab"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.bad.vehicles["Base.fhqRobinMk2"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.bad.vehicles["Base.fhqRollbinMk2"] = {index = -1, spawnChance = 0.5};

VehicleZoneDistribution.bad.vehicles["Base.fhq92Econoline"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.bad.vehicles["Base.fhq92EconolineXL"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.bad.vehicles["Base.fhq92Econoline4Door"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.bad.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.bad.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 4};

VehicleZoneDistribution.bad.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.bad.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.bad.vehicles["Base.fhqLeCar"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.bad.vehicles["Base.fhqPrevia"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.bad.vehicles["Base.fhqPreviaAllTrac"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.bad.vehicles["Base.fhqImpreza"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.bad.vehicles["Base.fhqImprezaWag"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.bad.vehicles["Base.fhqImprezaCoupe"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.bad.vehicles["Base.fhqSidekick"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.bad.vehicles["Base.fhqSidekickLWB"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.bad.vehicles["Base.fhqSidekickHardtop"] = {index = -1, spawnChance = 1};

---Medium vehicles: Used in suburban areas, and other middle class areas. Not very common, so easter-egg cars can be put here with low spawn chances---

VehicleZoneDistribution.medium.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhqoneviaS"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.medium.vehicles["Base.fhqoneviadrift"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqFBMustangSVT"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqFBMustangLXCoupe50"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqFBMustangLXCoupe"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.medium.vehicles["Base.fhqFBMustangLX50"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqFBMustangLX"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.medium.vehicles["Base.fhqFBMustangGT"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqFBMustangLX50Custom"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhqMX5NAHardtop"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhqMX5NAOffroad"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.medium.vehicles["Base.fhq300ZXZ32"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhq300ZXZ32Plus2"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhq300ZXZ32Slicktop"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.medium.vehicles["Base.fhq300ZXZ32MC2Police"] = {index = 0, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqR32GTS"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqR32Sedan"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqR32GTRPace"] = {index = 0, spawnChance = 0.5};

VehicleZoneDistribution.medium.vehicles["Base.fhqVWT2T1"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 4};

VehicleZoneDistribution.medium.vehicles["Base.fhqBronco"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.medium.vehicles["Base.fhqBroncoHalfCab"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.medium.vehicles["Base.fhqBroncoOffroad"] = {index = 0, spawnChance = 3};
VehicleZoneDistribution.medium.vehicles["Base.fhqBroncoHalfCabOffroad"] = {index = 0, spawnChance = 3};

VehicleZoneDistribution.medium.vehicles["Base.fhqRobinMk2"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqRobinMk2Stabilisers"] = {index = 0, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqCrestaJZX90"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqMarkIIJZX90"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqChaserJZX90"] = {index = 0, spawnChance = 2};

--VehicleZoneDistribution.medium.vehicles["Base.fhqRX7FD"] = {index = 0, spawnChance = 3};

VehicleZoneDistribution.medium.vehicles["Base.fhq92Econoline"] = {index = 0, spawnChance = 7};
VehicleZoneDistribution.medium.vehicles["Base.fhq92EconolineXL"] = {index = 0, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhq92EconolinePanel"] = {index = 0, spawnChance = 7};
VehicleZoneDistribution.medium.vehicles["Base.fhq92EconolineXLPanel"] = {index = 0, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhq92Econoline4Door"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.medium.vehicles["Base.fhq92EconolinePAYDAY"] = {index = 0, spawnChance = 1};
VehicleZoneDistribution.medium.vehicles["Base.fhq92EconolineValkyrie"] = {index = 0, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.medium.vehicles["Base.fhq70ChallengerRT"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhq70ChallengerTARace"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.medium.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.medium.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.medium.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqBomberBFS"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqLeCar"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.medium.vehicles["Base.fhqChili"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqCappuccino"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqAZ1"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqBeat"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqCara"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqBeatMugen"] = {index = 0, spawnChance = 2};

VehicleZoneDistribution.medium.vehicles["Base.fhqE36318iSedan"] = {index = -1, spawnChance = 6};
VehicleZoneDistribution.medium.vehicles["Base.fhqE36318iCoupe"] = {index = -1, spawnChance = 6};
VehicleZoneDistribution.medium.vehicles["Base.fhqE36Lime"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.medium.vehicles["Base.fhqPrevia"] = {index = 0, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqPreviaAllTrac"] = {index = 0, spawnChance = 6};

VehicleZoneDistribution.medium.vehicles["Base.fhqImpreza"] = {index = 0, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqImprezaWag"] = {index = 0, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhqImprezaCoupe"] = {index = 0, spawnChance = 4};
VehicleZoneDistribution.medium.vehicles["Base.fhqImprezaWRX"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqImprezaWRXWag"] = {index = 0, spawnChance = 2};

VehicleZoneDistribution.medium.vehicles["Base.fhqSidekick"] = {index = 0, spawnChance = 3};
VehicleZoneDistribution.medium.vehicles["Base.fhqSidekickLWB"] = {index = 0, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqSidekickHardtop"] = {index = 0, spawnChance = 3};

VehicleZoneDistribution.medium.vehicles["Base.fhqLexusSC300"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.medium.vehicles["Base.fhqLexusSC400"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.medium.vehicles["Base.fhqLexusLS400"] = {index = -1, spawnChance = 7};

VehicleZoneDistribution.medium.vehicles["Base.fhqHQSandman"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhqHQPanelVan"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.medium.vehicles["Base.fhq70ChallengerShaker"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.medium.vehicles["Base.fhqDeltaEvo"] = {index = -1, spawnChance = 2};

---Good Vehicles: These areas are around nicer neighborhoods. Riverside is very dense with these spawn zones---

VehicleZoneDistribution.good.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.good.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.good.vehicles["Base.fhqGT40LM"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.good.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhqoneviaS"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.good.vehicles["Base.fhqFBMustangSVT"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.good.vehicles["Base.fhqFBMustangLXCoupe50"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.good.vehicles["Base.fhqFBMustangLX50"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.good.vehicles["Base.fhqFBMustangGT"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.good.vehicles["Base.fhqFBMustangLX50Custom"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.good.vehicles["Base.fhqFBMustangSAACMkII"] = {index = -1, spawnChance = 7};

VehicleZoneDistribution.good.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.good.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.good.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.good.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.good.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.good.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.good.vehicles["Base.fhqMX5NAHardtop"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.good.vehicles["Base.fhqMX5NAWink"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.good.vehicles["Base.fhqMX5NARally"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.good.vehicles["Base.fhqMX5NAOffroad"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.good.vehicles["Base.fhq300ZXZ32"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhq300ZXZ32Plus2"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhq300ZXZ32Slicktop"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.good.vehicles["Base.fhq300ZXZ32Forza"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.good.vehicles["Base.fhq300ZXZ32MC2Police"] = {index = 0, spawnChance = 1};

VehicleZoneDistribution.good.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.good.vehicles["Base.fhqR32GTRPace"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.good.vehicles["Base.fhqR32GTS"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.good.vehicles["Base.fhqR32Sedan"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.good.vehicles["Base.fhqR32GTRN1"] = {index = 0, spawnChance = 3};
VehicleZoneDistribution.good.vehicles["Base.fhqR32GTRTouring"] = {index = 0, spawnChance = 1};

VehicleZoneDistribution.good.vehicles["Base.fhqSupraMkIV"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhqSupraMkIVSmooth"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.good.vehicles["Base.fhqSupraMkIVOWR"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.good.vehicles["Base.fhqCrestaJZX90"] = {index = 0, spawnChance = 4};
VehicleZoneDistribution.good.vehicles["Base.fhqMarkIIJZX90"] = {index = 0, spawnChance = 4};
VehicleZoneDistribution.good.vehicles["Base.fhqChaserJZX90"] = {index = 0, spawnChance = 5};

--VehicleZoneDistribution.good.vehicles["Base.fhqRX7FD"] = {index = 0, spawnChance = 10};

VehicleZoneDistribution.good.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqLM002Estate"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.good.vehicles["Base.fhq70ChallengerTARace"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.good.vehicles["Base.fhq70ChallengerRT"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.good.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhqBomberBFS"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.good.vehicles["Base.fhqCappuccino"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqAZ1"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqBeat"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqCara"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqBeatMugen"] = {index = 0, spawnChance = 5};
VehicleZoneDistribution.good.vehicles["Base.fhqBeatRace"] = {index = 0, spawnChance = 1};

VehicleZoneDistribution.good.vehicles["Base.fhqE36318iSedan"] = {index = 0, spawnChance = 15};
VehicleZoneDistribution.good.vehicles["Base.fhqE36318iCoupe"] = {index = 0, spawnChance = 15};
VehicleZoneDistribution.good.vehicles["Base.fhqE36M3Coupe"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqE36M3Sedan"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqE36M3GTR"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.good.vehicles["Base.fhqE36M3GTRMW"] = {index = 0, spawnChance = 1};

VehicleZoneDistribution.good.vehicles["Base.fhqImpreza"] = {index = 0, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhqImprezaCoupe"] = {index = 0, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhqImprezaWag"] = {index = 0, spawnChance = 10};
VehicleZoneDistribution.good.vehicles["Base.fhqImprezaWRX"] = {index = 0, spawnChance = 6};
VehicleZoneDistribution.good.vehicles["Base.fhqImprezaWRXWag"] = {index = 0, spawnChance = 6};

VehicleZoneDistribution.good.vehicles["Base.fhqM20b"] = {index = 0, spawnChance = 4};
VehicleZoneDistribution.good.vehicles["Base.fhqZeroR"] = {index = 0, spawnChance = 2};
VehicleZoneDistribution.good.vehicles["Base.fhqImprezaRally"] = {index = 0, spawnChance = 1};
--VehicleZoneDistribution.good.vehicles["Base.fhqM30"] = {index = 0, spawnChance = 3};
VehicleZoneDistribution.good.vehicles["Base.fhqR32GTRTommy"] = {index = 0, spawnChance = 3};

VehicleZoneDistribution.good.vehicles["Base.fhqCountach"] = {index = 0, spawnChance = 4};

VehicleZoneDistribution.good.vehicles["Base.fhqMcLarenF1"] = {index = 0, spawnChance = 3};

VehicleZoneDistribution.good.vehicles["Base.fhqLexusSC300"] = {index = 0, spawnChance = 12};
VehicleZoneDistribution.good.vehicles["Base.fhqLexusSC400"] = {index = 0, spawnChance = 15};

VehicleZoneDistribution.good.vehicles["Base.fhqLexusLS400"] = {index = 0, spawnChance = 15};

VehicleZoneDistribution.good.vehicles["Base.fhqHQSandman"] = {index = 0, spawnChance = 7};
VehicleZoneDistribution.good.vehicles["Base.fhqHQPanelVan"] = {index = 0, spawnChance = 7};
VehicleZoneDistribution.good.vehicles["Base.fhq70ChallengerShaker"] = {index = 0, spawnChance = 10};

VehicleZoneDistribution.good.vehicles["Base.fhqDeltaEvo"] = {index = 0, spawnChance = 7};
VehicleZoneDistribution.good.vehicles["Base.fhqDeltaEvoRally"] = {index = 0, spawnChance = 1};

---Sport Vehicles: Very rarely used zones, but they should only contain performance/rare cars. There is some overlap with Good spawn zones---

VehicleZoneDistribution.sport.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.sport.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.sport.vehicles["Base.fhqGT40LM"] = {index = -1, spawnChance = 4};

VehicleZoneDistribution.sport.vehicles["Base.fhqFBMustangSVT"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.sport.vehicles["Base.fhqFBMustangGT"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.sport.vehicles["Base.fhqFBMustangSAACMkII"] = {index = -1, spawnChance = 35};

VehicleZoneDistribution.sport.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.sport.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 17};
VehicleZoneDistribution.sport.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 12};

VehicleZoneDistribution.sport.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.sport.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.sport.vehicles["Base.fhqMX5NARally"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.sport.vehicles["Base.fhq300ZXZ32"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.sport.vehicles["Base.fhq300ZXZ32Plus2"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.sport.vehicles["Base.fhq300ZXZ32Slicktop"] = {index = -1, spawnChance = 45};
VehicleZoneDistribution.sport.vehicles["Base.fhq300ZXZ32Forza"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.sport.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.sport.vehicles["Base.fhqR32GTRN1"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.sport.vehicles["Base.fhqR32GTRPace"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.sport.vehicles["Base.fhqR32GTRTouring"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.sport.vehicles["Base.fhqSupraMkIV"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.sport.vehicles["Base.fhqSupraMkIVSmooth"] = {index = -1, spawnChance = 40};
VehicleZoneDistribution.sport.vehicles["Base.fhqSupraMkIVOWR"] = {index = -1, spawnChance = 8};

VehicleZoneDistribution.sport.vehicles["Base.fhqCrestaJZX90"] = {index = 0, spawnChance = 30};
VehicleZoneDistribution.sport.vehicles["Base.fhqMarkIIJZX90"] = {index = 0, spawnChance = 30};
VehicleZoneDistribution.sport.vehicles["Base.fhqChaserJZX90"] = {index = 0, spawnChance = 30};

--VehicleZoneDistribution.sport.vehicles["Base.fhqRX7FD"] = {index = 0, spawnChance = 40};

VehicleZoneDistribution.sport.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.sport.vehicles["Base.fhqLM002Estate"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.sport.vehicles["Base.fhq70ChallengerTARace"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.sport.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.sport.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 50};

VehicleZoneDistribution.sport.vehicles["Base.fhqBomberBFS"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.sport.vehicles["Base.fhqBeatRace"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.sport.vehicles["Base.fhqE36M3Coupe"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.sport.vehicles["Base.fhqE36M3Sedan"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.sport.vehicles["Base.fhqE36M3GTR"] = {index = 0, spawnChance = 10};
VehicleZoneDistribution.sport.vehicles["Base.fhqE36M3GTRMW"] = {index = 0, spawnChance = 4};

VehicleZoneDistribution.sport.vehicles["Base.fhqImprezaWRX"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.sport.vehicles["Base.fhqImprezaWRXWag"] = {index = -1, spawnChance = 30};

VehicleZoneDistribution.sport.vehicles["Base.fhqM20b"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.sport.vehicles["Base.fhqZeroR"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.sport.vehicles["Base.fhqImprezaRally"] = {index = 0, spawnChance = 3};
--VehicleZoneDistribution.sport.vehicles["Base.fhqM30] = {index = 0, spawnChance = 20};
VehicleZoneDistribution.sport.vehicles["Base.fhqR32GTRTommy"] = {index = 0, spawnChance = 12};

VehicleZoneDistribution.sport.vehicles["Base.fhqCountach"] = {index = 0, spawnChance = 25};

VehicleZoneDistribution.sport.vehicles["Base.fhqMcLarenF1"] = {index = 0, spawnChance = 15};

VehicleZoneDistribution.sport.vehicles["Base.fhqLexusSC300"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.sport.vehicles["Base.fhqLexusSC400"] = {index = -1, spawnChance = 50};

VehicleZoneDistribution.sport.vehicles["Base.fhqDeltaEvo"] = {index = 0, spawnChance = 30};
VehicleZoneDistribution.sport.vehicles["Base.fhqDeltaEvoRally"] = {index = 0, spawnChance = 5};

---Traffic Jam: Preset traffic jam areas around the map.---

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqoneviaS"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqFBMustangLXCoupe50"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqFBMustangLXCoupe"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqFBMustangLX50"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqFBMustangLX"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqFBMustangSVT"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqFBMustangGT"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqMX5NAHardtop"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqMX5NARally"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqMX5NAWink"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqMX5NAOffroad"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 0.25};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 0.25};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 0.25};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 0.25};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 0.25};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq300ZXZ32"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq300ZXZ32Plus2"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq300ZXZ32Slicktop"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqR32GTS"] = {index = -1, spawnChance = 0.6};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqR32Sedan"] = {index = -1, spawnChance = 0.6};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqR32GTRN1"] = {index = 0, spawnChance = 0.35};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqSupraMkIV"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqSupraMkIVSmooth"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqSupraMkIVOWR"] = {index = -1, spawnChance = 0.25};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqVWT2T1"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqBronco"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqBroncoHalfCab"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqBroncoOffroad"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqBroncoHalfCabOffroad"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqRobinMk2"] = {index = -1, spawnChance = 0.5};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqCrestaJZX90"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqChaserJZX90"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqMarkIIJZX90"] = {index = -1, spawnChance = 0.5};

--VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqRX7FD"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq92Econoline"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq92EconolineXL"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq92Econoline4Door"] = {index = -1, spawnChance = 4};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq70ChallengerSF"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq70ChallengerRT"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqBomberBFS"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqLeCar"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqChili"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqCappuccino"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqAZ1"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqBeat"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqCara"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqBeatMugen"] = {index = -1, spawnChance = 0.5};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqE36318iSedan"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqE36318iCoupe"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqE36M3Coupe"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqE36M3Sedan"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqE36M3GTR"] = {index = -1, spawnChance = 0.01};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqPrevia"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqPreviaAllTrac"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqImpreza"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqImprezaCoupe"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqImprezaWag"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqImprezaWRX"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqImprezaWRXWag"] = {index = -1, spawnChance = 0.5};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqSidekick"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqSidekickLWB"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqSidekickHardtop"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqM20b"] = {index = -1, spawnChance = 0.25};
--VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqM30] = {index = 0, spawnChance = 1};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqR32GTRTommy"] = {index = 0, spawnChance = 0.25};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqCountach"] = {index = 0, spawnChance = 0.35};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqMcLarenF1"] = {index = 0, spawnChance = 0.25};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqLexusSC300"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqLexusSC400"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqLexusLS400"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqHQSandman"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqHQPanelVan"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhq70ChallengerShaker"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqDeltaEvo"] = {index = -1, spawnChance = 0.5};

VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqM715hardtopMZ"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqM715MZ"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqM715hardtopCivMZ"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.trafficjamw.vehicles["Base.fhqM715CivMZ"] = {index = -1, spawnChance = 1};

---Junkyard: Cars in this list will usually be in very poor condition. Due to large amounts of spawns in these areas, it's a good place to put rare classic vehicles so that it becomes a bit of a restoration project---

VehicleZoneDistribution.junkyard.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 0.35};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 0.35};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqoneviaS"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqFBMustangLXCoupe50"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqFBMustangLXCoupe"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqFBMustangLX50"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqFBMustangLX"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqFBMustangGT"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 0.35};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 0.35};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqMX5NAHardtop"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqMX5NAWink"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqR32GTS"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqR32Sedan"] = {index = -1, spawnChance = 0.65};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqVWT2T1"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqVWT2T1Van"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqBronco"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqBroncoHalfCab"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqBroncoOffroad"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqBroncoHalfCabOffroad"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqRobinMk2"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqRobinMk2Stabilisers"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqRollbinMk2"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqRollbinMk2Stabilisers"] = {index = -1, spawnChance = 0.65};

VehicleZoneDistribution.junkyard.vehicles["Base.fhq92Econoline"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq92EconolineXL"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq92Econoline4Door"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq92EconolineValkyrie"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.junkyard.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq70ChallengerSF"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq70ChallengerRT"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.junkyard.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqLeCar"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqChili"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqSidekick"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqSidekickLWB"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqSidekickHardtop"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqHQSandman"] = {index = -1, spawnChance = 0.5};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqHQPanelVan"] = {index = -1, spawnChance = 0.65};
VehicleZoneDistribution.junkyard.vehicles["Base.fhq70ChallengerShaker"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqDeltaEvo"] = {index = -1, spawnChance = 0.35};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqDeltaEvoRally"] = {index = -1, spawnChance = 0.25};

VehicleZoneDistribution.junkyard.vehicles["Base.fhqM715hardtopCivMZ"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.junkyard.vehicles["Base.fhqM715CivMZ"] = {index = -1, spawnChance = 1};

---Farm: A normally empty vanilla list. Offroad vehicles are an excellent candidate for this spawn zone---

VehicleZoneDistribution.farm = VehicleZoneDistribution.farm or {};
VehicleZoneDistribution.farm.vehicles = VehicleZoneDistribution.farm.vehicles or {};

VehicleZoneDistribution.farm.vehicles["Base.fhqMX5NARally"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.farm.vehicles["Base.fhqMX5NAOffroad"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.farm.vehicles["Base.fhqBroncoOffroad"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.farm.vehicles["Base.fhqBroncoHalfCabOffroad"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.farm.vehicles["Base.fhqChili"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.farm.vehicles["Base.fhqM715hardtopCivMZ"] = {index = -1, spawnChance = 3.5};
VehicleZoneDistribution.farm.vehicles["Base.fhqM715CivMZ"] = {index = -1, spawnChance = 3.5};


--------------------------------Vanilla Special spawn zones: For emergency vehicles, etc.--------------------------------


---Police---

VehicleZoneDistribution.police.vehicles["Base.fhqFBMustangSSP"] = {index = 0, spawnChance = 20};
VehicleZoneDistribution.police.vehicles["Base.fhqFBMustangSSPLightbar"] = {index = 0, spawnChance = 15};

VehicleZoneDistribution.police.vehicles["Base.fhq70ChallengerSF"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.police.vehicles["Base.fhq57BelAirPolice"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.police.vehicles["Base.fhq57BelAirKSP"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.police.vehicles["Base.fhqLeCarPolice"] = {index = -1, spawnChance = 10};

---Ambulance---
VehicleZoneDistribution.ambulance.vehicles["Base.fhq92EconolineAmbulance"] = {index = -1, spawnChance = 175};
VehicleZoneDistribution.ambulance.vehicles["Base.fhq92EconolineAmbulanceLightbar"] = {index = -1, spawnChance = 175};
VehicleZoneDistribution.ambulance.vehicles["Base.fhq92EconolineT3Ambulance"] = {index = -1, spawnChance = 185};

---Park Ranger---

VehicleZoneDistribution.ranger.vehicles["Base.fhqSidekickLWBRanger"] = {index = 0, spawnChance = 20};

---Vanilla Army---

VehicleZoneDistribution.army = VehicleZoneDistribution.army or {};
VehicleZoneDistribution.army.vehicles = VehicleZoneDistribution.army.vehicles or {};

VehicleZoneDistribution.army.vehicles["Base.fhqM715hardtopMZ"] = {index = 0, spawnChance = 20};
VehicleZoneDistribution.army.vehicles["Base.fhqM715MZ"] = {index = 0, spawnChance = 20};

---Custom Military---
VehicleZoneDistribution.military = VehicleZoneDistribution.military or {};
VehicleZoneDistribution.military.vehicles = VehicleZoneDistribution.military.vehicles or {};

VehicleZoneDistribution.military.vehicles["Base.fhqM715hardtopMZ"] = {index = 0, spawnChance = 15};
VehicleZoneDistribution.military.vehicles["Base.fhqM715MZ"] = {index = 0, spawnChance = 15};

--------------------------------New spawn zones--------------------------------


---Collectors: Rare spawn zones with a high chance for rare cars. Cars here should be exotics, and especially rare vintage cars. High end cars can also be included, but at a lower spawn rate than exotics---

VehicleZoneDistribution.collectors = VehicleZoneDistribution.collectors or {};
VehicleZoneDistribution.collectors.vehicles = VehicleZoneDistribution.collectors.vehicles or {};
VehicleZoneDistribution.collectors.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.collectors.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.collectors.vehicles["Base.fhqGT40LM"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.collectors.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.collectors.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 9};
VehicleZoneDistribution.collectors.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 8};

VehicleZoneDistribution.collectors.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 13};
VehicleZoneDistribution.collectors.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.collectors.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.collectors.vehicles["Base.fhqR32GTRN1"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.collectors.vehicles["Base.fhqR32GTRTouring"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.collectors.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.collectors.vehicles["Base.fhqLM002Estate"] = {index = -1, spawnChance = 8};

VehicleZoneDistribution.collectors.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.collectors.vehicles["Base.fhqE36M3GTR"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.collectors.vehicles["Base.fhqM20b"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.collectors.vehicles["Base.fhqZeroR"] = {index = -1, spawnChance = 7};
--VehicleZoneDistribution.collectors.vehicles["Base.fhqM30] = {index = 0, spawnChance = 15};
VehicleZoneDistribution.collectors.vehicles["Base.fhqR32GTRTommy"] = {index = 0, spawnChance = 10};

VehicleZoneDistribution.collectors.vehicles["Base.fhqCountach"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.collectors.vehicles["Base.fhqMcLarenF1"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.collectors.vehicles["Base.fhqFBMustangSAACMkII"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.collectors.vehicles["Base.fhqDeltaEvo"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.collectors.vehicles["Base.fhqDeltaEvoRally"] = {index = -1, spawnChance = 3};

---Exotic: Similar to sport, but for modern exotic cars---

VehicleZoneDistribution.exotic = VehicleZoneDistribution.exotic or {};
VehicleZoneDistribution.exotic.vehicles = VehicleZoneDistribution.exotic.vehicles or {};

VehicleZoneDistribution.exotic.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.exotic.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.exotic.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.exotic.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.exotic.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.exotic.vehicles["Base.fhqR32GTRN1"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.exotic.vehicles["Base.fhqR32GTRTouring"] = {index = -1, spawnChance = 2};

VehicleZoneDistribution.exotic.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.exotic.vehicles["Base.fhqLM002Estate"] = {index = -1, spawnChance = 7};

VehicleZoneDistribution.exotic.vehicles["Base.fhqE36M3GTR"] = {index = -1, spawnChance = 7};

VehicleZoneDistribution.exotic.vehicles["Base.fhqZeroR"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.exotic.vehicles["Base.fhqCountach"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.exotic.vehicles["Base.fhqMcLarenF1"] = {index = -1, spawnChance = 17};

---Barn Find: Rare spawn zone usually near barns. Prioritize classics, especially rare ones, here. Cars in this list will almost be wrecked and may be undrivable, requiring towing. High key chance ---

VehicleZoneDistribution.barnfind = VehicleZoneDistribution.barnfind or {};
VehicleZoneDistribution.barnfind.vehicles = VehicleZoneDistribution.barnfind.vehicles or {};

VehicleZoneDistribution.barnfind.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.barnfind.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.barnfind.vehicles["Base.fhqVWT2T1"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqVWT2T1Van"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqBronco"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.fhqBroncoHalfCab"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.barnfind.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.barnfind.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.barnfind.vehicles["Base.fhq70ChallengerRT"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.barnfind.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 12};

VehicleZoneDistribution.barnfind.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 20};

---Expo Car Show: These zones will be near expo centers, or other places where there may be large car shows. Here you will find exotics, classics, and most importantly concepts and one-offs---

VehicleZoneDistribution.expocarshow = VehicleZoneDistribution.expocarshow or {};
VehicleZoneDistribution.expocarshow.vehicles = VehicleZoneDistribution.expocarshow.vehicles or {};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqGT40LM"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 12};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhq300ZXZ32Forza"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhq300ZXZ32MC2Police"] = {index = -1, spawnChance = 12};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhqR32GTRN1"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqR32GTRTouring"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqR32GTRPace"] = {index = -1, spawnChance = 7};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.expocarshow.vehicles["Base.fhqLM002Estate"] = {index = -1, spawnChance = 13};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhqImprezaRally"] = {index = 0, spawnChance = 7};

VehicleZoneDistribution.expocarshow.vehicles["Base.fhqDeltaEvoRally"] = {index = -1, spawnChance = 7};

---Special Dealer: Specialty car dealer zone. This should contain exotics and imports mostly, as well as restored classics. Possibility for a race/concept car as a display car. HIgher condition and key chance ---

VehicleZoneDistribution.specialdealer = VehicleZoneDistribution.specialdealer or {};
VehicleZoneDistribution.specialdealer.vehicles = VehicleZoneDistribution.specialdealer.vehicles or {};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqGT40"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqGT40LM"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqR32GTS"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqR32Sedan"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqR32GTRN1"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqR32GTRTouring"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqCrestaJZX90"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqChaserJZX90"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqMarkIIJZX90"] = {index = -1, spawnChance = 30};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqLM002Estate"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqCappuccino"] = {index = -1, spawnChance = 18};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqAZ1"] = {index = -1, spawnChance = 18};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqBeat"] = {index = -1, spawnChance = 18};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqCara"] = {index = -1, spawnChance = 18};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqBeatMugen"] = {index = -1, spawnChance = 18};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqE36M3Coupe"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqE36M3Sedan"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqE36M3GTR"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqImprezaWRX"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqImprezaWRXWag"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqM20b"] = {index = -1, spawnChance = 13};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqZeroR"] = {index = -1, spawnChance = 7};
--VehicleZoneDistribution.specialdealer.vehicles["Base.fhqM30] = {index = 0, spawnChance = 12};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqR32GTRTommy"] = {index = 0, spawnChance = 12};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqMcLarenF1"] = {index = 0, spawnChance = 8};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqFBMustangSAACMkII"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqHQSandman"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.specialdealer.vehicles["Base.fhqHQPanelVan"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.specialdealer.vehicles["Base.fhqDeltaEvo"] = {index = -1, spawnChance = 15};

---New Dealer: Zone for new car dealerships. Should lean towards modern cars, with a rare chance for a display car. Higher condition and key chance.

VehicleZoneDistribution.newdealer = VehicleZoneDistribution.newdealer or {};
VehicleZoneDistribution.newdealer.vehicles = VehicleZoneDistribution.newdealer.vehicles or {};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 25};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqDiablo"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqDiabloSE30"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqMX5NAHardtop"] = {index = -1, spawnChance = 23};

VehicleZoneDistribution.newdealer.vehicles["Base.fhq300ZXZ32"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.fhq300ZXZ32Plus2"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.fhq300ZXZ32Slicktop"] = {index = -1, spawnChance = 17};

--VehicleZoneDistribution.newdealer.vehicles["Base.fhqRX7FD"] = {index = -1, spawnChance = 40};

VehicleZoneDistribution.newdealer.vehicles["Base.fhq92Econoline"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.newdealer.vehicles["Base.fhq92EconolineXL"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.newdealer.vehicles["Base.fhq92Econoline4Door"] = {index = -1, spawnChance = 30};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqLM002"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqE36318iSedan"] = {index = -1, spawnChance = 17};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqE36318iCoupe"] = {index = -1, spawnChance = 17};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqPrevia"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqPreviaAllTrac"] = {index = -1, spawnChance = 22};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqImpreza"] = {index = -1, spawnChance = 22};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqImprezaCoupe"] = {index = -1, spawnChance = 22};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqImprezaWag"] = {index = -1, spawnChance = 22};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqSidekick"] = {index = -1, spawnChance = 23};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqSidekickLWB"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqSidekickHardtop"] = {index = -1, spawnChance = 23};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqFBMustangSAACMkII"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqLexusSC300"] = {index = -1, spawnChance = 17};
VehicleZoneDistribution.newdealer.vehicles["Base.fhqLexusSC400"] = {index = -1, spawnChance = 17};

VehicleZoneDistribution.newdealer.vehicles["Base.fhqLexusLS400"] = {index = -1, spawnChance = 20};

---Commercial: Medium and small commercial vehicles, such as vans and small box trucks. May include small/medium trailers as well.---
VehicleZoneDistribution.commercial = VehicleZoneDistribution.commercial or {};
VehicleZoneDistribution.commercial.vehicles = VehicleZoneDistribution.commercial.vehicles or {};

VehicleZoneDistribution.commercial.vehicles["Base.fhqVWT2T1Van"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.commercial.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.commercial.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.commercial.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 35};
VehicleZoneDistribution.commercial.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 35};

VehicleZoneDistribution.commerciallarge = VehicleZoneDistribution.commerciallarge or {};
VehicleZoneDistribution.commerciallarge.vehicles = VehicleZoneDistribution.commerciallarge.vehicles or {};

VehicleZoneDistribution.commerciallarge.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 17};

---utility: Utility vehicles, such as vans, trucks, and small trailers.---

VehicleZoneDistribution.utility = VehicleZoneDistribution.utility or {};
VehicleZoneDistribution.utility.vehicles = VehicleZoneDistribution.utility.vehicles or {};

VehicleZoneDistribution.utility.vehicles["Base.fhqVWT2T1Van"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.utility.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.utility.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.utility.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.utility.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 35};
VehicleZoneDistribution.utility.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 30};

---CommercialLarge: Large commercial vehicles, such as large box trucks or semi trucks/trailers---

---Amateur Mechanic: Amateur mechanic style house. Should contain special custom variants of vehicles, as well as a lower chance for their stock counterparts. Could also contain restored classics---

VehicleZoneDistribution.amateurmechanic = VehicleZoneDistribution.amateurmechanic or {};
VehicleZoneDistribution.amateurmechanic.vehicles = VehicleZoneDistribution.amateurmechanic.vehicles or {};

VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqoneviaS"] = {index = -1, spawnChance = 35};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqoneviadrift"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqMX5NARally"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqMX5NAOffroad"] = {index = -1, spawnChance = 35};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqMX5NAWink"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqRobinMk2"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqRobinMk2Stabilisers"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqBomberBFS"] = {index = -1, spawnChance = 25};

VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqChili"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqE36M3GTR"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.amateurmechanic.vehicles["Base.fhqE36M3GTRMW"] = {index = -1, spawnChance = 5};

---Import: Cars unavailable in the US, but available elsewhere. Near shipping areas, such as docks, railyards, and airports.---

VehicleZoneDistribution.import = VehicleZoneDistribution.import or {};
VehicleZoneDistribution.import.vehicles = VehicleZoneDistribution.import.vehicles or {};

VehicleZoneDistribution.import.vehicles["Base.fhqStratos"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.import.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.import.vehicles["Base.fhqR32GTR"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.import.vehicles["Base.fhqR32GTRN1"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.import.vehicles["Base.fhqR32GTS"] = {index = -1, spawnChance = 35};
VehicleZoneDistribution.import.vehicles["Base.fhqR32Sedan"] = {index = -1, spawnChance = 40};
VehicleZoneDistribution.import.vehicles["Base.fhqR32GTRPace"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.import.vehicles["Base.fhqRobinMk2"] = {index = -1, spawnChance = 35};

VehicleZoneDistribution.import.vehicles["Base.fhqDiabloStrosek"] = {index = -1, spawnChance = 12};

VehicleZoneDistribution.import.vehicles["Base.fhqCrestaJZX90"] = {index = -1, spawnChance = 35};
VehicleZoneDistribution.import.vehicles["Base.fhqChaserJZX90"] = {index = -1, spawnChance = 35};
VehicleZoneDistribution.import.vehicles["Base.fhqMarkIIJZX90"] = {index = -1, spawnChance = 40};

VehicleZoneDistribution.import.vehicles["Base.fhqCappuccino"] = {index = -1, spawnChance = 27};
VehicleZoneDistribution.import.vehicles["Base.fhqAZ1"] = {index = -1, spawnChance = 24};
VehicleZoneDistribution.import.vehicles["Base.fhqBeat"] = {index = -1, spawnChance = 27};
VehicleZoneDistribution.import.vehicles["Base.fhqCara"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.import.vehicles["Base.fhqBeatMugen"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.import.vehicles["Base.fhqE36M3Coupe"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.import.vehicles["Base.fhqE36M3Sedan"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.import.vehicles["Base.fhqE36M3GTR"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.import.vehicles["Base.fhqImprezaWRX"] = {index = -1, spawnChance = 30};
VehicleZoneDistribution.import.vehicles["Base.fhqImprezaWRXWag"] = {index = -1, spawnChance = 30};

VehicleZoneDistribution.import.vehicles["Base.fhqM20b"] = {index = -1, spawnChance = 20};
--VehicleZoneDistribution.import.vehicles["Base.fhqM30] = {index = 0, spawnChance = 15};
VehicleZoneDistribution.import.vehicles["Base.fhqR32GTRTommy"] = {index = 0, spawnChance = 15};

VehicleZoneDistribution.import.vehicles["Base.fhqHQSandman"] = {index = 0, spawnChance = 30};
VehicleZoneDistribution.import.vehicles["Base.fhqHQPanelVan"] = {index = 0, spawnChance = 30};

VehicleZoneDistribution.import.vehicles["Base.fhqDeltaEvo"] = {index = -1, spawnChance = 30};

---Used Dealer: Zone for used car dealers. Should contain older cars, but newer cars can also be included as well. Higher key chance, lower condition.---

VehicleZoneDistribution.useddealer = VehicleZoneDistribution.useddealer or {};
VehicleZoneDistribution.useddealer.vehicles = VehicleZoneDistribution.useddealer.vehicles or {};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqonevia"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqoneviaPreFL"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqMX5NA"] = {index = -1, spawnChance = 6};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqMX5NAHardtop"] = {index = -1, spawnChance = 6};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqFBMustangLX50"] = {index = -1, spawnChance = 6};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqFBMustangLX"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqFBMustangLXCoupe"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqFBMustangLXCoupe50"] = {index = -1, spawnChance = 6};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqVWT2T1Van"] = {index = -1, spawnChance = 10};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqVWT2T1CrewCab"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqVWT2T1Truck"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqVWT2T1"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqBronco"] = {index = -1, spawnChance = 15};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqBroncoHalfCab"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.useddealer.vehicles["Base.fhq92Econoline"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.fhq92EconolineXL"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.useddealer.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.useddealer.vehicles["Base.fhq92Econoline4Door"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.useddealer.vehicles["Base.fhq70Challenger"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.fhq70ChallengerRT"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.useddealer.vehicles["Base.fhq70ChallengerTA"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.useddealer.vehicles["Base.fhq71Cuda"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.useddealer.vehicles["Base.fhq57BelAir"] = {index = -1, spawnChance = 1};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqLeCar"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqE36318iSedan"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqE36318iCoupe"] = {index = -1, spawnChance = 3};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqImpreza"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqImprezaCoupe"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqImprezaWag"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqSidekick"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqSidekickLWB"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.useddealer.vehicles["Base.fhqSidekickHardtop"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.useddealer.vehicles["Base.fhqLexusLS400"] = {index = -1, spawnChance = 5};

---Racing: Race cars and other track-based vehicles should go here.---

VehicleZoneDistribution.racing = VehicleZoneDistribution.racing or {};
VehicleZoneDistribution.racing.vehicles = VehicleZoneDistribution.racing.vehicles or {};

VehicleZoneDistribution.racing.vehicles["Base.fhqGT40LM"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.racing.vehicles["Base.fhqGT40Gulf"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.racing.vehicles["Base.fhqStratosRally"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.racing.vehicles["Base.fhq300ZXZ32Forza"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.racing.vehicles["Base.fhqR32GTRTouring"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.racing.vehicles["Base.fhqR32GTRPace"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.racing.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance = 5};

VehicleZoneDistribution.racing.vehicles["Base.fhqSupraMkIVOWR"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.racing.vehicles["Base.fhq70ChallengerTARace"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.racing.vehicles["Base.fhqBomberBFS"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.racing.vehicles["Base.fhqChili"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.racing.vehicles["Base.fhqBeatRace"] = {index = -1, spawnChance = 15};

VehicleZoneDistribution.racing.vehicles["Base.fhqE36M3GTRMW"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.racing.vehicles["Base.fhqImprezaRally"] = {index = 0, spawnChance = 8};

VehicleZoneDistribution.racing.vehicles["Base.fhqDeltaEvoRally"] = {index = -1, spawnChance = 15};

--fhqwhgads: Special personal cars
VehicleZoneDistribution.fhqwhgads = VehicleZoneDistribution.fhqwhgads or {};
VehicleZoneDistribution.fhqwhgads.vehicles = VehicleZoneDistribution.fhqwhgads.vehicles or {};

VehicleZoneDistribution.fhqwhgads.vehicles["Base.fhqSupraMkIVOWROOTHST"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.fhqwhgads.chanceToSpawnKey = 90;
VehicleZoneDistribution.fhqwhgads.chanceToSpawnSpecial = 0;
VehicleZoneDistribution.fhqwhgads.spawnRate = 200;

--drift: Spawn zones for the drift car(s)
VehicleZoneDistribution.drift = VehicleZoneDistribution.drift or {};
VehicleZoneDistribution.drift.vehicles = VehicleZoneDistribution.drift.vehicles or {};

VehicleZoneDistribution.drift.vehicles["Base.fhqoneviadrift"] = {index = -1, spawnChance = 10};

--------------------------------New Special spawn zones--------------------------------

VehicleZoneDistribution.policeonly = VehicleZoneDistribution.policeonly or {};
VehicleZoneDistribution.policeonly.vehicles = VehicleZoneDistribution.policeonly.vehicles or {};

VehicleZoneDistribution.policeonly.vehicles["Base.fhqFBMustangSSP"] = {index = 0, spawnChance = 10};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqFBMustangSSPLightbar"] = {index = 0, spawnChance = 10};

VehicleZoneDistribution.policeonly.vehicles["Base.fhq70ChallengerSF"] = {index = -1, spawnChance = 7};

VehicleZoneDistribution.policeonly.vehicles["Base.fhq57BelAirPolice"] = {index = 0, spawnChance = 10};
VehicleZoneDistribution.policeonly.vehicles["Base.fhq57BelAirKSP"] = {index = 0, spawnChance = 10};

VehicleZoneDistribution.policeonly.vehicles["Base.fhqLeCarPolice"] = {index = 0, spawnChance = 10};

---Ambulance Exclusive: The vanilla ambulance list, but will only spawn ambulances---

VehicleZoneDistribution.ambulanceonly = VehicleZoneDistribution.ambulanceonly or {};
VehicleZoneDistribution.ambulanceonly.vehicles = VehicleZoneDistribution.ambulanceonly.vehicles or {};

VehicleZoneDistribution.ambulanceonly.vehicles["Base.fhq92EconolineAmbulance"] = {index = -1, spawnChance = 175};
VehicleZoneDistribution.ambulanceonly.vehicles["Base.fhq92EconolineAmbulanceLightbar"] = {index = -1, spawnChance = 175};
VehicleZoneDistribution.ambulanceonly.vehicles["Base.fhq92EconolineT3Ambulance"] = {index = -1, spawnChance = 185};

---Hot Pursuit:Exotic police cars---

---Porsche service: Porsche service VW Buses---
VehicleZoneDistribution.porscheservice = VehicleZoneDistribution.porscheservice or {};
VehicleZoneDistribution.porscheservice.vehicles = VehicleZoneDistribution.porscheservice.vehicles or {};

VehicleZoneDistribution.porscheservice.vehicles["Base.fhqVWT2T1Livery"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.porscheservice.chanceToSpawnSpecial = 0;
VehicleZoneDistribution.porscheservice.spawnRate = 70;
VehicleZoneDistribution.porscheservice.specialCar = false;

---Heist Vehicles: Vehicles placed near banks as escape/loot vehicles for a heist story. A bit temp, vehicle stories would be optimal---
VehicleZoneDistribution.heistvehicle = VehicleZoneDistribution.heistvehicle or {};
VehicleZoneDistribution.heistvehicle.vehicles = VehicleZoneDistribution.heistvehicle.vehicles or {};

VehicleZoneDistribution.heistvehicle.vehicles["Base.fhq92EconolineXLPanel"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.heistvehicle.vehicles["Base.fhq92EconolinePanel"] = {index = -1, spawnChance = 20};
VehicleZoneDistribution.heistvehicle.vehicles["Base.fhq92EconolinePAYDAY"] = {index = -1, spawnChance = 15};

---Pace Car: Pace cars and safety cars for use at race tracks and racing schools---
VehicleZoneDistribution.pacecar = VehicleZoneDistribution.pacecar or {};
VehicleZoneDistribution.pacecar.vehicles = VehicleZoneDistribution.pacecar.vehicles or {};

VehicleZoneDistribution.pacecar.vehicles["Base.fhqR32GTRPace"] = {index = -1, spawnChance = 10};

VehicleZoneDistribution.ia15 = VehicleZoneDistribution.ia15 or {};
VehicleZoneDistribution.ia15.vehicles = VehicleZoneDistribution.ia15.vehicles or {};

VehicleZoneDistribution.ia15.vehicles["Base.fhqR32GTRPace"] = {index = -1, spawnChance = 20};

VehicleZoneDistribution.ia15.chanceToSpawnSpecial = 0;
VehicleZoneDistribution.ia15.spawnRate = 200;

VehicleZoneDistribution.policeriverside = VehicleZoneDistribution.policeriverside or {};
VehicleZoneDistribution.policeriverside.vehicles = VehicleZoneDistribution.policeriverside.vehicles or {};

VehicleZoneDistribution.policeriverside.vehicles["Base.fhqLeCarPolice"] = {index = -1, spawnChance = 100};

VehicleZoneDistribution.policeriverside.chanceToSpawnSpecial = 0;
VehicleZoneDistribution.policeriverside.spawnRate = 200;

end