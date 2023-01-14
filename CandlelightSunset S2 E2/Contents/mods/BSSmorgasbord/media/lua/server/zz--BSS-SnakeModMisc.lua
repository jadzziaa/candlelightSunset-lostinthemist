--Snake's Mod Pack 41.77
--https://steamcommunity.com/sharedfiles/filedetails/?id=2719327441
if getActivatedMods():contains("LeGourmetRevolution") then
GaistUtils.doParam("Base.Apron_LeGourmet","DisplayCategory","ClothApron");
GaistUtils.doParam("Base.ThreadPieces","DisplayCategory","Craft");
GaistUtils.doParam("Base.String","DisplayCategory","Craft");
GaistUtils.doParam("Base.ThreadBox","DisplayCategory","Craft");
GaistUtils.doParam("Base.StringBox","DisplayCategory","Craft");
GaistUtils.doParam("Base.RubberBandsBox","DisplayCategory","Craft");
GaistUtils.doParam("Base.MedicalHose","DisplayCategory","Craft");
GaistUtils.doParam("Base.BranchPack","DisplayCategory","Craft");
GaistUtils.doParam("Base.TwigsPack","DisplayCategory","Craft");
GaistUtils.doParam("Base.SlingshotHandle","DisplayCategory","Craft");
GaistUtils.doParam("Base.WoodenGrip","DisplayCategory","Craft");
GaistUtils.doParam("Base.SharpedknifeStone","DisplayCategory","Craft");
GaistUtils.doParam("Base.SharkTooth","DisplayCategory","Craft");
GaistUtils.doParam("Base.RawCowSkin","DisplayCategory","Craft");
GaistUtils.doParam("Base.CowSkin","DisplayCategory","Craft");
GaistUtils.doParam("Base.RawDeerSkin","DisplayCategory","Craft");
GaistUtils.doParam("Base.DeerSkin","DisplayCategory","Craft");
GaistUtils.doParam("Base.RawBearSkin","DisplayCategory","Craft");
GaistUtils.doParam("Base.BearSkin","DisplayCategory","Craft");
end
if getActivatedMods():contains("Riverside Gunstore") then
--Clothing - Feet
GaistUtils.doParam("Base.Shoes_BowlingTrainers","DisplayCategory","ClothF");
GaistUtils.doParam("Base.Shoes_BowlingTrainersRed","DisplayCategory","ClothF");
GaistUtils.doParam("Base.Shoes_BowlingTrainersGreen","DisplayCategory","ClothF");
--Weapon - Melee
GaistUtils.doParam("Base.Bowlingball","DisplayCategory","WepMelee");
GaistUtils.doParam("Base.BowlingPin","DisplayCategory","WepMelee");
end
if getActivatedMods():contains("TallerMecanico") then
--Literature - Recipe
GaistUtils.doParam("Base.GlassMag1","DisplayCategory","LitR");
--Mechanics
GaistUtils.doParam("Base.CarAdv1","DisplayCategory","Mechanics");
GaistUtils.doParam("Base.CarAdv2","DisplayCategory","Mechanics");
GaistUtils.doParam("Base.CarAdv3","DisplayCategory","Mechanics");
GaistUtils.doParam("Base.CarAdv4","DisplayCategory","Mechanics");
GaistUtils.doParam("Base.CarAdv5","DisplayCategory","Mechanics");
GaistUtils.doParam("Base.CarAdv6","DisplayCategory","Mechanics");
GaistUtils.doParam("Base.CarAdv7","DisplayCategory","Mechanics");
GaistUtils.doParam("Base.CarAdv8","DisplayCategory","Mechanics");
--Mechanics - Brakes
GaistUtils.doParam("Base.BrakesParts","DisplayCategory","MechB");
GaistUtils.doParam("Base.BrakesPartsBox","DisplayCategory","MechB");
--Mechanics - Engine
GaistUtils.doParam("Base.CarVanTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.CarStepVanTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.SportsCarTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.SUVTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.PickUpVanTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.PickUpTruckTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.CarOffRoadTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.ModernCar02TunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.ModernCarTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.CarTaxiTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.CarStationWagonTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.CarLuxuryTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.SmallCar02TunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.SmallCarTunningParts","DisplayCategory","MechE");
GaistUtils.doParam("Base.CarNormalTunningParts","DisplayCategory","MechE");
--Mechanics - Glass
GaistUtils.doParam("Base.GlassGlue","DisplayCategory","MechG");
GaistUtils.doParam("Base.BigGlassPanel","DisplayCategory","MechG");
GaistUtils.doParam("Base.SmallGlassPanel","DisplayCategory","MechG");
--Mechanics - Suspension
GaistUtils.doParam("Base.SuspensionParts","DisplayCategory","MechS");
GaistUtils.doParam("Base.SuspensionPartsBag","DisplayCategory","MechS");
--Mechanics - Tire
GaistUtils.doParam("Base.TireRubber","DisplayCategory","MechTire");
GaistUtils.doParam("Base.TireGlue","DisplayCategory","MechTire");
GaistUtils.doParam("Base.PMRTire","DisplayCategory","MechTire");
GaistUtils.doParam("Base.CarRim","DisplayCategory","MechTire");
GaistUtils.doParam("Base.DismountedTire","DisplayCategory","MechTire");
--Mechanics - Trunk
GaistUtils.doParam("Base.TrailerTrunk1","DisplayCategory","MechTrunk");
GaistUtils.doParam("Base.TrailerTrunk2","DisplayCategory","MechTrunk");
GaistUtils.doParam("Base.TrailerTrunk3","DisplayCategory","MechTrunk");
--Tool
GaistUtils.doParam("Base.BatteryCleaner","DisplayCategory","Tool");
--Tool / Weapon - Melee
GaistUtils.doParam("Base.GlassCutter","DisplayCategory","TWepM");
end