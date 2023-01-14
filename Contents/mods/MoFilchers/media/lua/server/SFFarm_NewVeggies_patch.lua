farming_vegetableconf.getObjectName = function(plant)
    if plant.state == "plow" then return getText("Farming_Plowed_Land") end

    local props = farming_vegetableconf.props[plant.typeOfSeed]
    if props then
        local textPrefix = props.textPrefix or "Farming_"
        if props then
            if plant.state == "destroy" then return getText("Farming_Destroyed") .. " " .. getText(textPrefix .. plant.typeOfSeed) end
            if plant.state == "dry" then return getText("Farming_Receding") .. " " .. getText(textPrefix .. plant.typeOfSeed) end
            if plant.state == "rotten" then return getText("Farming_Rotten") .. " " .. getText(textPrefix .. plant.typeOfSeed) end
    
            local customPhaseText = props["phaseName"..plant.nbOfGrow]
            if customPhaseText then
                return getText(customPhaseText) .. " " .. getText(textPrefix ..plant.typeOfSeed);
            else
                if plant.nbOfGrow <= 1 then
                    return getText("Farming_Seedling") .. " " .. getText(textPrefix ..plant.typeOfSeed);
                elseif plant.nbOfGrow <= 4 then
                    return getText("Farming_Young") .. " " .. getText(textPrefix ..plant.typeOfSeed);
                elseif plant.nbOfGrow == 5 then
                    return getText("Farming_Ready_for_Harvest") .. " " .. getText(textPrefix ..plant.typeOfSeed);
                elseif plant.nbOfGrow == 6 then
                    return getText("Farming_Seed-bearing") .. " " .. getText(textPrefix ..plant.typeOfSeed);
                end
            end
        end
    end
	return "Mystery Plant"
end

farming_vegetableconf.getSpriteName = function(plant)
	if plant.state == "plow" then return "vegetation_farming_01_1" end
	local seed = plant.typeOfSeed;
	local maxNbOfGrow = #farming_vegetableconf.sprite[seed];
	if plant.nbOfGrow <= 0 then
		return farming_vegetableconf.sprite[seed][1]
	elseif plant.nbOfGrow > 0 and plant.nbOfGrow < maxNbOfGrow then
		return farming_vegetableconf.sprite[seed][1 + plant.nbOfGrow]
	else -- rotten
		return farming_vegetableconf.sprite[seed][maxNbOfGrow]
	end
end


--[[local function canStart()
    local numOfModsEnabled = 0
    for modCode, modPair in pairs(MoFilchers.modMapping) do
        if modCode ~= "V" and MoFilchers[modPair] then
            numOfModsEnabled = numOfModsEnabled + 1
        end 
    end
    return numOfModsEnabled >= 2
end]]

--[[local function getRecipesToToss()
    if MoFilchers.modPriority == "Filcher" then
        return {"Convert to GourmetRevolution", "Convert to MoCrops"}
    elseif MoFilchers.modPriority == "Gourmet" then
        return {"Convert to MoCrops", "Convert to SoulFilchers"}
    end

    return {"Convert to GourmetRevolution", "Conver to SoulFilchers"}
end]]

local function getUnusedValue(firstList, lastList)
    for i = 1, #firstList do
        if MoFilchers.getIndexOf(lastList, firstList[i]) < 0 then
            return firstList[i]
        end
    end
end

local defaultValues = {"G", "X", "C", "J", "M", "F", "V"}
local function setModPriorities()
    local modPriorities = MoFilchers.split(SandboxVars.MoFilchers.ModPriority, ":")
    if #modPriorities ~= #defaultValues then
        for i = 1, #defaultValues do
            if MoFilchers.getIndexOf(modPriorities, i) < 0 then
                local unusedValue = getUnusedValue(defaultValues, modPriorities)
                table.insert(modPriorities, unusedValue)
            end
        end
    end

    MoFilchers.modPriorities = modPriorities
end

local function fixDistributions()
    for _, v in pairs(ProceduralDistributions.list) do
        if type(v) == "table" then
            local itemList = v.items
            if itemList then
                MoFilchers.patchItemsInList(itemList)
            end
        end
    end

    for _, v in pairs(SuburbsDistributions) do
        if type(v) == "table" then
            for _, l in pairs(v) do
                if type(l) == "table" then
                    local itemList = l.items
                    if itemList then
                        MoFilchers.patchItemsInList(itemList)
                    end
                end
            end
        end
    end

    for _, v in pairs(VehicleDistributions) do
        if type(v) == "table" then
            local itemList = v.items
            if itemList then
                MoFilchers.patchItemsInList(itemList)
            end
        end
    end
end

local function fixSource(recipeSources)
    -- This currently doesn't do anything because of zomboid limitations. Unfortunate.
    --[[for rsi = 0, recipeSources:size() - 1 do
        local source = recipeSources:get(rsi)
        local sourceItems = source:getItems()
        for ti = 0, sourceItems:size() - 1 do
            local item = sourceItems:get(ti)
            local code = MoFilchers.getCodeFromItem(item)
            if code then
                local items = MoFilchers.getItemsWithCode(code)
                for _, v in pairs(items) do
                    if not sourceItems:contains(v) then
                        sourceItems:add(v)
                    end
                end
            end
        end
    end]]
