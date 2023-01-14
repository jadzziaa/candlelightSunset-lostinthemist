print("[UdderlyGWPSupport] Initializing Udderly Attachments Support..")
UA = UA or {}
UA.GunAddingFunctions = UA.GunAddingFunctions or {}
UA.AssignmentFunctions = UA.AssignmentFunctions or {}

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.Revolvers.Bullets22, \"GWP.Heritage22Revolver\")")
table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.Revolvers.Bullets44, \"GWP.ColtPeacemaker\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.SARs.Bullets308, \"GWP.HKG3\")")
table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.SARs.Bullets308, \"GWP.PSG1\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.BoltActions.Bullets44, \"GWP.Model44\")")
table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.BoltActions.Bullets44, \"GWP.Winchester1894\")")
table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.BoltActions.Bullets45, \"GWP.BigBoy45ACP\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.SMGs.Bullets45, \"GWP.Mac10SD\")")
table.insert(UA.AssignmentFunctions, "table.insert(UA.Attachments.Silencer[4], \"GWP.Mac10SD\")")
table.insert(UA.AssignmentFunctions, "table.insert(UA.Attachments.MetalPipeSilencer[4], \"GWP.Mac10SD\")")
table.insert(UA.AssignmentFunctions, "table.insert(UA.Attachments.TorchSilencer[4], \"GWP.Mac10SD\")")
table.insert(UA.AssignmentFunctions, "table.insert(UA.Attachments.WaterBottleSilencer[4], \"GWP.Mac10SD\")")
table.insert(UA.AssignmentFunctions, "table.insert(UA.Attachments.OilFilterSuppressor2[4], \"GWP.Mac10SD\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.SMGs.Bullets45, \"GWP.ThompsonM1A1\")")

table.insert(UA.GunAddingFunctions, "table.insert(UA.Guns.Shotguns.Military, \"GWP.R870Police\")")