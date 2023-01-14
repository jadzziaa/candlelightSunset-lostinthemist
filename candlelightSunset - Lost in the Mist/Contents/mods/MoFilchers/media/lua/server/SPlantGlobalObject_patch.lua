--***********************************************************
--**                    THE INDIE STONE                    **
--***********************************************************

-----------------------------------------------------------------------
--                          FARMING MOD                              --
--                      CODE BY ROBERT JOHNSON                       --
--                       TEXTURES BY THUZTOR                         --
-----------------------------------------------------------------------
--                          OFFICIAL TOPIC                           --
--  http://www.theindiestone.com/community/viewtopic.php?f=33&t=8675 --
--                                                                   --
-----------------------------------------------------------------------

if isClient() then return end

local updateCodeCache = {}
local function getUpdateCode(updateCode)
    local cacheFunction = updateCodeCache[updateCode]
    if updateCodeCache[updateCode] then
        return cacheFunction
    end

    local args = MoFilchers.split(updateCode, ".")
    if #args == 2 then
        local module = _G[args[1]]
        if module then
            local newFunction = module[args[2]]
            if newFunction then
                updateCodeCache[updateCode] = newFunction
                return newFunction
            end
        end
    end
end

-- make the plant dry (no more water !)
function SPlantGlobalObject:dryThis()
	local drySprite = farming_vegetableconf.props[self.typeOfSeed].drySprite
	if not drySprite then
		self:setSpriteName("vegetation_farming_01_5")
	end

	self:setSpriteName(drySprite)
	self.state = "dry"
	self:setObjectName(farming_vegetableconf.getObjectName(self))
	self:deadPlant()
end

function SPlantGlobalObject:rottenThis()
	local rotSprite = farming_vegetableconf.props[self.typeOfSeed].rotSprite
	if not rotSprite then
		rotSprite = farming_vegetableconf.props[self.typeOfSeed].drySprite
		if not rotSprite then
			rotSprite = "vegetation_farming_01_5"
		end
	end

	self:setSpriteName(rotSprite)
	self.state = "rotten"
	self:setObjectName(farming_vegetableconf.getObjectName(self))
	self:deadPlant()
end

-- destroy the plant (someone walked on it :))
function SPlantGlobalObject:destroyThis()
	local destroySprite = farming_vegetableconf.props[self.typeOfSeed].destroySprite
	if not destroySprite then
		destroySprite = "vegetation_farming_01_13"
	end
	
	self.state = "destroy"
	self:setObjectName(farming_vegetableconf.getObjectName(self))
	self:deadPlant()
	self:saveData()
end

function SPlantGlobalObject:lowerWaterLvl(plant)
	if self.waterLvl ~= nil then
		local waterConsumption = farming_vegetableconf.props[self.typeOfSeed]
		waterConsumption = waterConsumption and waterConsumption.waterConsumption or 1
		-- flies make water dry more quickly, every 10 pts of flies, water lower by 1 more pts
		local waterFliesChanger = math.floor(self.fliesLvl / 10)
		self.waterLvl = self.waterLvl - waterConsumption - waterFliesChanger
		if self.waterLvl < 0 then
			self.waterLvl = 0
		end
	end
end

function SPlantGlobalObject:checkStat()
    local prop = farming_vegetableconf.props[self.typeOfSeed]
    if prop and prop.onPlantUpdateCode then
        local updateFunction = getUpdateCode(prop.onPlantUpdateCode)
        if updateFunction then
            updateFunction(self, prop)
        end
    end

	if self.state ~= "plow" and self.nbOfGrow > 1 then
		if self.waterLvl <= 0 then
			self:dryThis()
		elseif self.waterLvl > 100 then
			self.waterLvl = 100
		end
		if self.health <= 0 then
			self:dryThis()
		end
	end

	if self.waterLvl < 0 then
		self.waterLvl = 0
	end

	if self.health < 0 then
		self.health = 0
	elseif self.health > 100 then
		self.health = 100
	end
end

local classicFromModData = SPlantGlobalObject.fromModData
function SPlantGlobalObject:fromModData(modData)
	self.isOld = modData.isOld
	classicFromModData(self, modData)
end

local classicToModData = SPlantGlobalObject.toModData
function SPlantGlobalObject:toModData(modData)
	modData.isOld = self.isOld
	classicToModData(self, modData)
end