end

local function fixResult(seedCode, result, recipeSources)
    local highestActiveMod = MoFilchers.getHighestModWithItem(seedCode)
    if highestActiveMod then
        local replacementSeed = MoFilchers.itemConversions[highestActiveMod][seedCode].seedData
        if replacementSeed then
            local newSeed = replacementSeed.seedName
            if newSeed then
                result:setType(newSeed)
            end
        else
            fixSource(recipeSources)
        end
    end
end

local function fixRecipes()
    local recipes = getScriptManager():getAllRecipes()
    for i = 0, recipes:size() - 1 do
        local recipe = recipes:get(i)
        local recipeSources = recipe:getSource()
        local result = recipe:getResult()

        local seedCode = MoFilchers.getCodeFromItem(result)
        if seedCode then
            fixResult(seedCode, result, recipeSources)
        else
            fixSource(recipeSources)
        end
    end
end

local function updateAllItems()
    for mod, values in pairs(MoFilchers.itemConversions) do
        for item, itemData in pairs(values) do
            if MoFilchers.getIndexOf(MoFilchers.allItems, item) < 0 then
                table.insert(MoFilchers.allItems, item)
            end

            local seedData = itemData.seedData
            if seedData then
                local seedIndex = string.find(item, "Seed")
                if seedIndex then
                    local newString = string.sub(item, 1, seedIndex-1)
                    MoFilchers.itemConversions[mod][newString] = {itemData = seedData.vegetableName}

                    if MoFilchers.getIndexOf(MoFilchers.allItems, newString) then
                        table.insert(MoFilchers.allItems, newString)
                    end
                end
            end
        end
    end
end

function Setup()
    setModPriorities()
    MoFilchers.replaceSeeds = SandboxVars.MoFilchers.ReplaceSeeds
    MoFilchers.gourmetOverride = SandboxVars.MoFilchers.GourmetOverride
    updateAllItems()

    -- Wipe all old data. We won't be needing it!
    for key, _ in pairs(farming_vegetableconf.props) do
        farming_vegetableconf.props[key] = nil
    end

    --if canStart() then
    for _, item in pairs(MoFilchers.allItems) do
        local mod = MoFilchers.getHighestModWithItem(item) -- May return nil if no mod is enabled that has this plant.
        --print("Highest mod with item: "..tostring(mod))
        if mod then -- Make sure we have a valid mapping, otherwise no mods with this item are enabled.
            local itemData = MoFilchers.itemConversions[mod][item]
            if itemData and itemData.seedData then
                --print("Setting MoFilchers seedData for "..tostring(itemData.farmName).." according to mod: "..tostring(mod))
                farming_vegetableconf.icons[itemData.farmName] = itemData.icon

                local gourmetEquiv = MoFilchers.itemConversions.G[item]
                local newSeedData = itemData.seedData
                if MoFilchers.gourmetOverride and not itemData.preventSpriteOverride and MoFilchers.SnakesTexturesInstalled and gourmetEquiv then
                    --print("Gourmet equiv for "..tostring(itemData.farmName)..": "..tostring(gourmetEquiv.spriteData[1]))
                    local gourmetEquivSeed = gourmetEquiv.seedData
                    if gourmetEquivSeed then
                        newSeedData.texture = gourmetEquivSeed.texture
                        newSeedData.drySprite = gourmetEquivSeed.drySprite
                        newSeedData.rotSprite = gourmetEquivSeed.rotSprite
                        newSeedData.destroySprite = gourmetEquivSeed.destroySprite
                    end

                    farming_vegetableconf.sprite[itemData.farmName] = gourmetEquiv.spriteData
                else
                    --print("Default data for "..tostring(itemData.farmName)..": "..tostring(itemData.spriteData[1]))
                    farming_vegetableconf.sprite[itemData.farmName] = itemData.spriteData
                end

                if not MoFilchers.SnakesInstalled then
                    newSeedData.plantType = 1 -- Force it into the default planting menu instead of any custom menu due to potential formatting problems.
                end

                if MoFilchers.NeverRotInstalled then
                    newSeedData.rotImmunity = true
                end

                farming_vegetableconf.props[itemData.farmName] = newSeedData --itemData.seedData
            end
        else
            -- print("Corresponding mod for "..tostring(item).." does not exist.")
        end
    end
        --end

    fixDistributions()
    fixRecipes()

    --[[ local recipeToToss = getRecipesToToss()
    local recipes = getScriptManager():getAllRecipes()
    for i = 1, recipes:size() do
        local recipe = recipes:get(i - 1)
        local name = recipe:getOriginalname()
        if name == recipeToToss then
            recipe:setIsHidden(true)
            recipe:setCanPerform("nope")
        end
    end]]

    ItemPickerJava.Parse()
end

Events.OnInitGlobalModData.Add(Setup)