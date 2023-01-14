require "TimedActions/ISBaseTimedAction"

ISTakeBloodSample = ISBaseTimedAction:derive("ISTakeBloodSample");

function ISTakeBloodSample:isValid()
    return self.patientX == self.patient:getX() and self.patientY == self.patient:getY();
end

function ISTakeBloodSample:waitToStart()
    if self.patient == self.surgeon then
        return false
    end
    self.surgeon:faceThisObject(self.patient)
    return self.surgeon:shouldBeTurning()
end

function ISTakeBloodSample:update()
    if self.patient ~= self.surgeon then
        self.surgeon:faceThisObject(self.patient)
    end
end

function ISTakeBloodSample:start()
    if self.patient == self.surgeon then
        self:setActionAnim("WearClothing");
        self:setAnimVariable("WearClothingLocation", "Jacket")
    else
        self:setActionAnim("Loot")
        self.patient:SetVariable("LootPosition", "Mid")
    end
end

function ISTakeBloodSample:perform()
    self.surgeon:getXp():AddXP(Perks.Doctor, 2);
    FIL_SendisPlayerHaveSyringe = nil;
    if FIL_isPlayerHaveSyringe(true) then
        self.surgeon:getInventory():Remove('LabSyringe');
        FIL_SendisPlayerHaveSyringe = true;
    else--if
        if FIL_isPlayerHaveSyringeRE(true) then
            self.surgeon:getInventory():Remove('LabSyringeReusable');
            FIL_SendisPlayerHaveSyringe = false;
        end--if
    end--if
    if self.patient ~= self.surgeon and isClient() then
        SendTakeBloodSample(self.patient, FIL_SendisPlayerHaveSyringe);
    else
        TakeBloodSample(FIL_SendisPlayerHaveSyringe);
    end
    if FIL_isPlayerHaveCotton(true) then
        self.surgeon:getInventory():Remove('AlcoholedCottonBalls');
    else--if
        if FIL_isPlayerHaveAlcoholWipes(true) then
            self.surgeon:getInventory():Remove('AlcoholWipes');
        end--if
    end--if
    ISBaseTimedAction.perform(self);
end

function ISTakeBloodSample:new(patient, surgeon)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.character = surgeon;

    o.surgeon = surgeon;
    o.patient = patient;

    o.patientX = patient:getX();
    o.patientY = patient:getY();

    o.maxTime = 250;
    o.stopOnWalk = true;
    o.stopOnRun = true;
    o.ignoreHandsWounds = false;
    o.fromHotbar = true;
    if o.patient:isTimedActionInstant() then o.maxTime = 1; end
    return o;
end