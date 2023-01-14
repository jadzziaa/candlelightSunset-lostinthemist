--KI5's Vehicle Collection
--https://steamcommunity.com/sharedfiles/filedetails/?id=2490220997

--'13 Yamaha Vino 125 + PizzaBoy
--https://steamcommunity.com/sharedfiles/filedetails/?id=2878374713
if getActivatedMods():contains("vino125") then
--Mechanics - Muffler
GaistUtils.doParam("Base.VN125muffler","DisplayCategory","MechM")
--Mechanics - Seat
GaistUtils.doParam("Base.VN125seat","DisplayCategory","MechSeat")
--Mechanics - Storage
GaistUtils.doParam("Base.VN125storage1","DisplayCategory","MechStor")
GaistUtils.doParam("Base.VN125sidestorage1","DisplayCategory","MechStor")
GaistUtils.doParam("Base.VN125storagePizza1","DisplayCategory","MechStor")
--Mechanics - Tire
GaistUtils.doParam("Base.VN125oldTire","DisplayCategory","MechTire")
GaistUtils.doParam("Base.VN125normalTire","DisplayCategory","MechTire")
GaistUtils.doParam("Base.VN125modernTire","DisplayCategory","MechTire")
end

--'59 Cadillac Miller-Meteor + ECTO-1
--https://steamcommunity.com/sharedfiles/filedetails/?id=2772575623
if getActivatedMods():contains("59meteor")
or getActivatedMods():contains("ECTO1") then
--Mechanics - Accessory
GaistUtils.doParam("Base.ECTO1Equipment1_Item","DisplayCategory","MechAcc")
--Mechanics - Armor
GaistUtils.doParam("Base.ECTO1CarFrontDoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.ECTO1CarRearDoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.ECTO1WindshieldArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.ECTO1WindshieldRearArmor1_Item","DisplayCategory","MechArm")
--Mechanics - Body
GaistUtils.doParam("Base.ECTO1DefaultInterior2","DisplayCategory","MechBod")
--Mechanics - Bumper
GaistUtils.doParam("Base.ECTO1Bullbar1_Item","DisplayCategory","MechBump")
--Mechanics - Door
GaistUtils.doParam("Base.ECTO1CarFrontDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.ECTO1CarRearDoor2","DisplayCategory","MechD")
--Mechanics - Glass
GaistUtils.doParam("Base.ECTO1Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.ECTO1RearWindshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.ECTO1SideWindow2","DisplayCategory","MechG")
--Mechanics - Hood
GaistUtils.doParam("Base.ECTO1EngineDoor2","DisplayCategory","MechHood")
--Mechanics - Seat
GaistUtils.doParam("Base.ECTO1CarSeatfl2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.ECTO1CarSeatfr2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.ECTO1CarSeatrl2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.ECTO1CarSeatrr2","DisplayCategory","MechSeat")
--Mechanics - Storage
GaistUtils.doParam("Base.ECTO1Roofrack1_Item","DisplayCategory","MechStor")
--Mechanics - Tire
GaistUtils.doParam("Base.ECTO1tire2_Item","DisplayCategory","MechTire")
GaistUtils.doParam("Base.ECTO1tire1_Item","DisplayCategory","MechTire")
--Mechanics - Trunk
GaistUtils.doParam("Base.ECTO1Extra2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.ECTO1Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.ECTO1TrunkDoor2","DisplayCategory","MechTrunk")
end

--'67 Cadillac Gage Commando
--https://steamcommunity.com/sharedfiles/filedetails/?id=2478247379
if getActivatedMods():contains("70dodge") then
--Mechanics - Door
GaistUtils.doParam("Base.FrontLeftV100Door2","DisplayCategory","MechD")
GaistUtils.doParam("Base.FrontRightV100Door2","DisplayCategory","MechD")
GaistUtils.doParam("Base.RearV100Door2","DisplayCategory","MechD")
--Mechanics - Glass
GaistUtils.doParam("Base.V100Window2","DisplayCategory","MechG")
--Mechanics - Hood
GaistUtils.doParam("Base.V100EngineDoor2","DisplayCategory","MechHood")
--Mechanics - Seat
GaistUtils.doParam("Base.Seat0","DisplayCategory","MechSeat")
--Mechanics - Storage
GaistUtils.doParam("Base.V100ToolboxLid2","DisplayCategory","MechStor")
GaistUtils.doParam("Base.V100Toolbox2","DisplayCategory","MechStor")
--Mechanics - Tire
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
end

