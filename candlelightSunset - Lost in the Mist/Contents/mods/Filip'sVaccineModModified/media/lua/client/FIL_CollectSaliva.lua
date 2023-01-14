-- Define what to do when player clicks on Cut ear
local function onCollectSalivaOption(worldobjects, playerObj, destinationSquare, deadBody)
    if luautils.walkAdj(playerObj, destinationSquare) then
        ISTimedActionQueue.add(CollectSalivaTimedAction:new(playerObj, deadBody));
    end
end

-- Check if the right clicked object is a dead body, and if it's a dead body from a previous player.
local function onFillWorldObjectContextMenu(player, context, worldobjects, test)
    if test then return; end;
    local playerObj = getSpecificPlayer(player);
    local x = getMouseX()
    local y = getMouseY()
    local body = IsoObjectPicker.Instance:PickCorpse(x, y)

    if body and body:getModData().isSalivaCollected ~= true then
        local items = playerObj:getInventory():getAllEvalRecurse(function(item, player)
            if item:isBroken() then return false end
            if item:getScriptItem():getCategories():contains("TestTube") then return true end
            return false
        end, ArrayList.new())
    
        if not items:isEmpty() then 
            local myOption1 = context:addOption(getText("ContextMenu_CollectSaliva"), worldobjects, onCollectSalivaOption, playerObj, body:getSquare(), body);
        end
    end
end

Events.OnFillWorldObjectContextMenu.Add(onFillWorldObjectContextMenu);
