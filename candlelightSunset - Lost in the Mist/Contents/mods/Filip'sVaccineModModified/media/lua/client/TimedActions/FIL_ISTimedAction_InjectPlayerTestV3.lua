require "TimedActions/ISBaseTimedAction"

ISInjectPlayerTestV3 = ISBaseTimedAction:derive("ISInjectPlayerTestV3");

function ISInjectPlayerTestV3:isValid()
    return self.patientX == self.patient:getX() and self.patientY == self.patient:getY();
end

function ISInjectPlayerTestV3:waitToStart()
    if self.patient == self.surgeon then
        return false
    end
    self.surgeon:faceThisObject(self.patient)
    return self.surgeon:shouldBeTurning()
end

function ISInjectPlayerTestV3:update()
    if self.patient ~= self.surgeon then
        self.surgeon:faceThisObject(self.patient)
    end
end

function ISInjectPlayerTestV3:start()
    if self.patient == self.surgeon then
        self:setActionAnim("WearClothing");
        self:setAnimVariable("WearClothingLocation", "Jacket")
    else
        self:setActionAnim("Loot")
        self.patient:SetVariable("LootPosition", "Mid")
    end
end

function ISInjectPlayerTestV3:perform()
    if self.patient ~= self.surgeon and isClient() then
        SendInjectPlayerTestV3(self.patient);
    else
        InjectPlayerTestV3();
    end
    self.surgeon:getXp():AddXP(Perks.Doctor, 2);
    if FIL_isPlayerHaveTestV3(true) then
        self.surgeon:getInventory():Remove('CmpSyringeWithTestVaccineV3');
        self.surgeon:getInventory():AddItem("LabItems.LabSyringeUsed");
    else--if
        if FIL_isPlayerHaveTestV3RE(true) then
            self.surgeon:getInventory():Remove('CmpSyringeReusableWithTestVaccineV3');
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

function ISInjectPlayerTestV3:new(patient, surgeon)
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