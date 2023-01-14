--Doomsday MotorHome
--https://steamcommunity.com/sharedfiles/filedetails/?id=2795611320
if getActivatedMods():contains("Armored_Motorhome") 
or getActivatedMods():contains("Armored_MotorhomeMP") then
GaistUtils.doParam("Herbalist.BlackSageCataplasm","DisplayCategory","Medical")
GaistUtils.doParam("Base.housecarpartbullbar1","DisplayCategory","MechBump")
GaistUtils.doParam("Base.housecarpartbullbar2","DisplayCategory","MechBump")
GaistUtils.doParam("Base.housecarpartbullbar3","DisplayCategory","MechBump")
GaistUtils.doParam("Base.housecarpartgun11","DisplayCategory","MechWep")
GaistUtils.doParam("Base.housecarpartgun12","DisplayCategory","MechWep")
GaistUtils.doParam("Base.housecarpartgun13","DisplayCategory","MechWep")
end

--Armored MH MkII
--https://steamcommunity.com/sharedfiles/filedetails/?id=2850098970
if getActivatedMods():contains("Armored_Motorhome_MkII") then
GaistUtils.doParam("Base.MH_MkII_shovel1","DisplayCategory","MechBump")
GaistUtils.doParam("Base.MH_MkII_shovel2","DisplayCategory","MechBump")
GaistUtils.doParam("Base.MH_MkII_shovel3","DisplayCategory","MechBump")
GaistUtils.doParam("Base.MH_MkII_guntower1","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_guntower2","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_guntower3","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_railgun1","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_railgun2","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_railgun3","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_railgunshelf1","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_railgunshelf2","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_railgunshelf3","DisplayCategory","MechWep")
GaistUtils.doParam("Base.MH_MkII_batterypack1","DisplayCategory","MechBat")
GaistUtils.doParam("Base.MH_MkII_batterypack2","DisplayCategory","MechBat")
GaistUtils.doParam("Base.MH_MkII_batterypack3","DisplayCategory","MechBat")
GaistUtils.doParam("Base.MH_MkII_waterbox1","DisplayCategory","MechWT")
GaistUtils.doParam("Base.MH_MkII_waterbox2","DisplayCategory","MechWT")
GaistUtils.doParam("Base.MH_MkII_waterbox3","DisplayCategory","MechWT")
GaistUtils.doParam("Base.MH_MkIIgastank1","DisplayCategory","MechGT")
GaistUtils.doParam("Base.MH_MkIIgastank2","DisplayCategory","MechGT")
GaistUtils.doParam("Base.MH_MkIIgastank3","DisplayCategory","MechGT")
GaistUtils.doParam("Base.MH_MkIISeat1","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.MH_MkIISeat2","DisplayCategory","MechSeat")
GaistUtils.doParam("Base.MH_MkIISeat3","DisplayCategory","MechSeat")
end

--MH MkII Trailer
--https://steamcommunity.com/sharedfiles/filedetails/?id=2854537901
if getActivatedMods():contains("Armored_Motorhome_MkII") then
GaistUtils.doParam("Base.BigtrailerGasTank1","DisplayCategory","MechGT")
GaistUtils.doParam("Base.BigtrailerGasTank2","DisplayCategory","MechGT")
GaistUtils.doParam("Base.BigtrailerGasTank3","DisplayCategory","MechGT")
end