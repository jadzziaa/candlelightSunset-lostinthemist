print("[UdderlyAmmoCrafting] Initializing Database..")

UdderlyAmmoCrafting={}

UdderlyAmmoCrafting.Magazines=
{
	"Magazine_UdderlyAmmoCrafting_1_Ammo",
	"Magazine_UdderlyAmmoCrafting_2_Magazine",
	"Magazine_UdderlyAmmoCrafting_3_Gunpowder",
}

UdderlyAmmoCrafting.RecipeAssignments=
{
	--Vol.1
	{
		"Craft22Round",
		"Craft9Round",
		"Craft38Round",
		"Craft45Round",
		"Craft556Round",
		"Craft223Round",
		"Craft44Round",
		"Craft12Shell",
		"Craft308Round",
		"Craft762Round",
	},
	--Vol.2
	{
		"Craft22Mag10",
		"Craft9Mag13",
		"Craft9Mag15",
		"Craft9Mag17",
		"Craft9Mag20",
		"Craft9Mag30",
		"Craft45Mag7",
		"Craft44Mag8",
		"Craft223Mag3",
		"Craft223Mag20",
		"Craft308Mag20",
		"Craft308Mag3",
		"Craft556Mag30",
		"Craft762Mag30",
	},
	--Vol.3
	{
		"CraftGunpowder",
		"CraftCharcoal",
		"Scrap22Round",
		"Scrap9Round",
		"Scrap38Round",
		"Scrap45Round",
		"Scrap556Round",
		"Scrap223Round",
		"Scrap44Round",
		"Scrap12Shell",
		"Scrap308Round",
		"Scrap762Round",
	},
}

--Recipe Functions

	--OnCreate

function UdderlyAmmoCrafting.IgnoreCount(items, result, player)
	result:setCount(1)
end

function UdderlyAmmoCrafting.OnCreateGiveScrap(items, result, player)
	player:getInventory():AddItem("Base.ScrapMetal")
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits50PercentChance1(items, result, player)
	if ZombRand(2) == 1 then
		player:getInventory():AddItem("Base.ScrapMetalBits")
	end
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits1(items, result, player)
	player:getInventory():AddItem("Base.ScrapMetalBits")
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits2(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 2)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits3(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 3)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits4(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 4)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits5(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 5)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits6(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 6)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits7(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 7)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits8(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 8)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits9(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 9)
end

function UdderlyAmmoCrafting.OnCreateGiveScrapBits10(items, result, player)
	player:getInventory():AddItems("Base.ScrapMetalBits", 10)
end


	--OnGiveXP

function UdderlyAmmoCrafting.ReloadingXP1(recipe, ingredients, result, player)
	player:getXp():AddXP(Perks.Reloading, 1);
end