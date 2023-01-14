print("[UdderlySupport CJ] Initializing Udderly Attachments Support..")
UA = UA or {}
UA.GunAddingFunctions = UA.GunAddingFunctions or {}
--Creates the 357 revolver table if necessary and adds it either way.
table.insert(UA.GunAddingFunctions, "if not UA.Guns.Revolvers.Bullets357 then UA.Guns.Revolvers.Bullets357 = { \"ColtPython\" } else table.insert(UA.Guns.Revolvers.Bullets357, \"ColtPython\") end")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.Shotguns.Military, \"AA12\")")
table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.Shotguns.Military, \"Striker\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.ARs.Bullets9, \"AUGA9MM\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.BoltActions.Bullets308, \"M40\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.LMGs.Bullets308, \"M60\")")
table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.LMGs.Bullets556, \"M249\")")