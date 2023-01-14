print("[UdderlySupport CJ] Looking for Udderly Ammo Crafting..")
if UdderlyAmmoCrafting and UdderlyAmmoCrafting.RecipeAssignments then
	print("[UdderlySupport CJ] Udderly Ammo Crafting detected, magazine recipes.")
	table.insert(UdderlyAmmoCrafting.RecipeAssignments[2], "CraftMagAA12")
	table.insert(UdderlyAmmoCrafting.RecipeAssignments[2], "CraftMagAUGA9MM")
	table.insert(UdderlyAmmoCrafting.RecipeAssignments[2], "CraftMagM60")
	table.insert(UdderlyAmmoCrafting.RecipeAssignments[2], "CraftMagM249")
end