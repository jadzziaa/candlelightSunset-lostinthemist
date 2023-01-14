require "Items/SuburbsDistributions";

function GetSaucepan_OnCreate(items, result, player)
    player:getInventory():AddItem("Saucepan");
end

function GetEmptyBarrel_OnCreate(items, result, player)
    player:getInventory():AddItem("WoodenBarrel");
end

function GetSmashedBarrel_OnCreate(items, result, player)
    player:getInventory():AddItem("Plank");
	player:getInventory():AddItem("Plank");
	player:getInventory():AddItem("Plank");
	player:getInventory():AddItem("Plank");
	player:getInventory():AddItem("Plank");
	player:getInventory():AddItem("LeatherStripsDirty");
	player:getInventory():AddItem("LeatherStripsDirty");
	player:getInventory():AddItem("LeatherStripsDirty");
	player:getInventory():AddItem("Wire");
end

function GetYeast_OnCreate(items, result, player)
    player:getInventory():AddItem("Yeast");
end

function GetSmashedBioGas_OnCreate(items, result, player)
    player:getInventory():AddItem("MetalPipe");
	player:getInventory():AddItem("MetalPipe");
	player:getInventory():AddItem("PropaneTankEmpty");
	player:getInventory():AddItem("UnusableMetal");
	player:getInventory():AddItem("UnusableMetal");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
end

function GetSmashedBioGasTwo_OnCreate(items, result, player)
    player:getInventory():AddItem("MetalPipe");
	player:getInventory():AddItem("UnusableMetal");
	player:getInventory():AddItem("UnusableMetal");
	player:getInventory():AddItem("UnusableMetal");
	player:getInventory():AddItem("UnusableMetal");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
	player:getInventory():AddItem("Screws");
end

function GetEmptyRefinery_OnCreate(items, result, player)
    player:getInventory():AddItem("BioGasRefinery");
end

function Recipe.OnCreate.OpenJarNahhui(items, result, player)
    local jar = items:get(0);
    local aged = jar:getAge() / jar:getOffAgeMax();

    result:setAge(result:getOffAgeMax() * aged);

    player:getInventory():AddItem("Base.EmptyJar");
	player:getInventory():AddItem("Base.JarLid");

--    print("you're new food have age " .. result:getAge());
end