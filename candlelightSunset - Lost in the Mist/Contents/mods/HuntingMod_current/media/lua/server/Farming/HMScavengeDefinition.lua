require "Farming/ScavengeDefinition";

getTexture("Item_HMAnimalTraces.png");
getTexture("Item_HMAnimalTracks.png");

-- ADDITIONS
local HMAnimalTraces = {};
HMAnimalTraces.type = "HuntingMod.HMAnimalTraces";
HMAnimalTraces.minCount = 1;
HMAnimalTraces.maxCount = 1;
HMAnimalTraces.skill = 0;
local HMAnimalTracks = {};
HMAnimalTracks.type = "HuntingMod.HMAnimalTracks";
HMAnimalTracks.minCount = 1;
HMAnimalTracks.maxCount = 1;
HMAnimalTracks.skill = 3;

table.insert(scavenges.forestGoods, HMAnimalTraces);
table.insert(scavenges.forestGoods, HMAnimalTracks);

