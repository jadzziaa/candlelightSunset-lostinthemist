--Water Purification Tablets (build 41.53+)
--https://steamcommunity.com/sharedfiles/filedetails/?id=2745388209
if getActivatedMods():contains("Water Purification Tablets") then
GaistUtils.doParam("Base.WaterPurificationTablets","DisplayCategory","SurWater");
GaistUtils.doParam("Base.WaterPurificationTablets_Empty","DisplayCategory","Junk");
end