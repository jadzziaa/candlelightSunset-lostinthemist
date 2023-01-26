
require "TimedActions/ISBaseTimedAction"


local snareOpen = 'constructedobjects_01_20' --20 open 
local snareClose = 'constructedobjects_01_21' --21 close

ISDisarmBearTrap = ISBaseTimedAction:derive("ISDisarmBearTrap");

function ISDisarmBearTrap:isValid()
	return true--self.obj:getObjectIndex() ~= -1 and self.obj:getItem() ~= nil
end

function ISDisarmBearTrap:waitToStart()
	self.pl:faceThisObject(self.obj)
	return self.pl:shouldBeTurning()
end

function ISDisarmBearTrap:update()
	self.pl:faceThisObject(self.obj)

    self.pl:setMetabolicTarget(Metabolics.LightDomestic);
end

function ISDisarmBearTrap:start()
	self:setActionAnim("Loot")
	self.pl:SetVariable("LootPosition", "Low")
end

function ISDisarmBearTrap:stop()
    ISBaseTimedAction.stop(self);
end

function ISDisarmBearTrap:perform()
                    sledgeDestroy(self.obj)
                    self.obj:getSquare():transmitRemoveItemFromSquare(self.obj) 
                    self.pl:getInventory():AddItem('fBT.BearTrapOpen') 
--[[ 
    getSoundManager():PlayWorldSound('BearTrapSound', self.pl:getSquare(), 0, 5, 5, false);  
    addSound(self.pl, self.pl:getX(), self.pl:getY(), self.pl:getZ(), 5, 1)
    self.obj:setSprite(snareClose)
    self.obj:getSprite():setName(snareClose)
    self.obj:transmitUpdatedSpriteToServer();
    self.obj:transmitUpdatedSpriteToClients();
    if isClient() then self.obj:transmitCompleteItemToServer(); end
    getPlayerLoot(0):refreshBackpacks()   ]]
--[[ 	self.pl:getInventory():AddItem(self.obj:getItem())
	self.obj:getSquare():transmitRemoveItemFromSquare(self.obj)
	self.obj:removeFromWorld()
	self.obj:removeFromSquare()
    self.pl:getInventory():setDrawDirty(true); ]]

    -- needed to remove from queue / start next.
	ISBaseTimedAction.perform(self);
end

function ISDisarmBearTrap:new(pl, obj, time)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.pl = pl;
	o.obj = obj;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.maxTime = time;
	if o.pl:isTimedActionInstant() then o.maxTime = 1; end
	return o;
end
Events.OnFillWorldObjectContextMenu.Remove(BearTrapContext) 


local function BearTrapContext(pl, context, worldobjects, test)

  if test and ISWorldObjectContextMenu.Test then return true end
    local menuCreated = false
  	local sq = nil
    for _, obj in ipairs(worldobjects) do
        --local obj = square:getObjects():get(i) 
        local spr = obj:getSprite():getName()
        --if instanceof(obj, "IsoObject")  then
            if spr == snareOpen or spr == snareClose and not menuCreated then 
          
						context:addOption(getText("ContextMenu_TrapTake", obj), worldobjects, ISWorldObjectContextMenu.onTakeBearTrap, obj, pl)
						end
				
			
			end
		--end
    menuCreated = true
    
end
ISWorldObjectContextMenu.onTakeBearTrap = function(worldobjects, obj, player)
	local pl = getSpecificPlayer(player)
	if obj:getObjectIndex() ~= -1 and luautils.walkAdj(pl, obj:getSquare(), false) then
		ISTimedActionQueue.add(ISDisarmBearTrap:new(pl, obj, 50));
	end
end

Events.OnFillWorldObjectContextMenu.Add(BearTrapContext) 