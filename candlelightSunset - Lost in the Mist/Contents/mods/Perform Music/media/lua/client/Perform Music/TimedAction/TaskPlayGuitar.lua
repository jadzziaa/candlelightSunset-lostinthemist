--/////////////////////////////////////////////////////////////////////////
--//////////////////////////// Matías N. Salas ////////////////////////////
--///////////////////////////////////////////////////////////////////////// 
---@version 5.1 Kahlua
---@meta

local PlayGuitar = ISBaseTimedAction:derive('PlayGuitar');

---TimedAction Constructor.
---@param character IsoPlayer
---@param item InventoryItem
---@return TimedAction
PlayGuitar.new = function(self, character, item)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.character = character;
    o.stopOnWalk = true;
    o.stopOnRun = true;
    o.stopOnAim = false;
    o.maxTime = -1;
    o.item = item;
    o.handItem = nil;

    return o
end

---Check if valid.
---@return boolean
PlayGuitar.isValid = function(self)

    return true
end

---Update TimedAction.
PlayGuitar.update = function(self)
    return;
end

---Start TimedAction.
PlayGuitar.start = function(self)
    local type =  self.item:getFullType(); --> Gets the full type of item.

    if self.character:isItemInBothHands(self.item) then --> Checks if the item are on both hands, primary or secundary. self.handItem save it.
        self.handItem = 'BothHands';
    else
        if self.character:isPrimaryHandItem(self.item) then
            self.handItem = 'PrimaryHand';
        elseif self.character:isSecondaryHandItem(self.item) then
            self.handItem = 'SecundaryHand';
        end
    end

    self.character:setPrimaryHandItem(nil); --> Sets the guitar on secundary hand.
    self.character:setSecondaryHandItem(self.item);

    if type == 'Base.GuitarAcoustic' then --> Plays the animation according to the item.
        self:setActionAnim('PlayGuitarAcoustic');
    elseif type == 'Base.Banjo' then
        self:setActionAnim('PlayGuitarBanjo');
    elseif type == 'Base.GuitarElectricBlack' or type == 'Base.GuitarElectricBlue' or type == 'Base.GuitarElectricRed' then
        self:setActionAnim('PlayGuitarElectric');
    elseif type == 'Base.GuitarElectricBassBlack' or type == 'Base.GuitarElectricBassBlue' or type == 'Base.GuitarElectricBassRed' then
        self:setActionAnim('PlayGuitarElectricBass');
    end
end

---Stop TimedAction.
PlayGuitar.stop = function(self)

    if self.handItem == 'PrimaryHand' then --> Checks the hand the item was in before the TimedAction and returns it to how it was.
        self.character:setPrimaryHandItem(self.item);
        self.character:setSecondaryHandItem(nil);
    elseif self.handItem == 'SecundaryHand' then
        self.character:setPrimaryHandItem(nil);
        self.character:setSecondaryHandItem(self.item);
    elseif self.handItem == 'BothHands' then
        self.character:setPrimaryHandItem(self.item);
        self.character:setSecondaryHandItem(self.item);
    end

	ISBaseTimedAction.stop(self);
end

---Complete TimedAction.
PlayGuitar.perform = function(self)

    ISBaseTimedAction.perform(self);
end

return PlayGuitar;