--Marching Powder (build 41)
--https://steamcommunity.com/sharedfiles/filedetails/?id=2181096301
if getActivatedMods():contains("marchingpowder") 
or getActivatedMods():contains("marchingpowder - no bricks spawn") then
GaistUtils.doParam("Base.PA_BewareMag1","DisplayCategory","LitR");
GaistUtils.doParam("Base.PA_BewareMag2","DisplayCategory","LitR");
GaistUtils.doParam("Base.pa_CokeEnvelope","DisplayCategory","Container");
GaistUtils.doParam("Base.pa_CokeBrick2","DisplayCategory","Drugs");
end