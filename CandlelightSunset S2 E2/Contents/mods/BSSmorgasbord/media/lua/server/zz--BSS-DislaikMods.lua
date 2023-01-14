--Dislaik's Mods

--Dislaik's Clothing Pack
--https://steamcommunity.com/sharedfiles/filedetails/?id=2688737276
if getActivatedMods():contains("Dislaik'sClothingPack") then
GaistUtils.doParam("Dislaik.Trousers_SWAT","DisplayCategory","ClothL")
GaistUtils.doParam("Dislaik.LowerArms_ElbowPads","DisplayCategory","ClothAA")
GaistUtils.doParam("Dislaik.UpperLegs_BallisticThighPads","ClothLA")
GaistUtils.doParam("Dislaik.UpperLegs_LegBag","ClothB")
GaistUtils.doParam("Dislaik.Jacket_SWAT","ClothTO")
GaistUtils.doParam("Dislaik.Gloves_Tactical","ClothHW")
GaistUtils.doParam("Dislaik.Glasses_TacticalGoggles","DisplayCategory","ClothA")
GaistUtils.doParam("Dislaik.BeltExtra_TacticalHolster","ClothHol")
GaistUtils.doParam("Dislaik.Vest_LightweightBallistic","ClothTA")
GaistUtils.doParam("Dislaik.Vest_Ballistic","ClothTA")
GaistUtils.doParam("Dislaik.Vest_SWATBulletproofVest","ClothTA")
GaistUtils.doParam("Dislaik.UpperArms_BallisticShoulderPads","DisplayCategory","ClothAA")
GaistUtils.doParam("Dislaik.Hat_SkateSport","DisplayCategory","ClothH")
GaistUtils.doParam("Dislaik.Mask_Balaclava","DisplayCategory","ClothMask")
GaistUtils.doParam("Dislaik.Hat_Tactical","DisplayCategory","ClothH")
GaistUtils.doParam("Dislaik.LowerLegs_KneePads","ClothLA")
GaistUtils.doParam("Dislaik.LowerLegs_BallisticKneePads","ClothLA")
end

--Skateboard
--https://steamcommunity.com/sharedfiles/filedetails/?id=2728300240
if getActivatedMods():contains("Skateboard") then
GaistUtils.doParam("Dislaik.Skateboard","DisplayCategory","WepMelee")
end