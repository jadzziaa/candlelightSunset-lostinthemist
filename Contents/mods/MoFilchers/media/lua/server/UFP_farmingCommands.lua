local function noise(message)
    SFarmingSystem.instance:noise(message)
end

local function getPlantAt(x, y, z)
	return SFarmingSystem.instance:getLuaObjectAt(x, y, z)
end

function SFarmingSystemCommands.plow(player, args)
	local gridSquare = getCell():getGridSquare(args.x, args.y, args.z)
	if gridSquare then
		local plant = getPlantAt(args.x, args.y, args.z)
		if plant then
			SFarmingSystem.instance:removePlant(plant, player)
		end
		SFarmingSystem.instance:plow(gridSquare)
	else
		noise('no gridSquare at '..args.x..','..args.y..','..args.z)
	end
end

function SFarmingSystemCommands.removePlant(player, args)
	local plant = getPlantAt(args.x, args.y, args.z)
	if plant then
		SFarmingSystem.instance:removePlant(plant, player)
	else
		noise('no plant found at '..args.x..','..args.y..','..args.z)
	end
end

function SFarmingSystemCommands.harvest(player, args)
	local plant = getPlantAt(args.x, args.y, args.z)
	if plant and plant:canHarvest() then
		SFarmingSystem.instance:harvest(plant, player)
	else
		noise('no plant found at '..args.x..','..args.y..','..args.z)
	end
end