--'70 Dodge Challenger
--https://steamcommunity.com/sharedfiles/filedetails/?id=2873290424
if getActivatedMods():contains("70dodge") then
GaistUtils.doParam("Base.DodgeRTtire3","DisplayCategory","MechTire")
GaistUtils.doParam("Base.DG70Trunk3","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.DodgeFrontSeat3","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.DodgeRearSeat3","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.DG70RTEngineDoor","DisplayCategory","MechHood")
GaistUtils.doParam("Base.DG70PDEngineDoor","DisplayCategory","MechHood")
GaistUtils.doParam("Base.DG70TAEngineDoor0","DisplayCategory","MechHood")
GaistUtils.doParam("Base.DG70TAEngineDoor1","DisplayCategory","MechHood")
GaistUtils.doParam("Base.DG70TrunkDoor3","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.DG70Door3","DisplayCategory","MechD")
GaistUtils.doParam("Base.DG70FrontSideWindow3","DisplayCategory","MechG")
GaistUtils.doParam("Base.DG70RearSideWindow3","DisplayCategory","MechG")
GaistUtils.doParam("Base.DG70Windshield3","DisplayCategory","MechG")
GaistUtils.doParam("Base.DG70WindshieldRear3","DisplayCategory","MechG")
GaistUtils.doParam("Base.DG70FrontBumper0","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70RearBumper0","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70FrontBumperA","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70FrontBumperB","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70FrontBumperC","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70RearBumperA","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70RearBumperB","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70RearBumperC","DisplayCategory","MechBump")
GaistUtils.doParam("Base.DG70WindshieldArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.DG70WindshieldRearArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.DG70DoorArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.DG70Spoiler0","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.DG70Spoiler1","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.DG70RTRoof0","DisplayCategory","MechBod")
end

--'74 AM General M151A2
--https://steamcommunity.com/sharedfiles/filedetails/?id=2785549133
if getActivatedMods():contains("74amgeneralM151A2") then
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.V102Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.M151A2Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M151A2Extra2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M151A2EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.M151A2Tarp1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M151A2CarSeatFront2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.M151A2CarSeatRear2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.M151A2Bumper1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M998Bullbar1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M151A2DefaultInterior2","DisplayCategory","MechBod")
GaistUtils.doParam("Base.M151A2Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M151A2SideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M151A2LeftDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M151A2RightDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M151A2WindshieldArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M151A2CabArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M151A2BarrierLeft1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M151A2BarrierRight1_Item","DisplayCategory","MechArm")
end

--'78 AM General M35A2 + M49A2C + M50A3
--https://steamcommunity.com/sharedfiles/filedetails/?id=2799152995
if getActivatedMods():contains("78amgeneralM35A2") then
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.V103Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.V103Axle2","DisplayCategory","MechS")
GaistUtils.doParam("Base.M35A2Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M49A2CTrunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M35A2Muffler1_Item","DisplayCategory","MechM")
GaistUtils.doParam("Base.M35A2EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.M35A2Tarp1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M35A2Tarp2_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M35A2Tarp3_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M35A2tailgate2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M35A2CarSeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.M35A2Bumper1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M35A2Grille1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M35A2HardCover1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M35A2SoftCover2_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M35A2Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M35A2SideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M35A2Door2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M35A2WindshieldArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M35A2DoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M35A2Mudflaps1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M49PumpDoor2","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.500_Water_Tank2","DisplayCategory","MechWT")
end

