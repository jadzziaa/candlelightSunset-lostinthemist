------------------------------------------
-- Fancy Handwork Init
------------------------------------------

FancyHands = FancyHands or {}

------------------------------------------
-- Fancy Handwork Configuration
------------------------------------------

FancyHands.config = {
    applyRotationL = true
}

FancyHands.nomask = {
	["Base.Torch"] = true,
	["Base.HandTorch"] = true,
	["Base.UmbrellaBlack"] = true,
	["Base.UmbrellaWhite"] = true,
	["Base.UmbrellaBlue"] = true
}

FancyHands.special = {
    ["Base.Generator"] = 0,
    ["Base.CorpseMale"] = 1,
    ["Base.CorpseFemale"] = 1
}

------------------------------------------
-- Fancy Handwork Utilities
------------------------------------------

function isFHModKeyDown()
    return isKeyDown(getCore():getKey('FHModifier'))
end

local FHswapItems = function(character)
    local primary = character:getPrimaryHandItem()
    local secondary = character:getSecondaryHandItem()
    if (primary or secondary) and (primary ~= secondary) then
        ISTimedActionQueue.add(FHSwapHandsAction:new(character, primary, secondary, 10))
    end
end

local FHswapItemsMod = function(character)
    if isFHModKeyDown() then
        FHswapItems(character)
    end
end

local FHcreateBindings = function()
    local FHbindings = {
        {
            value = '[FancyHandwork]'
        },
        {
            value = 'FHModifier',
            key = Keyboard.KEY_LCONTROL,
        },
        {
            value = 'FHSwapKey',
            action = FHswapItems,
            key = 0,
        },
        {
            value = 'FHSwapKeyMod',
            action = FHswapItemsMod,
            key = Keyboard.KEY_E,
            swap = true
        },
    }

    for _, bind in ipairs(FHbindings) do
        if bind.key or not bind.action then
            table.insert(keyBinding, { value = bind.value, key = bind.key })
        end
    end

    local FHhandleKeybinds = function(key)
        local player = getSpecificPlayer(0)
        local action
        for _,bind in ipairs(FHbindings) do
            if key == getCore():getKey(bind.value) then
                if bind.swap then
                    if isFHModKeyDown() then
                        action = bind.action
                        break
                    end
                else
                    action = bind.action
                    break
                end
            end
        end
    
        if not action or isGamePaused() or not player or player:isDead() then
            return 
        end
        action(player)
    end

    FancyHands.addKeyBind = function(keybind)
        table.insert(FHbindings, keybind)
    end

    Events.OnGameStart.Add(function()
        Events.OnKeyPressed.Add(FHhandleKeybinds)
    end)
    
end

local function fancy(player)
    if not player then return end
    local primary = player:getPrimaryHandItem()
    local secondary = player:getSecondaryHandItem()

    local queue = ISTimedActionQueue.queues[player]
    if queue and #queue.queue > 0 and not queue.queue[1].FHIgnore then
        player:setVariable("FHDoingAction", true)
    else
        player:setVariable("FHDoingAction", false)
    end

    player:getModData().FancyHands = player:getModData().FancyHands or {
        recentMove = false,
        recentDelta = 0
    } 
    if player:isPlayerMoving() then
        player:getModData().FancyHands.recentMove = true
        player:getModData().FancyHands.recentDelta = 0
    else
        if player:getModData().FancyHands.recentMove then
            player:getModData().FancyHands.recentDelta = player:getModData().FancyHands.recentDelta + 1
            if player:getModData().FancyHands.recentDelta >= ((SandboxVars.FancyHandwork and SandboxVars.FancyHandwork.TurnDelay) or 60) then
                player:getModData().FancyHands.recentMove = false
            end
        end
    end

    -- 2 hands
    if primary == secondary then
        if primary then
            if FancyHands.special[primary:getFullType()] == 0 then
                player:setVariable("LeftHandMask", "holdinggenerator")
                player:clearVariable("RightHandMask")    
                return
            elseif FancyHands.special[primary:getFullType()] == 1 then
                player:setVariable("LeftHandMask", "holdingbody")
                player:clearVariable("RightHandMask")    
                return           
            end
        end
        player:clearVariable("LeftHandMask")
        player:clearVariable("RightHandMask")
        return
    end

    --- Blech, sometimes the item mask would match instead of the gun based on parameters. :/ 
    if primary then
        if not primary:getItemReplacementPrimaryHand() then
            if instanceof(primary, "HandWeapon") then
                if primary:isRanged() then
                    player:setVariable("RightHandMask", "holdinggunright")
                    if player:getPerkLevel(Perks.Aiming) >= ((SandboxVars.FancyHandwork and SandboxVars.FancyHandwork.ExperiencedAiming) or 3) then
                        player:setVariable("FHExp", true)
                    else
                        player:setVariable("FHExp", false)
                    end
                else
                    player:setVariable("RightHandMask", "holdingitemright")
                end
            else
                player:clearVariable("RightHandMask")
            end
        end
    else
        player:clearVariable("RightHandMask")
    end

    if secondary then
        if not secondary:getItemReplacementSecondHand() then
            if instanceof(secondary, "HandWeapon") then
                if secondary:isRanged() then
                    player:setVariable("LeftHandMask", "holdinghgunleft")
                else
                    player:setVariable("LeftHandMask", "holdingitemleft")
                end
                --player:setVariable("FHExp", test)
            else
                player:clearVariable("LeftHandMask")
            end
        end
    else
        player:clearVariable("LeftHandMask")
    end
end

local function FancyHandwork()
    FHcreateBindings()

    Events.OnGameStart.Add(function()
        if isClient() then
            local curPlayer = 0
            Events.OnTick.Add(function()
                -- We will do one player per tick to set their state
                ---- We do this to ensure each tick doesn't take too long
                local players = getOnlinePlayers()
                if curPlayer > (players:size()-1) then curPlayer = 0 end
                fancy(players:get(curPlayer))
                curPlayer = curPlayer + 1
            end)
        else
            Events.OnPlayerUpdate.Add(function(player)
                fancy(player)
            end)
        end
    end)

    print(getText("UI_Init_FancyHandwork"))
end

FancyHandwork()

