--Magazine Armor
--https://steamcommunity.com/sharedfiles/filedetails/?id=2728368668
if getActivatedMods():contains("MagazineArmor") then
GaistUtils.doParam("Base.MagazineArmorL","DisplayCategory","ClothAA");
GaistUtils.doParam("Base.MagazineArmorR","DisplayCategory","ClothAA");
end
--Padded Armor
--https://steamcommunity.com/sharedfiles/filedetails/?id=2728368668
if getActivatedMods():contains("PaddedArmor") then
GaistUtils.doParam("Base.PaddedArmorL","DisplayCategory","ClothAA");
GaistUtils.doParam("Base.PaddedArmorR","DisplayCategory","ClothAA");
end