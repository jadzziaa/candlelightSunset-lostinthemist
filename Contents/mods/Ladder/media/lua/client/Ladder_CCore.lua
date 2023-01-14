QNW_Ladder_CCore                           = QNW_Ladder_CCore or {}

local this                                 = QNW_Ladder_CCore
local util                                 = Ladder_AUtil
local l_util                               = QNW_QNWL_AUtil

local OnFillWorldObjectContextMenuCallback = function(_playerNum, _context, _worldObjects)
    local buildMenu = _context:getOptionFromName(getText("ContextMenu_Build"))
    if buildMenu then
        local subMenu       = _context:getSubMenu(buildMenu.subOption)
        local ladderMenu    = subMenu:insertOptionBefore(getText("ContextMenu_Stairs"), getText("ContextMenu_QNW_Ladder_Ladder"))
        local ladderSubMenu = ISContextMenu:getNew(subMenu)
        subMenu:addSubMenu(ladderMenu, ladderSubMenu)

        local ladder1Menu = ladderSubMenu:addOption(getText("ContextMenu_QNW_Ladder_Ladder"), nil, function()
            local ladder                      = Ladder_SISLadder:new(getText("ContextMenu_QNW_Ladder_Ladder"), "ladder_01_1", "ladder_01_0")
            ladder.modData["xp:Woodwork"]     = 4
            ladder.modData["need:Base.Plank"] = "6"
            ladder.modData["need:Base.Nails"] = "8"
            ladder.player                     = _playerNum
            ladder.isThumpable                = false
            ladder.completionSound            = "BuildWoodenStructureLarge"
            getCell():setDrag(ladder, _playerNum)
        end)
        local tooltip     = ISBuildMenu.canBuild(8, 10, 0, 0, 0, 4, ladder1Menu, _playerNum)
        tooltip:setName(getText("ContextMenu_QNW_Ladder_Ladder"))
        tooltip.description = getText("Tooltip_QNW_Ladder_LadderDesc") .. tooltip.description
        tooltip:setTexture("ladder_01_0")
        ISBuildMenu.requireHammer(ladder1Menu)
        local ladder2Menu = ladderSubMenu:addOption(getText("ContextMenu_QNW_Ladder_LadderWithFloor"), nil, function()
            local ladder                      = Ladder_SISLadder:new(getText("ContextMenu_QNW_Ladder_LadderWithFloor"), "ladder_01_1", "ladder_01_0", true)
            ladder.modData["xp:Woodwork"]     = 4
            ladder.modData["need:Base.Plank"] = "6"
            ladder.modData["need:Base.Nails"] = "8"
            ladder.player                     = _playerNum
            ladder.isThumpable                = false
            ladder.completionSound            = "BuildWoodenStructureLarge"
            getCell():setDrag(ladder, _playerNum)
        end)
        local tooltip2    = ISBuildMenu.canBuild(8, 10, 0, 0, 0, 4, ladder2Menu, _playerNum)
        tooltip2:setName(getText("ContextMenu_QNW_Ladder_LadderWithFloor"))
        tooltip2.description = getText("Tooltip_QNW_Ladder_LadderDesc") .. tooltip2.description
        tooltip2:setTexture("ladder_01_0")
        ISBuildMenu.requireHammer(ladder2Menu)
    end
end

