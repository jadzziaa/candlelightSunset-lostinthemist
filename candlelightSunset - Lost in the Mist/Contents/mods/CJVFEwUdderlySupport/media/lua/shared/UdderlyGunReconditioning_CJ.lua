print("[UdderlySupport CJ] Looking for Udderly Gun Reconditioning..")
if UdderlyGunReconditioning and UdderlyGunReconditioning.RecipeAssignments then
	print("[UdderlySupport CJ] Udderly Gun Reconditioning detected, adding reconditioning recipes.")
	table.insert(UdderlyGunReconditioning.RecipeAssignments[2], "ReconditionColtPython")
	table.insert(UdderlyGunReconditioning.RecipeAssignments[4], "ReconditionAUGA9MM")
	table.insert(UdderlyGunReconditioning.RecipeAssignments[5], "ReconditionAA12")
	table.insert(UdderlyGunReconditioning.RecipeAssignments[5], "ReconditionStriker")
	table.insert(UdderlyGunReconditioning.RecipeAssignments[6], "ReconditionM40")
	table.insert(UdderlyGunReconditioning.RecipeAssignments[8], "ReconditionM60")
	table.insert(UdderlyGunReconditioning.RecipeAssignments[8], "ReconditionM249")
end