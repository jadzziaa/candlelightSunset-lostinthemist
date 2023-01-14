--Compass Mod (build 41)
--https://steamcommunity.com/sharedfiles/filedetails/?id=2249366455
if getActivatedMods():contains("Compass") then
GaistUtils.doParam("Base.Compass","DisplayCategory","Tool");
GaistUtils.doParam("Base.Compass2","DisplayCategory","Tool");
GaistUtils.doParam("Base.CliponCompass","DisplayCategory","Tool");
GaistUtils.doParam("Base.WristCompass_Right","DisplayCategory","ClothA");
GaistUtils.doParam("Base.WristCompass_Left","DisplayCategory","ClothA");
end