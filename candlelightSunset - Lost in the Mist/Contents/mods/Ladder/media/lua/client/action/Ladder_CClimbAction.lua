require "TimedActions/ISBaseTimedAction"
require "Ladder_CCore"

Ladder_CClimbAction = ISBaseTimedAction:derive("Ladder_CClimbAction")

local l_util        = QNW_QNWL_AUtil
local core          = QNW_Ladder_CCore

function Ladder_CClimbAction:isValid()
    local currentSquare = self.character:getCurrentSquare()
    return l_util.squareEquals(currentSquare, self.currentSquare)
end

function Ladder_CClimbAction:waitToStart()
    if self.counter == 0 then
        if self.direction == "W" then
            self.character:setDir(IsoDirections.W)
        end
        if self.direction == "E" then
            self.character:setDir(IsoDirections.E)
        end
        if self.direction == "N" then
            self.character:setDir(IsoDirections.N)
        end
        if self.direction == "S" then
            self.character:setDir(IsoDirections.S)
        end
        self.counter=1
    end
    if self.direction == "W" then
        if self.character:getDir():index() ~= IsoDirections.W:index() then
            return true
        end
    end
    if self.direction == "E" then
        if self.character:getDir():index() ~= IsoDirections.E:index() then
            return true
        end
    end
    if self.direction == "N" then
        if self.character:getDir():index() ~= IsoDirections.N:index() then
            return true
        end
    end
    if self.direction == "S" then
        if self.character:getDir():index() ~= IsoDirections.S:index() then
            return true
        end
    end

    if self.character:isAiming() then
        self.character:nullifyAiming()
    end
    if not self.character:isCurrentState(IdleState.instance()) then
        return true
    end
    return false
end

function Ladder_CClimbAction:start()
    core.clearTargetList[self.character:getPlayerNum()] = self.character
    self.character:dropHeavyItems()
    self.action:setUseProgressBar(false)

    self.character:setVariable("LadderDirection", self.direction)
    if self.down then
        self.character:setVariable("PerformingAction", "LadderDown")
    else
        self.character:setVariable("PerformingAction", "LadderUp")
    end
    self.character:clearVariable("FitnessFinished")
    self.character:reportEvent("EventFitness")
end

function Ladder_CClimbAction:stop()
    core.clearTargetList[self.character:getPlayerNum()] = nil
    self.character:PlayAnim("Idle")
    self.character:clearVariable("LadderDirection")
    self.character:clearVariable("PerformingAction")
    self.character:setVariable("FitnessFinished", true)
    setGameSpeed(1)
    ISBaseTimedAction.stop(self)
end

function Ladder_CClimbAction:perform()
    core.clearTargetList[self.character:getPlayerNum()] = nil
    self.character:PlayAnim("Idle")
    self.character:clearVariable("LadderDirection")
    self.character:clearVariable("PerformingAction")
    self.character:setVariable("FitnessFinished", true)
    setGameSpeed(1)
    ISBaseTimedAction.perform(self)
end

function Ladder_CClimbAction:update()
end

function Ladder_CClimbAction:animEvent(_event, _parameter)
    if _event == "LadderState" then
        if _parameter == "End" then
            self:forceStop()
            if self.direction == "W" then
                l_util.deliver(self.character, self.square:getX() + 0.9, self.square:getY() + 0.5, self.square:getZ())
                self.character:setDir(IsoDirections.W)
            end
            if self.direction == "E" then
                l_util.deliver(self.character, self.square:getX() + 0.1, self.square:getY() + 0.5, self.square:getZ())
                self.character:setDir(IsoDirections.E)
            end
            if self.direction == "N" then
                l_util.deliver(self.character, self.square:getX() + 0.5, self.square:getY() + 0.9, self.square:getZ())
                self.character:setDir(IsoDirections.N)
            end
            if self.direction == "S" then
                l_util.deliver(self.character, self.square:getX() + 0.5, self.square:getY() + 0.1, self.square:getZ())
                self.character:setDir(IsoDirections.S)
            end
        end
    end
end

function Ladder_CClimbAction:new(_character, _ladder, _direction, _currentSquare, _square, _down)
    local o = {}
    setmetatable(o, self)
    self.__index    = self
    o.character     = _character
    o.stopOnWalk    = true
    o.stopOnRun     = true
    o.ladder        = _ladder
    o.direction     = _direction
    o.square        = _square
    o.down          = _down
    o.currentSquare = _currentSquare
    o.maxTime       = 1000
    o.counter       = 0
    return o
end

