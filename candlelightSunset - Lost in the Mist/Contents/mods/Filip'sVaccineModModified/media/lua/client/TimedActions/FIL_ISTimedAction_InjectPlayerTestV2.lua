require "TimedActions/ISBaseTimedAction"

ISInjectPlayerTestV2 = ISBaseTimedAction:derive("ISInjectPlayerTestV2");

function ISInjectPlayerTestV2:isValid()
    return self.patientX == self.patient:getX() and self.patientY == self.patient:getY();
end

function ISInjectPlayerTestV2:waitToStart()
    if self.patient == self.surgeon then
        return false
    end
    self.surgeon:faceThisObject(self.patient)
    return self.surgeon:shouldBeTurning()
end

function ISInjectPlayerTestV2:update()
    if self.patient ~= self.surgeon then
        self.surgeon:faceThisObject(self.patient)
    end
end

function ISInjectPlayerTestV2:start()
    if self.patient == self.surgeon then
        self:setActionAnim("WearClothing");
        self:setAnimVariable("WearClothingLocation", "Jacket")
    else
        self:setActionAnim("Loot")
        self.patient:SetVariable("LootPosition", "Mid")
    end
end

function ISInjectPlayerTestV2:perform()
    if self.patient ~= self.surgeon and isClient() then
        SendInjectPlayerTestV2(self.patient);
    else
        InjectPlayerTestV2();
    end
    self.surgeon:getXp():AddXP(Perks.Doctor, 2);
    if FIL_isPlayerHaveTestV2(true) then
        self.surgeon:getInventory():Remove('CmpSyringeWithTestVaccineV2');
        self.surgeon:getInventory():AddItem("LabItems.LabSyringeUsed");
    else--if
        if FIL_isPlayerHaveTestV2RE(true) then
            self.surgeon:getInventory():Remove('CmpSyringeReusableWithTestVaccineV2');
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

function ISInjectPlayerTestV2:new(patient, surgeon)
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