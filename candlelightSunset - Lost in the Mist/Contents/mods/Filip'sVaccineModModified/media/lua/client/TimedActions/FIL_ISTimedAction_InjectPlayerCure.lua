require "TimedActions/ISBaseTimedAction"

ISInjectPlayerCure = ISBaseTimedAction:derive("ISInjectPlayerCure");

function ISInjectPlayerCure:isValid()
    return self.patientX == self.patient:getX() and self.patientY == self.patient:getY();
end

function ISInjectPlayerCure:waitToStart()
    if self.patient == self.surgeon then
        return false
    end
    self.surgeon:faceThisObject(self.patient)
    return self.surgeon:shouldBeTurning()
end

function ISInjectPlayerCure:update()
    if self.patient ~= self.surgeon then
        self.surgeon:faceThisObject(self.patient)
    end
end

function ISInjectPlayerCure:start()
    if self.patient == self.surgeon then
        self:setActionAnim("WearClothing");
        self:setAnimVariable("WearClothingLocation", "Jacket")
    else
        self:setActionAnim("Loot")
        self.patient:SetVariable("LootPosition", "Mid")
    end
end

function ISInjectPlayerCure:perform()
    if self.patient ~= self.surgeon and isClient() then
        SendInjectPlayerCure(self.patient);
    else
        InjectPlayerCure();
    end
    self.surgeon:getXp():AddXP(Perks.Doctor, 2);
    if FIL_isPlayerHaveCure(true) then
        self.surgeon:getInventory():Remove('CmpSyringeWithCure');
        self.surgeon:getInventory():AddItem("LabItems.LabSyringeUsed");
    else--if
        if FIL_isPlayerHaveCureRE(true) then
            self.surgeon:getInventory():Remove('CmpSyringeReusableWithCure');
            self.surgeon:getInventory():AddItem("LabItems.LabSyringeReusableUsed");
        end--if
    end--if        
    if FIL_isPlayerHaveCotton(true) then
        self.surgeon:getInventory():Remove('AlcoholedCottonBalls');
    else--if
        if FIL_isPlayerHaveAlcoholWipes(true) then
            self.surgeon:getInventory():Remove('AlcoholWipes');
        end--if
    end--if
    ISBaseTimedAction.perform(self);
end

function ISInjectPlayerCure:new(patient, surgeon)
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