function ISSeedAction:perform()
	if self.sound and self.sound ~= 0 then
		self.character:getEmitter():stopOrTriggerSound(self.sound)
	end

	for i=1, self.nbOfSeed do
		local seed = self.seeds[i];
		self.character:getInventory():Remove(seed);
	end

	local props = farming_vegetableconf.props[self.typeOfSeed]
	local sticksRequired = props.sticksRequired
	if sticksRequired and sticksRequired > 0 then
		local itemList = ISFarmingMenu.haveItems(self.character);
		for i=1, sticksRequired do
			local stick = itemList.WoodenStick[i];
			self.character:getInventory():Remove(stick);
		end
	end

	local sheetRequired = props.sheetropeRequired
	if sheetRequired and sheetRequired > 0 then
		local itemList = ISFarmingMenu.haveItems(self.character);
		for i=1, sheetRequired do
			local sheetrope = itemList.SheetRope[i];
			self.character:getInventory():Remove(sheetrope);
		end
	end

	local sq = self.plant:getSquare()
	local args = { x = sq:getX(), y = sq:getY(), z = sq:getZ(), typeOfSeed = self.typeOfSeed}
	CFarmingSystem.instance:sendCommand(self.character, 'seed', args)

	-- needed to remove from queue / start next.
	ISBaseTimedAction.perform(self);
end