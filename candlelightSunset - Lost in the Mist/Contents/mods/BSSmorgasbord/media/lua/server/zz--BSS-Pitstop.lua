--Pitstop
--https://steamcommunity.com/sharedfiles/filedetails/?id=2597946327
if getActivatedMods():contains("Pitstop") 
or getActivatedMods():contains("PitstopLegacy") then
--Clothing - Arms
GaistUtils.doParam("Base.StormTrooperArmletL","DisplayCategory","ClothArm");
GaistUtils.doParam("Base.StormTrooperArmletR","DisplayCategory","ClothArm");
--Clothing - Feet
GaistUtils.doParam("Base.AirMags","DisplayCategory","ClothF");
GaistUtils.doParam("Base.AirMags_WorldItem","DisplayCategory","ClothF");
GaistUtils.doParam("Base.Shoes_CleanUpKrewSneakers","DisplayCategory","ClothF");
GaistUtils.doParam("Base.Shoes_StormTrooperBoots","DisplayCategory","ClothF");
--Clothing - Head
GaistUtils.doParam("Base.AlienCap","DisplayCategory","ClothH");
GaistUtils.doParam("Base.DisrespectMullet","DisplayCategory","ClothH");
GaistUtils.doParam("Base.SheriffEliHat","DisplayCategory","ClothH");
--Clothing - Helmet
GaistUtils.doParam("Base.AstroHelmet","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.DarthVaderHelmet","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.MedievalHelmet","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.RoboCopHelmet","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.ScifiHelmet01","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.SpaceHelmet","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.StormTrooperHelmet","DisplayCategory","ClothHelm");
--Clothing - Legs
GaistUtils.doParam("Base.StormTrooperLegs","DisplayCategory","ClothL");
--Clothing - Suit
GaistUtils.doParam("Base.AstronautSuit","DisplayCategory","ClothS");
GaistUtils.doParam("Base.AstroSuit","DisplayCategory","ClothS");
GaistUtils.doParam("Base.CleanUpKrewJumpsuit","DisplayCategory","ClothS");
GaistUtils.doParam("Base.Dress_StarTrekDress1","DisplayCategory","ClothS");
--Clothing - Suit (Armor)
GaistUtils.doParam("Base.PowerArmor","DisplayCategory","ClothSA");
--Clothing - Torso
GaistUtils.doParam("Base.Bandshirt","DisplayCategory","ClothT");
GaistUtils.doParam("Base.Shirt_StarTrekShirt1","DisplayCategory","ClothT");
--Clothing - Torso (Armor)
GaistUtils.doParam("Base.SheriffEliVest","DisplayCategory","ClothTA");
--Clothing - Torso (Outerwear)
GaistUtils.doParam("Base.DisrespectVest","DisplayCategory","ClothTO");
GaistUtils.doParam("Base.FutureJacket","DisplayCategory","ClothTO");
GaistUtils.doParam("Base.StormTrooperArmor","DisplayCategory","ClothTO");
GaistUtils.doParam("Base.StormTrooperShoulders","DisplayCategory","ClothTO");
--Clothing - Waist
GaistUtils.doParam("Base.SheriffEliBelt","DisplayCategory","ClothWaist");
GaistUtils.doParam("Base.StormTrooperBelt","DisplayCategory","ClothWaist");
end