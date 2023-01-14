--Basements
--https://steamcommunity.com/sharedfiles/filedetails/?id=2849247394
if getActivatedMods():contains("Basements") 
or getActivatedMods():contains("BasementMod") then
GaistUtils.doParam("BasementMod.BasementsMag_small","DisplayCategory","LitR");
GaistUtils.doParam("BasementMod.BasementsMag_medium","DisplayCategory","LitR");
GaistUtils.doParam("BasementMod.BasementsMag_large","DisplayCategory","LitR");
end