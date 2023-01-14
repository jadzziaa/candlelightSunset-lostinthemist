if LGLearnRecipeAction then
	function LGLearnRecipeAction:new(character, item, time)
		local o = {};
		setmetatable(o, self);
		self.__index = self;
		o.character = character;
		o.item = item;
		o.itemCode = MoFilchers.getCodeFromItem(item)
	
		local index = LGRSeedPacketDef[o.itemCode]
		if not index then -- fallback to defaults
			index = LGRSeedPacketDef[item:getType()]
		end
	
		o.recipe = index.recipetolearn;
		o.Recipetranslation = index.translation;
		o.stopOnWalk = true;
		o.stopOnRun = true;
		o.maxTime = time;
		return o;
	end
end