BetterBatteries = {}
BetterBatteries.removeTests = {
    ["Recipe.OnTest.TorchBatteryRemoval"] = true;
    ["Recipe.OnTest.BBItemBatteryRemoval"] = true;
}

BetterBatteries.removeRecipes = {
    ["Recipe.OnCreate.TorchBatteryRemoval"] = true;
    ["Recipe.OnCreate.BBItemBatteryRemoval"] = true;
}

BetterBatteries.insertTests = {
    ["Recipe.OnTest.TorchBatteryInsert"] = true;
    ["Recipe.OnTest.BBItemBatteryInsert"] = true;
    ["Recipe.OnTest.BBItemBatteryInsertInvert"] = true;
}

BetterBatteries.insertRecipes = {
    ["Recipe.OnCreate.TorchBatteryInsert"] = true;
    ["Recipe.OnCreate.BBItemBatteryInsert"] = true;
}

BetterBatteries.destroyRecipes = {
    ["Recipe.OnCreate.DismantleFlashlight"] = true;
}

--[[function BetterBatteries.isRemovalRecipeType(recipe)
    return BetterBatteries.removeRecipes[recipe:getLuaTest()] or BetterBatteries.removeRecipes[recipe:getLuaCreate()]
end

function BetterBatteries.isInsertRecipe(recipe)
    return BetterBatteries.insertRecipes[recipe:getLuaTest()] or BetterBatteries.insertRecipes[recipe:getLuaCreate()]
end]]

function EditRecipes()
    -- Update Base.Battery dynamically to use the new Battery tag.
    local baseBattery = getScriptManager():getItem("Base.Battery")
    if baseBattery then
        baseBattery:getTags():add("Battery")
    end

    local allRecipes = getScriptManager():getAllRecipes()
    for ri = 0, allRecipes:size() - 1 do
        local recipe = allRecipes:get(ri)
        local recipeSources = recipe:getSource()

        local insertRecipe = (not recipe:getLuaTest() or BetterBatteries.insertTests[recipe:getLuaTest()]) and BetterBatteries.insertRecipes[recipe:getLuaCreate()] -- Maximizes compatibility if it matches both known cases.
        local removeRecipe = BetterBatteries.removeTests[recipe:getLuaTest()] and BetterBatteries.removeRecipes[recipe:getLuaCreate()]
        local destroyRecipe = BetterBatteries.destroyRecipes[recipe:getLuaCreate()]
        if insertRecipe or removeRecipe or destroyRecipe then
            for rsi = 0, recipeSources:size() - 1 do
                local source = recipeSources:get(rsi)
                local sourceItems = source:getItems()
                for ti = 0, sourceItems:size() - 1 do
                    local item = sourceItems:get(ti)
                    local trueItem = getScriptManager():getItem(item)
                    if trueItem and not trueItem:getTags():contains("Battery") then
                        -- Update items not considered a battery and using a battery-related recipe to become "BatteryItems" which are more widely compatible.
                        if not trueItem:getTags():contains("BatteryItem") and not trueItem:getTags():contains("HandCrank") then
                            local mult = SandboxVars.BetterBatteries.LifetimeMult
                            if trueItem:getTypeString() == "Drainable" then
                               trueItem:setUseDelta(mult > 0 and (trueItem:getUseDelta()/mult) or (mult == 0 and 1 or 0))
                               local replaceOnDeplete = trueItem:getReplaceOnDeplete()
                               if replaceOnDeplete then
                                    trueItem:DoParam("BetterBatteriesDepleteData = "..tostring(replaceOnDeplete))
                                    trueItem:setReplaceOnDeplete(nil) -- For use with SBAA, Videogames, and similar mods. Don't permit replacement until battery is removed.
                               end
                            else
                                print(trueItem:getFullName().. " had its default batteryRemoved modData set to true.")
                                trueItem:DoParam("batteryRemoved = true")
                            end
                            
                            trueItem:getTags():add("BatteryItem")
                        elseif not trueItem:getTags():contains("BatteryItem") and trueItem:getTags():contains("HandCrank")  then
                            trueItem:getTags():add("BatteryItem")
                        end
                    end

                    -- If we have a valid destroy recipe and the item is tagged as a battery item, go ahead and set its destroy method.
                    if destroyRecipe and trueItem:getTags():contains("BatteryItem") then
                        recipe:setLuaCreate("Recipe.OnCreate.BBDismantleItem")
                    end
                end

                if removeRecipe then
                    source:setKeep(false)
                    source:setDestroy(true)
                end
            end

            -- Checks for vanilla-related recipes and rolls with it.
            if insertRecipe then
                -- Necessary for making sure it stays properly attached to the belt without causing errors. Yes, this was an actual problem.
                recipe:setRemoveResultItem(true)

                local luatest = recipe:getLuaTest()
                if not luatest or luatest == "Recipe.OnTest.TorchBatteryInsert" then
                    print("Overwrote ".. tostring(not luatest and "nonexistent" or "vanilla").." test method for: "..tostring(recipe:getOriginalname()))
                    recipe:setLuaTest("Recipe.OnTest.BBItemBatteryInsert")
                end

                if recipe:getLuaCreate() == "Recipe.OnCreate.TorchBatteryInsert" then
                    --print("Overwrote vanilla insert create method for: "..tostring(recipe:getOriginalname()))
                    recipe:setLuaCreate("Recipe.OnCreate.BBItemBatteryInsert")
                end
            else
                if recipe:getLuaTest() == "Recipe.OnTest.TorchBatteryRemoval" then
                    --print("Overwrote vanilla remove test method for: "..tostring(recipe:getOriginalname()))
                    recipe:setLuaTest("Recipe.OnTest.BBItemBatteryRemoval")
                end

                if recipe:getLuaCreate() == "Recipe.OnCreate.TorchBatteryRemoval" then
                    --print("Overwrote vanilla remove create method for: "..tostring(recipe:getOriginalname()))
                    recipe:setLuaCreate("Recipe.OnCreate.BBItemBatteryRemoval")
                end
            end
        end
    end
end

Events.OnGameStart.Add(EditRecipes)