--Food Delivery Riders
--https://steamcommunity.com/sharedfiles/filedetails/?id=2832431168
if getActivatedMods():contains("|FoodDeliveryRiders|") then
--Clothing - Bag
GaistUtils.doParam("Base.Bag_Foodpanda","DisplayCategory","ClothB");
GaistUtils.doParam("Base.Bag_Grab","DisplayCategory","ClothB");
GaistUtils.doParam("Base.Bag_Robinhood","DisplayCategory","ClothB");
GaistUtils.doParam("Base.Bag_Shopee","DisplayCategory","ClothB");

--Clothing - Helmet
GaistUtils.doParam("Base.Hat_FoodpandaHelmetFULL","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.Hat_GrabHelmetFULL","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.Hat_RobinhoodHelmetFULL","DisplayCategory","ClothHelm");
GaistUtils.doParam("Base.Hat_ShopeeHelmetFULL","DisplayCategory","ClothHelm");

--Clothing - Torso (Outerwear
GaistUtils.doParam("Base.Jacket_Foodpanda","DisplayCategory","ClothTO");
GaistUtils.doParam("Base.Jacket_Grab","DisplayCategory","ClothTO");
GaistUtils.doParam("Base.Jacket_Robinhood","DisplayCategory","ClothTO");
GaistUtils.doParam("Base.Jacket_Shopee","DisplayCategory","ClothTO");
end