--'80 Kawasaki Kz1000 Police
--https://steamcommunity.com/sharedfiles/filedetails/?id=2818847163
if getActivatedMods():contains("80kz1000") then
GaistUtils.doParam("Base.KZ1Kstorage3","DisplayCategory","MechStor")
GaistUtils.doParam("Base.KZ1Ksidestorage3","DisplayCategory","MechStor")
GaistUtils.doParam("Base.KZ1Kextra3","DisplayCategory","MechStor")
GaistUtils.doParam("Base.KZ1KstorageLid","DisplayCategory","MechStor")
GaistUtils.doParam("Base.KZ1KsidestorageLid","DisplayCategory","MechStor")
GaistUtils.doParam("Base.KZ1Kmuffler","DisplayCategory","MechM")
GaistUtils.doParam("Base.KZ1KoldTire","DisplayCategory","MechTire")
GaistUtils.doParam("Base.KZ1KnormalTire","DisplayCategory","MechTire")
GaistUtils.doParam("Base.KZ1KmodernTire","DisplayCategory","MechTire")
GaistUtils.doParam("Base.KZ1KgasTank","DisplayCategory","MechGT")
GaistUtils.doParam("Base.KZ1Kseat","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.KZ1Kwindshield3","DisplayCategory","MechG")
GaistUtils.doParam("Base.Hat_CHiPsHelmet","DisplayCategory","ClothH")
end

--'82 Oshkosh M911 + Military Semi-Trailers
--https://steamcommunity.com/sharedfiles/filedetails/?id=2618213077
if getActivatedMods():contains("82oshkoshM911") then
--Bonus Shirts
GaistUtils.doParam("Base.TShirt_OshkoshGray","DisplayCategory","ClothT")
GaistUtils.doParam("Base.TShirt_OshkoshBlack","DisplayCategory","ClothT")
GaistUtils.doParam("Base.TShirt_bknht","DisplayCategory","ClothT")
GaistUtils.doParam("Base.Hoodie_OshkoshBlack","DisplayCategory","ClothT")
GaistUtils.doParam("Base.HoodieDOWN_OshkoshBlack","DisplayCategory","ClothT")
GaistUtils.doParam("Base.Hoodie_OshkoshGray","DisplayCategory","ClothT")
GaistUtils.doParam("Base.HoodieDOWN_OshkoshGray","DisplayCategory","ClothT")
--Mechanics Parts
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.V100Tires2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.V100Axle2","DisplayCategory","MechS")
GaistUtils.doParam("Base.V100AxleSmall2","DisplayCategory","MechS")
GaistUtils.doParam("Base.M911Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M967SmallTrunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M911Toolbox2","DisplayCategory","MechStor")
GaistUtils.doParam("Base.M911EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.M911TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M127TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M128TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M129TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M967TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.IsoContainerTrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M911CarFrontDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M911Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M911SideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M911WindshieldRear2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M911CarFrontDoorArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M911WindshieldArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M911WindshieldRearArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M911Bullbar0","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M911Bullbar1","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M911Muffler","DisplayCategory","MechM")
GaistUtils.doParam("Base.M911Mudflaps","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.Seat0","DisplayCategory","MechSeat")
end

--'83 AM General M923
--https://steamcommunity.com/sharedfiles/filedetails/?id=2811383142
if getActivatedMods():contains("83amgeneralM923") then
GaistUtils.doParam("Base.Seat0","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.M923Axle2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.M923Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M923Flatbed2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M923Extra2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M923Muffler1_Item","DisplayCategory","MechM")
GaistUtils.doParam("Base.M923EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.M923FlatbedStakes1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M923Tailgate2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M923Trunkdoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M923FrontSeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.M923RearSeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.M923Bumper1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M923Bumper2_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M923HardCover1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M923SoftCover2_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M923Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M923SideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M923Gunport2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M923Door2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M923WindshieldArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M923DoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M923GuntruckArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M923Mudflaps1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M923SpareMount1_Item","DisplayCategory","MechAcc")
end

--'84 Mercedes Benz W460
--https://steamcommunity.com/sharedfiles/filedetails/?id=2805630347
if getActivatedMods():contains("84merc") then
GaistUtils.doParam("Base.W460NormalTire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.W460WideTire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.W460ModernTire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.W460Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.W4602Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.W4604Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.W460Extra2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.W460Roofrack1_Item","DisplayCategory","MechStor")
GaistUtils.doParam("Base.W460Bodykit1_Item","DisplayCategory","MechBod")
GaistUtils.doParam("Base.W460CarFrontDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.W460CarRearDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.W460CarFrontDoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.W460CarRearDoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.W460WindshieldArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.W460WindshieldRearArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.W460WindowArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.W460EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.W460TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.W460CarSeatFront2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.W460CarSeatRear2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.W460Bumper1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.W460Bullbar2_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.W460Bullbar3_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.W460BumperRear1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.W460Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.W460SideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.W460RearWindshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.W460Mudflaps1_Item","DisplayCategory","MechAcc")
end

