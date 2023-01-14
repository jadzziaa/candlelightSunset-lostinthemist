--- These actions all do a small hand movement now.

-- function FHBoopAction:start()
--     self:setActionAnim("FH_Boop")
--     print("Boop")
--     --self:adjustMaxTime(20)
-- end

-- -- local _FHBoopAction_new = FHBoopAction.new
-- -- function FHBoopAction:new(character, item, time)
-- --     return _FHBoopAction_new(self, character,item,200)
-- -- end

require "TimedActions/ISBaseTimedAction"

FHBoopAction = ISBaseTimedAction:derive("FHBoopAction");

function FHBoopAction:isValid()
	return true;
end

-- blech, I really want this, but turning overrides my animation
function FHBoopAction:waitToStart()
	if self.turn then
		self.character:faceThisObject(self.item)
		return self.character:shouldBeTurning()
	end
	return false
end

function FHBoopAction:doThing(left, secondary)
	left = left or 0
	--local gun = secondary and instanceof(secondary, "HandWeapon") and secondary:isRanged()
	if left == 1 then -- left
		self:setActionAnim("FH_BoopL")
	elseif left == 2 then -- right
		self:setActionAnim("FH_Boop")
		--if gun then self:setAnimVariable("RightHandMask", "holdinggunright") end
	else
		if ZombRand(3) == 1 then
			self:setActionAnim("FH_BoopL")
		else
			self:setActionAnim("FH_Boop")
			--if gun then self:setAnimVariable("RightHandMask", "holdinggunright") end
		end
	end
end

function FHBoopAction:start()
	if self.extra > 100 then
		self:setAnimVariable("BoopPosition", "High")
		self.extra = self.extra - 100
	elseif self.extra < 0 then
		self:setAnimVariable("BoopPosition", "Low")
		self.extra = self.extra * -1
	end
	if self.extra == 1 then
		self:setActionAnim("FH_Boop_Dual")
	else
		local primary = self.character:getPrimaryHandItem()
		local secondary = self.character:getSecondaryHandItem()
		if primary then
			if (primary and secondary) and not self.character:isAiming() and primary ~= secondary then
				-- Doesn't matter which hand here
				self:doThing(0, secondary)
			else
				self:doThing(1, secondary)
			end
		else
			if not secondary then
				self:doThing(0,secondary)
			else
				self:doThing(2, secondary)
			end
		end 
	end
end

function FHBoopAction:stop()
    ISBaseTimedAction.stop(self);
end

function FHBoopAction:perform()
	--self.item:ToggleDoor(self.character);
    -- needed to remove from queue / start next.
	ISBaseTimedAction.perform(self);
end

function FHBoopAction:new(character, data)
	if not data then return nil end
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.character = character
	o.item = data.item
	o.extra = data.extra
	--print(item);
	o.stopOnWalk = false
	o.stopOnRun = false
	o.maxTime = 15
	o.FHIgnore = true
	o.useProgressBar = false
	o.turn = (o.item and o.character:getModData().FancyHands and not o.character:getModData().FancyHands.recentMove)
	return o
end