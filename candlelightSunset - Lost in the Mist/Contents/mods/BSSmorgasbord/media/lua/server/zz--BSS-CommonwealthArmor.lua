--Commonwealth Armor Pack
--https://steamcommunity.com/sharedfiles/filedetails/?id=2845972123
if getActivatedMods():contains("CommonwealthArmor") then
GaistUtils.doParam("Base.CommonwealthArmorInstructions","DisplayCategory","LitR");
GaistUtils.doParam("Base.CommonwealthOfficerArmorInstructions","DisplayCategory","LitR");
--Clothing - Head (Armor)
GaistUtils.doParam("Base.CMWHelmet","DisplayCategory","ClothHA");
GaistUtils.doParam("Base.CMWOfficerHelmet","DisplayCategory","ClothHA");
GaistUtils.doParam("Base.CMWHelmetOpen","DisplayCategory","ClothHA");
GaistUtils.doParam("Base.CMWHelmetOfficerOpen","DisplayCategory","ClothHA");
--Clothing - Suit (Armor)
GaistUtils.doParam("Base.CMWArmor","DisplayCategory","ClothSA");
GaistUtils.doParam("Base.CMWOfficerArmor","DisplayCategory","ClothSA");
--Clothing - Hands
GaistUtils.doParam("Base.Gloves_CMW","DisplayCategory","ClothHW");
GaistUtils.doParam("Base.Gloves_CMWOfficer","DisplayCategory","ClothHW");
end