--'85 Mercedes Benz W123
--https://steamcommunity.com/sharedfiles/filedetails/?id=2469388752
if getActivatedMods():contains("85merc") then
--Mechanics - Storage
GaistUtils.doParam("Base.mercroofrack1","DisplayCategory","MechStor")
GaistUtils.doParam("Base.mercroofrack2","DisplayCategory","MechStor")
GaistUtils.doParam("Base.mercroofrack3","DisplayCategory","MechStor")
end

--'86 Ford Econoline E-150 with Mutt Cutts van
--https://steamcommunity.com/sharedfiles/filedetails/?id=2870394916
if getActivatedMods():contains("86fordE150")
or getActivatedMods():contains("86fordE150dnd") then
GaistUtils.doParam("Base.E150Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.E150dndTrunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.E150slideTrunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.E150longTrunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.E150CarFrontDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.E150CarSlideDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.E150EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.E150TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.E150CarSeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.E150FrontBumper2","DisplayCategory","MechBump")
GaistUtils.doParam("Base.E150RearBumper2","DisplayCategory","MechBump")
GaistUtils.doParam("Base.E150Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.E150SideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.E150RearWindshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.E150WindshieldArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.E150WindshieldRearArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.E150DoorArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.E150HoodFur","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.E150TrunkDoorFur","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.E150DoorFur","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.E150ChassisFur","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.E150LegFur","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.E150Divider","DisplayCategory","MechAcc")
end

--'86 Oshkosh P19A + Military Trailers
--https://steamcommunity.com/sharedfiles/filedetails/?id=2566953935
if getActivatedMods():contains("86oshkoshP19A") then
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.P19ACarFrontDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.P19ARoofHatch2","DisplayCategory","MechD")
GaistUtils.doParam("Base.P19ABigTrunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.P19ASmallTrunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.P19ARoofrack1_Item","DisplayCategory","MechStor")
GaistUtils.doParam("Base.P19ACarSeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.P19AEngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.P19ATrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.P19AWindshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.P19ASideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.P19ACarFrontDoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.P19AWindshieldArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.P19AFenderLeft1_Item","DisplayCategory","MechBod")
GaistUtils.doParam("Base.P19AFenderLeft2_Item","DisplayCategory","MechBod")
GaistUtils.doParam("Base.P19AFenderRight1_Item","DisplayCategory","MechBod")
GaistUtils.doParam("Base.P19AFenderRight2_Item","DisplayCategory","MechBod")
GaistUtils.doParam("Base.P19AFenderRight3_Item","DisplayCategory","MechBod")
GaistUtils.doParam("Base.P19ASpareMount1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.P19ASpareMount2_Item","DisplayCategory","MechAcc")
end

--'87 TOYOTA Land Cruiser FJ60
--https://steamcommunity.com/sharedfiles/filedetails/?id=2489148104
if getActivatedMods():contains("87cruiser") then
--Mechanics - Storage
GaistUtils.doParam("Base.cruiserRoofrack1","DisplayCategory","MechStor")
GaistUtils.doParam("Base.cruiserRoofrack2","DisplayCategory","MechStor")
GaistUtils.doParam("Base.cruiserRoofrack3","DisplayCategory","MechStor")
end

--'89 LAND ROVER Defender 110
--https://steamcommunity.com/sharedfiles/filedetails/?id=2441990998
if getActivatedMods():contains("89def110") then
--Mechanics - Storage
GaistUtils.doParam("Base.def110SpareCompartment1","DisplayCategory","MechStor")
GaistUtils.doParam("Base.def110SpareCompartment2","DisplayCategory","MechStor")
GaistUtils.doParam("Base.def110SpareCompartment3","DisplayCategory","MechStor")
end

