require "TimedActions/ISBaseTimedAction"

ISInjectPlayerQVaccine = ISBaseTimedAction:derive("ISInjectPlayerQVaccine");

function ISInjectPlayerQVaccine:isValid()
    return self.patientX == self.patient:getX() and self.patientY == self.patient:getY();
end

function ISInjectPlayerQVaccine:waitToStart()
    if self.patient == self.surgeon then
        return false
    end
    self.surgeon:faceThisObject(self.patient)
    return self.surgeon:shouldBeTurning()
end

function ISInjectPlayerQVaccine:update()
    if self.patient ~= self.surgeon then
        self.surgeon:faceThisObject(self.patient)
    end
end

function ISInjectPlayerQVaccine:start()
    if self.patient == self.surgeon then
        self:setActionAnim("WearClothing");
        self:setAnimVariable("WearClothingLocation", "Jacket")
    else
        self:setActionAnim("Loot")
        self.patient:SetVariable("LootPosition", "Mid")
    end
end

function ISInjectPlayerQVaccine:perform()
    if self.patient ~= self.surgeon and isClient() then
        SendInjectPlayerQVaccine(self.patient);
    else
        InjectPlayerQVaccine();
    end
    self.surgeon:getXp():AddXP(Perks.Doctor, 2);
    if FIL_isPlayerHaveQVaccine(true) then
        self.surgeon:getInventory():Remove('CmpSyringeWithQualityVaccine');
        self.surgeon:getInventory():AddItem("LabItems.LabSyringeUsed");
    else--if
        if FIL_isPlayerHaveQVaccineRE(true) then
            self.surgeon:getInventory():Remove('CmpSyringeReusableWithQualityVaccine');
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

function ISInjectPlayerQVaccine:new(patient, surgeon)
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