require "StashDescriptions/StashUtil";

local stashMap1 = StashUtil.newStash("LGRStashMap1", "Map", "Base.MuldraughMap", "Stash_AnnotedMap");
stashMap1.spawnOnlyOnZed = true;
stashMap1:addStamp(nil, "Stash_LGRMulMap1_Text1", 10821, 9259, 0, 0, 0)
stashMap1:addStamp(nil, "Stash_LGRMulMap1_Text2", 10937, 9279, 0, 0, 0)
stashMap1:addStamp("FaceDead", nil, 11045, 9301, 0, 0, 0)
stashMap1:addStamp(nil, "Stash_LGRMulMap1_Text3", 10791, 9301, 0, 0, 0)
stashMap1:addStamp(nil, "Stash_LGRMulMap1_Text4", 10784, 9323, 0, 0, 0)
stashMap1:addStamp(nil, "Stash_LGRMulMap1_Text5", 10784, 9347, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10790, 10664, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10790, 10575, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10790, 10480, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10790, 10354, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10791, 10249, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10824, 10176, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10824, 10080, 0, 0, 0)
stashMap1:addStamp("ArrowEast", nil, 10837, 10055, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10857, 10032, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10855, 9990, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10819, 9922, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10819, 9825, 0, 0, 0)
stashMap1:addStamp("ArrowEast", nil, 10843, 9770, 0, 0, 0)
stashMap1:addStamp("ArrowEast", nil, 10910, 9773, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10924, 9734, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 10926, 9618, 0, 0, 0)
stashMap1:addStamp("Question", nil, 10935, 9577, 0, 0, 0)
stashMap1:addStamp("ArrowEast", nil, 10973, 9568, 0, 0, 0)
stashMap1:addStamp("ArrowEast", nil, 11051, 9569, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 11100, 9533, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 11101, 9418, 0, 0, 0)
stashMap1:addStamp("ArrowNorth", nil, 11101, 9345, 0, 0, 0)
stashMap1:addStamp("ArrowWest", nil, 11081, 9318, 0, 0, 0)
stashMap1:addStamp("Gun", nil, 11060, 9306, 0, 0, 0)
stashMap1:addStamp("Asterisk", nil, 11052, 9311, 0, 0, 0)
stashMap1:addStamp("Target", nil, 10925, 9566, 0, 0, 0)
stashMap1:addStamp("Target", nil, 11098, 9567, 0, 0, 0)
stashMap1:addStamp("ArrowNorthEast", nil, 11074, 9284, 0, 0, 0)
stashMap1:addStamp("ArrowNorthEast", nil, 11098, 9266, 0, 0, 0)


local stashMap2 = StashUtil.newStash("LGRStashMap2", "Map", "Base.MuldraughMap", "Stash_AnnotedMap");
stashMap2.spawnOnlyOnZed = true;
stashMap2.buildingX = 10707;
stashMap2.buildingY = 9367;
stashMap2.spawnTable = "picture_1";
stashMap2:addContainer("crate_black","carpentry_03_63",nil,nil,10706,9365,0);
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text1", 10874, 9514, 0, 0, 0)
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text2", 10875, 9534, 0, 0, 0)
stashMap2:addStamp("Exclamation", nil, 10933, 9565, 0, 0, 0)
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text3", 10866, 9575, 0, 0, 0)
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text4", 10867, 9594, 0, 0, 0)
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text5", 10669, 9279, 0, 0, 0)
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text6", 10670, 9301, 0, 0, 0)
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text7", 10867, 9614, 0, 0, 0)
stashMap2:addStamp(nil, "Stash_LGRMulMap2_Text8", 10670, 9323, 0, 0, 0)
stashMap2:addStamp("Target", nil, 10701, 9355, 0, 0, 0)

local stashMap3 = StashUtil.newStash("LGRStashMap3", "Map", "Base.WestpointMap", "Stash_AnnotedMap");
stashMap3.spawnOnlyOnZed = true;
stashMap3.buildingX = 11679;
stashMap3.buildingY = 6881;
stashMap3:addStamp("Checkmark", nil, 11678, 6877, 0, 0, 0)
stashMap3:addStamp("Circle", nil, 12018, 6700, 0, 0, 0)
stashMap3:addStamp("Circle", nil, 12018, 6716, 0, 0, 0)
stashMap3:addStamp("Checkmark", nil, 12018, 6701, 0, 0, 0)
stashMap3:addStamp("X", nil, 12019, 6718, 0, 0, 0)
stashMap3:addStamp(nil, "Stash_LGRWestMap1_Text1", 12003, 6666, 0, 0, 0)
stashMap3:addStamp(nil, "Stash_LGRWestMap1_Text2", 12030, 6690, 0, 0, 0)
stashMap3:addStamp(nil, "Stash_LGRWestMap1_Text3", 12031, 6709, 0, 0, 0)
stashMap3:addStamp(nil, "Stash_LGRWestMap1_Text4", 11613, 6706, 0, 0, 0)
stashMap3:addStamp(nil, "Stash_LGRWestMap1_Text5", 11578, 6727, 0, 0, 0)
stashMap3:addStamp(nil, "Stash_LGRWestMap1_Text6", 11580, 6760, 0, 0, 1)
stashMap3:addStamp(nil, "Stash_LGRWestMap1_Text7", 11917, 6791, 0, 0, 0)
stashMap3:addStamp("Circle", nil, 11677, 6879, 0, 0, 0)
stashMap3:addStamp("X", nil, 11588, 6995, 1, 0, 0)
stashMap3:addStamp("X", nil, 11658, 6753, 1, 0, 0)
stashMap3:addStamp("X", nil, 11439, 6731, 1, 0, 0)
stashMap3:addStamp("X", nil, 10987, 6733, 1, 0, 0)
stashMap3:addStamp("X", nil, 11484, 6847, 1, 0, 0)
stashMap3:addStamp("X", nil, 12018, 7369, 1, 0, 0)
stashMap3:addStamp("X", nil, 10904, 7143, 1, 0, 0)
stashMap3:addStamp("Question", nil, 11676, 6752, 0, 0, 0)
stashMap3:addStamp("Pill", nil, 11937, 6813, 0, 0, 0)
stashMap3:addStamp("ArrowEast", nil, 11797, 6772, 0, 0, 1)
stashMap3:addStamp("ArrowEast", nil, 11879, 6773, 0, 0, 1)
stashMap3:addStamp("ArrowSouthEast", nil, 11923, 6790, 0, 0, 1)
stashMap3.spawnTable = "twiggys_1";
stashMap3:addContainer("crate_black","carpentry_03_63",nil,nil,11673,6874,0);




