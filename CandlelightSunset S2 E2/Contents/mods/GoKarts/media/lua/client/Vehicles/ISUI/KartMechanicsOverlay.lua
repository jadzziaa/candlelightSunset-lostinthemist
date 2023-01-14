--[[*]]-- Generated automagically by RotatorsLib --[[*]]--

require "Vehicles/ISUI/ISCarMechanicsOverlay"

local function BaseGoKartMechanicsOverlay()
	for _,name in ipairs({ "Battery", "Engine", "GasTank", "Muffler", "TireFrontLeft", "TireFrontRight", "TireRearLeft", "TireRearRight" }) do
		ISCarMechanicsOverlay.PartList[name] = ISCarMechanicsOverlay.PartList[name] or {}
		ISCarMechanicsOverlay.PartList[name].vehicles = ISCarMechanicsOverlay.PartList[name].vehicles or {}
	end

	ISCarMechanicsOverlay.CarList["Base.GoKart"] = { imgPrefix = "GoKart_", x = 10, y = 0 }

	ISCarMechanicsOverlay.PartList.Battery.vehicles.GoKart_ = { x = 120, y = 165, x2 = 170, y2 = 200 }
	ISCarMechanicsOverlay.PartList.Engine.vehicles.GoKart_ = { x = 165, y = 325, x2 = 195, y2 = 350 }
	ISCarMechanicsOverlay.PartList.GasTank.vehicles.GoKart_ = { x = 165, y = 290, x2 = 195, y2 = 325 }
	ISCarMechanicsOverlay.PartList.Muffler.vehicles.GoKart_ = { x = 110, y = 350, x2 = 190, y2 = 390 }
	ISCarMechanicsOverlay.PartList.TireFrontLeft.vehicles.GoKart_ = { x = 75, y = 225, x2 = 94, y2 = 260 }
	ISCarMechanicsOverlay.PartList.TireFrontRight.vehicles.GoKart_ = { x = 195, y = 225, x2 = 215, y2 = 260 }
	ISCarMechanicsOverlay.PartList.TireRearLeft.vehicles.GoKart_ = { x = 70, y = 350, x2 = 90, y2 = 385 }
	ISCarMechanicsOverlay.PartList.TireRearRight.vehicles.GoKart_ = { x = 200, y = 350, x2 = 220, y2 = 385 }
end

Events.OnInitWorld.Add(BaseGoKartMechanicsOverlay)