local OnKeyStartPressedCallback            = function(_key)
    if _key ~= getCore():getKey("Interact") then
        return
    end
    if isGamePaused() then
        return
    end
    local player = getPlayer()
    if not player or player:isDead() then
        return
    end
    local queue = ISTimedActionQueue.queues[player]
    if queue and #queue.queue > 0 then
        return
    end
    local spottedList = l_util.listToTable(player:getSpottedList())
    for _, v in pairs(spottedList) do
        if v:isZombie() and v:DistTo(player) < 2 then
            return
        end
    end

    local ladders                  = {}
    local tempLadder1, tempLadder2 = util.getLadderByPlayerAndDirection(player)
    if tempLadder1 then
        table.insert(ladders, tempLadder1)
    end
    if tempLadder2 then
        table.insert(ladders, tempLadder2)
    end
    local currentSquare = player:getCurrentSquare()
    local square_E      = l_util.getSquareByOffset(currentSquare, 1, 0, 0)
    local square_S      = l_util.getSquareByOffset(currentSquare, 0, 1, 0)
    local square_W      = l_util.getSquareByOffset(currentSquare, -1, 0, 0)
    local square_N      = l_util.getSquareByOffset(currentSquare, 0, -1, 0)
    local square_D      = l_util.getSquareByOffset(currentSquare, 0, 0, -1)
    local square_DE     = l_util.getSquareByOffset(currentSquare, 1, 0, -1)
    local square_DW     = l_util.getSquareByOffset(currentSquare, -1, 0, -1)
    local square_DS     = l_util.getSquareByOffset(currentSquare, 0, 1, -1)
    local square_DN     = l_util.getSquareByOffset(currentSquare, 0, -1, -1)
    local square_U      = l_util.getSquareByOffset(currentSquare, 0, 0, 1)
    local square_UE     = l_util.getSquareByOffset(currentSquare, 1, 0, 1)
    local square_UW     = l_util.getSquareByOffset(currentSquare, -1, 0, 1)
    local square_US     = l_util.getSquareByOffset(currentSquare, 0, 1, 1)
    local square_UN     = l_util.getSquareByOffset(currentSquare, 0, -1, 1)
    local tempLadder
    tempLadder          = util.getLadderByDirection(currentSquare, "W")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    tempLadder = util.getLadderByDirection(currentSquare, "N")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    tempLadder = util.getLadderByDirection(currentSquare:getE(), "W")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    tempLadder = util.getLadderByDirection(currentSquare:getS(), "N")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    tempLadder = util.getLadderByDirection(square_D, "W")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    tempLadder = util.getLadderByDirection(square_D, "N")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    tempLadder = util.getLadderByDirection(square_DE, "W")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    tempLadder = util.getLadderByDirection(square_DS, "N")
    if tempLadder then
        table.insert(ladders, tempLadder)
    end
    for _, v in pairs(ladders) do
        if currentSquare:getZ() == v:getSquare():getZ() then
            if not square_U or not square_U:TreatAsSolidFloor() then
                local ladderConfig = util.getLadderConfig(v)
                local square
                local isThrough
                local direction    = ""
                if ladderConfig.direction == "W" then
                    if l_util.squareEquals(currentSquare, v:getSquare()) then
                        square    = square_UW
                        isThrough = util.isThrough(square_U, false)
                        direction = "W"
                    else
                        square    = square_UE
                        isThrough = util.isThrough(square_UE, false)
                        direction = "E"
                    end
                end
                if ladderConfig.direction == "N" then
                    if l_util.squareEquals(currentSquare, v:getSquare()) then
                        square    = square_UN
                        isThrough = util.isThrough(square_U, true)
                        direction = "N"
                    else
                        square    = square_US
                        isThrough = util.isThrough(square_US, true)
                        direction = "S"
                    end
                end
                if square and square:TreatAsSolidFloor() and isThrough and not (square:isSolid() or square:isSolidTrans()) then
                    ISTimedActionQueue.add(ISWalkToTimedAction:new(player, currentSquare))
                    ISTimedActionQueue.add(Ladder_CClimbAction:new(player, v, direction, currentSquare, square, false))
                    break
                end
            end
        else
            local ladderConfig = util.getLadderConfig(v)
            local square
            local testSquare
            local isThrough
            local door
            local direction    = ""
            if ladderConfig.direction == "W" then
                if l_util.squareEquals(square_D, v:getSquare()) then
                    square          = square_DW
                    isThrough, door = util.isThrough(currentSquare, false)
                    direction       = "W"
                    testSquare      = square_W
                else
                    square          = square_DE
                    isThrough, door = util.isThrough(square_E, false)
                    direction       = "E"
                    testSquare      = square_E
                end
            end
            if ladderConfig.direction == "N" then
                if l_util.squareEquals(square_D, v:getSquare()) then
                    square          = square_DN
                    isThrough, door = util.isThrough(currentSquare, true)
                    direction       = "N"
                    testSquare      = square_N
                else
                    square          = square_DS
                    isThrough, door = util.isThrough(square_S, true)
                    direction       = "S"
                    testSquare      = square_S
                end
            end
            if not testSquare or not testSquare:TreatAsSolidFloor() then
                if square and square:TreatAsSolidFloor() and isThrough and not (square:isSolid() or square:isSolidTrans()) then
                    if door then
                        door:ToggleDoorSilent()
                    end
                    local action = ISWalkToTimedAction:new(player, currentSquare)
                    action:setOnComplete(function()
                        if direction == "S" or direction == "E" then
                            l_util.deliver(player, currentSquare:getX() + 0.4, currentSquare:getY() + 0.4, currentSquare:getZ())
                        else
                            l_util.deliver(player, currentSquare:getX() + 0.6, currentSquare:getY() + 0.6, currentSquare:getZ())
                        end
                        ISTimedActionQueue.add(Ladder_CClimbAction:new(player, v, direction, currentSquare, square, true))
                    end)
                    ISTimedActionQueue.add(action)
                    break
                end
            end
        end
    end
end

this.clearTargetList                       = {}
local OnZombieUpdateCallback               = function(_zombie)
    if l_util.tableLength(this.clearTargetList) > 0 then
        for k, v in pairs(this.clearTargetList) do
            local target = _zombie:getTarget()
            if target and instanceof(v, "IsoPlayer") and target:getPlayerNum() == k and _zombie:DistTo(v) < 4 then
                _zombie:setTarget(nil)
            end
        end
    end
end

if not isServer() then
    Events.OnFillWorldObjectContextMenu.Add(OnFillWorldObjectContextMenuCallback)
    Events.OnKeyStartPressed.Add(OnKeyStartPressedCallback)
    Events.OnZombieUpdate.Add(OnZombieUpdateCallback)
end