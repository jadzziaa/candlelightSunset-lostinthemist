print("[UdderlySupport GWP] Looking for Udderly Ammo Crafting..")
if UdderlyAmmoCrafting and UdderlyAmmoCrafting.RecipeAssignments then
	print("[UdderlySupport GWP] Udderly Ammo Crafting detected, magazine recipes.")
	table.insert(UdderlyAmmoCrafting.RecipeAssignments[2], "Craft45Clip30")
	table.insert(UdderlyAmmoCrafting.RecipeAssignments[2], "Craft45Clip30Mac10")
	table.insert(UdderlyAmmoCrafting.RecipeAssignments[2], "CraftHK308Mag")
end