--'92 AM General M998 + M101A3 Cargo trailer
--https://steamcommunity.com/sharedfiles/filedetails/?id=2642541073
if getActivatedMods():contains("92amgeneralM998") then
GaistUtils.doParam("Base.M101A3Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M101A3Extra2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M101A3TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M101A3TrunkDoorTwo2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M101A3Cover1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M101A3Tarp1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.leafSuspension2","DisplayCategory","MechS")
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.V101Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.M998Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M998Extra2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M998Roofrack1_Item","DisplayCategory","MechStor")
GaistUtils.doParam("Base.M998TrunkBarrier1_Item","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M998TrunkBarrier2_Item","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M998SpareMount_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M998SpareTireMount_Item","DisplayCategory","MechTire")
GaistUtils.doParam("Base.M998CarFrontDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M998CarRearDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M998CarFrontDoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M998CarRearDoorArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M998WindshieldArmor1_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M998WindshieldArmor2_Item","DisplayCategory","MechArm")
GaistUtils.doParam("Base.M998EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.M998TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M998BackCover1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M998CarSeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.M998Muffler1_Item","DisplayCategory","MechM")
GaistUtils.doParam("Base.M998Muffler2_Item","DisplayCategory","MechM")
GaistUtils.doParam("Base.M998Bullbar1_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M998Bullbar2_Item","DisplayCategory","MechBump")
GaistUtils.doParam("Base.M998Windshield2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M998SideWindow2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M998Mudflaps1_Item","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.M998DefaultInterior2","DisplayCategory","MechBod")
end

--'92 NISSAN Skyline GT-R (R32)
--https://steamcommunity.com/sharedfiles/filedetails/?id=2846036306
if getActivatedMods():contains("92nissanGTR") then
GaistUtils.doParam("Base.R32Tire0","DisplayCategory","MechTire")
GaistUtils.doParam("Base.R32Tire1","DisplayCategory","MechTire")
GaistUtils.doParam("Base.R32Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.R32TireA","DisplayCategory","MechTire")
GaistUtils.doParam("Base.R32Trunk3","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.R32Door3","DisplayCategory","MechD")
GaistUtils.doParam("Base.R32Bumper0","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32Bumper1","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32Bumper2","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32Bumper3","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32BumperA","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32BumperRear0","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32BumperRear1","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32BumperRear2","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32BumperRear3","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32BumperRearA","DisplayCategory","MechBump")
GaistUtils.doParam("Base.R32Sideskirts1","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32Sideskirts2","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32Sideskirts3","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32SideskirtsA","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32Spoiler0","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32Spoiler1","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32Spoiler2","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32Spoiler3","DisplayCategory","MechAcc")
GaistUtils.doParam("Base.R32EngineDoor0","DisplayCategory","MechHood")
GaistUtils.doParam("Base.R32TrunkDoor3","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.R32FrontSeat3","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.R32RearSeat3","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.R32muffler0","DisplayCategory","MechM")
GaistUtils.doParam("Base.R32muffler1","DisplayCategory","MechM")
GaistUtils.doParam("Base.R32Windshield3","DisplayCategory","MechG")
GaistUtils.doParam("Base.R32WindshieldRear3","DisplayCategory","MechG")
GaistUtils.doParam("Base.R32FrontSideWindow3","DisplayCategory","MechG")
GaistUtils.doParam("Base.R32RearSideWindow3","DisplayCategory","MechG")
GaistUtils.doParam("Base.R32DoorArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.R32RearWindowArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.R32WindshieldArmor","DisplayCategory","MechArm")
GaistUtils.doParam("Base.R32WindshieldRearArmor","DisplayCategory","MechArm")
end

--Halo M12 Warthog
--https://steamcommunity.com/sharedfiles/filedetails/?id=2682411284
if getActivatedMods():contains("haloM12warthog") then
GaistUtils.doParam("Base.Hat_MCHelmet","DisplayCategory","ClothHA")
GaistUtils.doParam("Base.V100Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.M12Tire2","DisplayCategory","MechTire")
GaistUtils.doParam("Base.M12Trunk2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M12Extra2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M12LeftDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M12RightDoor2","DisplayCategory","MechD")
GaistUtils.doParam("Base.M12TrunkDoor2","DisplayCategory","MechTrunk")
GaistUtils.doParam("Base.M12Window2","DisplayCategory","MechG")
GaistUtils.doParam("Base.M12EngineDoor2","DisplayCategory","MechHood")
GaistUtils.doParam("Base.M12CarSeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.M12Muffler2","DisplayCategory","MechM")
GaistUtils.doParam("Base.M12Windshield2","DisplayCategory","MechG")
end