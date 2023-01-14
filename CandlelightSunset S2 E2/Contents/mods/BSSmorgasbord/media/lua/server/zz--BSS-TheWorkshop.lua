--The Workshop
--https://steamcommunity.com/sharedfiles/filedetails/?id=2680473910
if getActivatedMods():contains("TheWorkshop(new version)") then
GaistUtils.doParam("Base.NailGun","DisplayCategory","TWepR")
GaistUtils.doParam("Base.CordlessDrill","DisplayCategory","TWepM")
end

--Scrap Weapons!
--https://steamcommunity.com/sharedfiles/filedetails/?id=2122265954
if getActivatedMods():contains("ScrapWeapons(new version)") then
GaistUtils.doParam("Base.SalvagedPipeWrench","DisplayCategory","TWepM")
GaistUtils.doParam("Base.SalvagedCrowbar","DisplayCategory","TWepM")
GaistUtils.doParam("Base.SalvagedSledgehammer","DisplayCategory","TWepM")
GaistUtils.doParam("Base.SalvagedClimbingAxe","DisplayCategory","TWepM")
end