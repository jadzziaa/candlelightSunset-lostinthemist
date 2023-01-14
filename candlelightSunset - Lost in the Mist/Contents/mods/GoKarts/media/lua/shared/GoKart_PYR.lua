require('PaintVehicleConfig')

if getActivatedMods():contains("PaintYourRide") and PaintVehicleConfig then
    PaintVehicleConfig.addVehicle("Base.GoKart", 7)
end