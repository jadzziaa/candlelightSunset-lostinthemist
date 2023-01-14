require 'Items/ProceduralDistributions'

table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, "Base.357Box")
table.insert(ProceduralDistributions.list.GunStoreAmmunition.items, 22)

table.insert(ProceduralDistributions.list.GunStoreShelf.items, "Base.357Box")
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 2.7)

table.insert(ProceduralDistributions.list.PoliceStorageGuns.items, "Base.357Box")
table.insert(ProceduralDistributions.list.PoliceStorageGuns.items, 2.7)

table.insert(ProceduralDistributions.list.GunStoreDisplayCase.items, "Base.357Box")
table.insert(ProceduralDistributions.list.GunStoreDisplayCase.items, 17)

local items = {}
items["Base.AUGA9MM"] = .1
items["Base.MagAUGA9MM"] = .1
items["Base.AA12"] = .00001
items["Base.MagAA12"] = .0001
items["Base.M40"] = 1
items["Base.ColtPython"] = 1
items["Base.M60"] = .00001
items["Base.MagM60"] = .0001
items["Base.M249"] = .000001
items["Base.MagM249"] = .00001
items["Base.Striker"] = .0001

local gunSpawns =
{
	"GunStoreDisplayCase",
	"PoliceStorageGuns",
	"ArmyStorageGuns",
	"PawnShopGuns",
}

for item,chance in pairs(items) do
	for _,spawn in pairs(gunSpawns) do
		table.insert(ProceduralDistributions.list[spawn].items, item)
		table.insert(ProceduralDistributions.list[spawn].items, chance)
	end
end