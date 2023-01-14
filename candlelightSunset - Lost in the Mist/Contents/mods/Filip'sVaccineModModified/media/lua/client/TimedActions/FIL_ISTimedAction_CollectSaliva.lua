-- This file defines the timed action for cutting the ear

require "TimedActions/ISBaseTimedAction"

CollectSalivaTimedAction = ISBaseTimedAction:derive("CollectSalivaTimedAction")

CollectSalivaTimedAction.putSoundDelay = 1.0
CollectSalivaTimedAction.putSoundTime = 0
CollectSalivaTimedAction.putSound = nil;

function CollectSalivaTimedAction:isValid()
    local items = self.character:getInventory():getAllEvalRecurse(function(item, player)
        if item:isBroken() then return false end
        if item:getScriptItem():getCategories():contains("TestTube") then return true end
        return false
    end, ArrayList.new())

    if items:isEmpty() then 
        return false 
    else 
        return true 
    end
end

function CollectSalivaTimedAction:waitToStart()
    self.character:faceThisObject(self.deadBody)
    return self.character:shouldBeTurning()
end

function CollectSalivaTimedAction:update()
end

function CollectSalivaTimedAction:start()
    if not CollectSalivaTimedAction.putSound or not self.character:getEmitter():isPlaying(CollectSalivaTimedAction.putSound) then
        if CollectSalivaTimedAction.putSoundTime + CollectSalivaTimedAction.putSoundDelay < getTimestamp() then
            CollectSalivaTimedAction.putSoundTime = getTimestamp()
            CollectSalivaTimedAction.putSound = self.character:getEmitter():playSound("EarBeingCut")
        end
    end
    
    self:setActionAnim("Loot");
    self.character:SetVariable("LootPosition", "Low");
end

function CollectSalivaTimedAction:stop()
    ISBaseTimedAction.stop(self)
end

function CollectSalivaTimedAction:perform()
    self.character:getInventory():AddItem("LabItems.MatInfectedSaliva")
    self.deadBody:getModData().isSalivaCollected = true;
    self.deadBody:transmitModData();
    ISBaseTimedAction.perform(self)
end

function CollectSalivaTimedAction:new(character, deadBody)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.character = character
    o.deadBody = deadBody
    o.stopOnWalk = true
    o.stopOnRun = true
    o.maxTime = 150
    if character:isTimedActionInstant() then
        o.maxTime = 1;
    end
    return o
end