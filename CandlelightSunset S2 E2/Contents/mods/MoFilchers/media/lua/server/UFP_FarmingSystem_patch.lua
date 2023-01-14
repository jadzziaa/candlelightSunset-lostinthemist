local growCodeCache = {}

local function getGrowCode(growCode)
    local cacheFunction = growCodeCache[growCode]
    if growCodeCache[growCode] then
        return cacheFunction
    end

    local args = MoFilchers.split(growCode, ".")
    if #args == 2 then
        local module = _G[args[1]]
        if module then
            local newFunction = module[args[2]]
            if newFunction then
                growCodeCache[growCode] = newFunction
                return newFunction
            end
        end
    end
end

function SFarmingSystem:growPlant(luaObject, nextGrowing, updateNbOfGrow)
	if(luaObject.state == "seeded") then
        local props = farming_vegetableconf.props[luaObject.typeOfSeed]
        if not props or not props.growCode then
            local newFarmName = MoFilchers.getNewFarmName(luaObject.typeOfSeed)
            if newFarmName then
                luaObject.typeOfSeed = newFarmName
                props = farming_vegetableconf.props[luaObject.typeOfSeed]
            end
        end

        if props then
            local new = luaObject.nbOfGrow <= 0
            local rotOverride = props.retainOnRot
            local canRot = not props.rotImmunity
            --if (getActivatedMods():contains("FarmingNeverRot")) then
            if not canRot then
                if (luaObject.nbOfGrow > 6) then
                    luaObject.nbOfGrow = 6
                end
            elseif rotOverride then
                if (luaObject.nbOfGrow > 6) then
                    luaObject.nbOfGrow = rotOverride;
                end
            end
    
            local growCode = props.growCode
            local growCodeFunction = getGrowCode(growCode)
            if growCodeFunction then
                growCodeFunction(luaObject, nextGrowing, updateNbOfGrow)
            else
                print("UFP: WARNING. GROWCODE NOT DEFINED FOR "..tostring(luaObject.typeOfSeed)..". PLANT WILL NOT DO MUCH!")
            end
            
            -- maybe this plant gonna be disease
            if not new and luaObject.nbOfGrow > 0 then
                self:diseaseThis(luaObject, true)
            end
            luaObject.nbOfGrow = luaObject.nbOfGrow + 1
        end
	end
end

function SFarmingSystem:harvest(luaObject, player)
    local props = farming_vegetableconf.props[luaObject.typeOfSeed]
    --[[if not props then
        local codeFromItem = MoFilchers.getCodeFromItem(luaObject.typeOfSeed)
        local highestActiveMod = MoFilchers.getHighestModWithItem(luaObject.typeOfSeed)
        props = farming_vegetableconf.props[MoFilchers.itemConversions[highestActiveMod][codeFromItem].farmName]
    end]]

	local numberOfVeg = getVegetablesNumber(props.minVeg, props.maxVeg, props.minVegAutorized, props.maxVegAutorized, luaObject)
	--[[if player then
		player:sendObjectChange('addItemOfType', { type = props.vegetableName, count = numberOfVeg })
	end]]

    if player then
        if not luaObject.isOld then
            player:sendObjectChange('addItemOfType', { type = props.vegetableName, count = numberOfVeg })

            local seedLevelRequirement = props.seedSkill
            if seedLevelRequirement then
                if player:getPerkLevel(Perks.Farming) < seedLevelRequirement then
                    luaObject.hasSeed = false;
                end
            end
    
            if luaObject.hasSeed then
                player:sendObjectChange('addItemOfType', { type = props.seedName, count = (props.seedPerVeg * numberOfVeg) })
            end
        elseif props.oldItemName then
            player:sendObjectChange('addItemOfType', { type = props.oldItemName, count = 1 });
        end
	end

	luaObject.hasVegetable = false
	luaObject.hasSeed = false

	-- the strawberrie don't disapear, it goes on phase 2 again
    local harvestOverride = props.retainOnHarvest
    local harvestRetainPhase = props.lastRetainPhase
    if harvestOverride and (harvestRetainPhase and luaObject.nbOfGrow <= harvestRetainPhase or not harvestRetainPhase) then
        luaObject.nbOfGrow = harvestOverride
        self:growPlant(luaObject, nil, true)
        luaObject:saveData()
    else
        local sq = luaObject:getSquare()
		self:removePlant(luaObject, player)

        if SandboxVars.MoFilchers.KeepFurrows then
            self:plow(sq)
        end
	end
end

function SFarmingSystem:removePlant(luaObject, plr)
	if not luaObject or luaObject.luaSystem ~= self then return end
	-- This calls removeLuaObject(luaObject) as a side effect of the OnObjectAboutToBeRemoved event
    if SandboxVars.MoFilchers.PlantRefund then
        local prop = farming_vegetableconf.props[luaObject.typeOfSeed]
        if prop and plr then
            local sticksRequired = prop.sticksRequired
            local sheetsRequired = prop.sheetropeRequired

            if sticksRequired then
                plr:sendObjectChange('addItemOfType', { type = "Base.WoodenStick", count = sticksRequired })
            end

            if sheetsRequired then
                plr:sendObjectChange('addItemOfType', { type = "Base.SheetRope", count = sheetsRequired })
            end
        end
    end

	luaObject:removeObject()
--	FarmingSystem.instance:removeLuaObject(plant)
end

local classicDisease = SFarmingSystem.diseaseThis
function SFarmingSystem:diseaseThis(luaObject, checkClosePlant)
    if not luaObject.immuneToDisease then
        classicDisease(self, luaObject, checkClosePlant)
    end
end