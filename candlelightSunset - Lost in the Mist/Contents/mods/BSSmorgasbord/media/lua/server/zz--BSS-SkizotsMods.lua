--Garbage Truck
--https://steamcommunity.com/sharedfiles/filedetails/?id=2783580134
if getActivatedMods():contains("GarbageTruck") then
GaistUtils.doParam("Base.GarbageTrunk","DisplayCategory","MechTrunk");
end

--Riding Mower
--https://steamcommunity.com/sharedfiles/filedetails/?id=2771297715
if getActivatedMods():contains("RidingMower") then
GaistUtils.doParam("Base.MowerBladeWeaponBlunt","DisplayCategory","TWepM");
GaistUtils.doParam("Base.MowerBladeWeaponSharp","DisplayCategory","TWepM");
GaistUtils.doParam("Base.MowerBladeBlunt1","DisplayCategory","TWepM");
GaistUtils.doParam("Base.MowerBladeSharp","DisplayCategory","TWepM");
GaistUtils.doParam("Base.Hat_CheeseHelmet","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.Boilersuit_CheeseRacing","DisplayCategory","ClothS");
end