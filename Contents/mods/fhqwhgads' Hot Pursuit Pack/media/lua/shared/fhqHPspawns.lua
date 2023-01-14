if VehicleZoneDistribution then
--------------------------------Vanilla Special spawn zones: For emergency vehicles, etc.--------------------------------

---Police---

VehicleZoneDistribution.police.vehicles["Base.fhqDiabloPolice"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.police.vehicles["Base.fhqDiabloInterceptor"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.police.vehicles["Base.fhqHPR32GTRPolice"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.police.vehicles["Base.fhqHPGT40Police"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.police.vehicles["Base.fhqHPE36Police"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.police.vehicles["Base.fhqHPCappuccinoPE"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.police.vehicles["Base.fhqHPSupraMkIVPoliceHP"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.police.vehicles["Base.fhqHP300ZXZ32Police"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.police.vehicles["Base.fhqHPChaserJZX90Police"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.police.vehicles["Base.fhqHPE36M3CoupePolice"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.police.vehicles["Base.fhqHPFBMustangGTSheriff"] = {index = -1, spawnChance = 8};
VehicleZoneDistribution.police.vehicles["Base.fhqHPE36M3GTRPolice"] = {index = -1, spawnChance = 4};
VehicleZoneDistribution.police.vehicles["Base.fhqHPImprezaPolice"] = {index = -1, spawnChance = 12};
VehicleZoneDistribution.police.vehicles["Base.fhqHPStratosPolice"] = {index = -1, spawnChance = 7};


---Ranger---

VehicleZoneDistribution.ranger.vehicles["Base.fhqHPLM002Ranger"] = {index = -1, spawnChance = 7};
VehicleZoneDistribution.ranger.vehicles["Base.fhqHPStratosRallyRanger"] = {index = -1, spawnChance = 5};
VehicleZoneDistribution.ranger.vehicles["Base.fhqHPImprezaWRXWagRanger"] = {index = -1, spawnChance = 15};

--------------------------------New spawn zones--------------------------------

VehicleZoneDistribution.policeonly = VehicleZoneDistribution.policeonly or {};
VehicleZoneDistribution.policeonly.vehicles = VehicleZoneDistribution.policeonly.vehicles or {};

VehicleZoneDistribution.policeonly.vehicles["Base.fhqDiabloPolice"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqDiabloInterceptor"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPR32GTRPolice"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPGT40Police"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPE36Police"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPCappuccinoPE"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPSupraMkIVPoliceHP"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHP300ZXZ32Police"] = {index = -1, spawnChance = 2};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPChaserJZX90Police"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPE36M3CoupePolice"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPFBMustangGTSheriff"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPE36M3GTRPolice"] = {index = -1, spawnChance = 1};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPImprezaPolice"] = {index = -1, spawnChance = 3};
VehicleZoneDistribution.policeonly.vehicles["Base.fhqHPStratosPolice"] = {index = -1, spawnChance = 1};

---Hot Pursuit:Exotic police cars---

VehicleZoneDistribution.hotpursuit = VehicleZoneDistribution.hotpursuit or {};
VehicleZoneDistribution.hotpursuit.vehicles = VehicleZoneDistribution.hotpursuit.vehicles or {};

VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqDiabloPolice"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqDiabloInterceptor"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPR32GTRPolice"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPGT40Police"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPE36Police"] = {index = -1, spawnChance = 75};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPCappuccinoPE"] = {index = -1, spawnChance = 60};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPSupraMkIVPoliceHP"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHP300ZXZ32Police"] = {index = -1, spawnChance = 90};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPChaserJZX90Police"] = {index = -1, spawnChance = 80};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPE36M3CoupePolice"] = {index = -1, spawnChance = 90};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPFBMustangGTSheriff"] = {index = -1, spawnChance = 55};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPE36M3GTRPolice"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPImprezaPolice"] = {index = -1, spawnChance = 25};
VehicleZoneDistribution.hotpursuit.vehicles["Base.fhqHPStratosPolice"] = {index = -1, spawnChance = 100};

end