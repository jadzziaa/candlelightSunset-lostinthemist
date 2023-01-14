--Twinkies & Twinkies Van
--https://steamcommunity.com/sharedfiles/filedetails/?id=2838950860
if getActivatedMods():contains("TwinkiesVan") then
GaistUtils.doParam("Base.TWBX","DisplayCategory","FoodN");
GaistUtils.doParam("Base.Twinkie","DisplayCategory","FoodN");
GaistUtils.doParam("Base.TWBOpened","DisplayCategory","Junk");
GaistUtils.doParam("Base.Snoball","DisplayCategory","FoodN");
GaistUtils.doParam("Base.SnoballPacketEmpty","DisplayCategory","Junk");
GaistUtils.doParam("Base.SnoballPacket","DisplayCategory","FoodN");
end