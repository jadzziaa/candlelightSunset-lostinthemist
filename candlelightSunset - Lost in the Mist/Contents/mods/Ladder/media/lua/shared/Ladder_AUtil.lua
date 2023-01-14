require "QNWL_AUtil"

Ladder_AUtil        = Ladder_AUtil or {}

local this          = Ladder_AUtil
local l_util        = QNW_QNWL_AUtil

local ladderConfigs = {
    ladder_01_0             = {
        direction = "N"
    },
    ladder_01_1             = {
        direction = "W"
    },
    industry_railroad_05_20 = {
        direction = "W"
    },
    industry_railroad_05_21 = {
        direction = "N"
    },
    industry_railroad_05_36 = {
        direction = "W"
    },
    industry_railroad_05_37 = {
        direction = "N"
    },
    location_sewer_01_32 = {
        direction = "W"
    },
    location_sewer_01_33 = {
        direction = "N"
    },
}

function Ladder_AUtil.isLadder(_object)
    local name = _object:getSprite():getName()
    return l_util.tableContainsKey(ladderConfigs, name)
end

function Ladder_AUtil.getLadderConfig(_object)
    local name = _object:getSprite():getName()
    return ladderConfigs[name]
end

function Ladder_AUtil.getLadderByPlayerAndDirection(_player)
    local currentSquare = _player:getCurrentSquare()
    local ladderUp
    local ladderDown
    local dir           = _player:getDir():index()
    if dir == IsoDirections.N:index() then
        ladderUp   = this.getLadderByDirection(currentSquare, "N")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 0, -1), "N")
    end
    if dir == IsoDirections.S:index() then
        ladderUp   = this.getLadderByDirection(currentSquare:getS(), "N")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 1, -1), "N")
    end
    if dir == IsoDirections.W:index() then
        ladderUp   = this.getLadderByDirection(currentSquare, "W")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 0, -1), "W")
    end
    if dir == IsoDirections.E:index() then
        ladderUp   = this.getLadderByDirection(currentSquare:getE(), "W")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 1, 0, -1), "W")
    end
    if dir == IsoDirections.NW:index() then
        ladderUp   = this.getLadderByDirection(currentSquare, "N")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 0, -1), "N")
        if not ladderUp then
            ladderUp = this.getLadderByDirection(currentSquare, "W")
        end
        if not ladderDown then
            ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 0, -1), "W")
        end
    end
    if dir == IsoDirections.NE:index() then
        ladderUp   = this.getLadderByDirection(currentSquare, "N")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 0, -1), "N")
        if not ladderUp then
            ladderUp = this.getLadderByDirection(currentSquare:getE(), "W")
        end
        if not ladderDown then
            ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 1, 0, -1), "W")
        end
    end
    if dir == IsoDirections.SW:index() then
        ladderUp   = this.getLadderByDirection(currentSquare:getS(), "N")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 1, -1), "N")
        if not ladderUp then
            ladderUp = this.getLadderByDirection(currentSquare, "W")
        end
        if not ladderDown then
            ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 0, -1), "W")
        end
    end
    if dir == IsoDirections.SE:index() then
        ladderUp   = this.getLadderByDirection(currentSquare:getS(), "N")
        ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 0, 1, -1), "N")
        if not ladderUp then
            ladderUp = this.getLadderByDirection(currentSquare:getE(), "W")
        end
        if not ladderDown then
            ladderDown = this.getLadderByDirection(l_util.getSquareByOffset(currentSquare, 1, 0, -1), "W")
        end
    end
    return ladderUp, ladderDown
end

function Ladder_AUtil.getLadderByDirection(_square, _direction)
    if not _square then
        return
    end
    local currentSquareObjects = l_util.listToTable(_square:getObjects())
    local ladders              = l_util.tableFilter(currentSquareObjects, this.isLadder)
    for _, v in pairs(ladders) do
        local ladderConfig = this.getLadderConfig(v)
        if ladderConfig.direction == _direction then
            return v
        end
    end
end

function Ladder_AUtil.isThrough(_square, _North)
    if _square then
        local wall = _square:getWall(_North)
        if wall then
            if not instanceof(wall, "IsoThumpable") then
                return false
            end
            local door = _square:getDoor(_North)
            if wall:isDoorFrame() and not door then
                return true, door
            elseif wall:isDoorFrame() and door:IsOpen() then
                return true, door
            else
                return false, door
            end
        else
            return true
        end
    end
    return false
end

