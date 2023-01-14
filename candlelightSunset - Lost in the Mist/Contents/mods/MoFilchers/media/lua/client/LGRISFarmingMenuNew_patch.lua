local function checkHasSeeds(plrObj, seedCode)
    return MoFilchers.getNumberOfItemsInInvWithCode(plrObj, seedCode) > 0
end

local function canSow(plrObj, plrrcp, typeOfSeed)
	local learnSeedRequired = SandboxVars.MoFilchers.GourmetLearnSow and MoFilchers.SnakesInstalled
	return ((learnSeedRequired and plrrcp:contains("Sow " .. typeOfSeed.seedCode)) or not learnSeedRequired) and checkHasSeeds(plrObj, typeOfSeed.seedCode)
end

local function predicateDrainableUsesInt(item, count)
	return item:getDrainableUsesInt() >= count
end

ISFarmingMenu.doFarmingMenu2 = function(player, context, worldobjects, test)
	local playerObj = getSpecificPlayer(player)
	local playerInv = playerObj:getInventory()

	ISFarmingMenu.GardeningSprayMilk = nil;
	ISFarmingMenu.GardeningSprayCigarettes = nil;
	ISFarmingMenu.GardeningSprayAphids = nil;
	ISFarmingMenu.Compost = nil;

	local fertilizer = false;
	local shovel = ISFarmingMenu.getShovel(playerObj)
	local handItem = playerObj:getPrimaryHandItem();
	local canSeed = false;
	local canWater = false;
	local cureMildew = false;
	local cureFlies = false;
	local cureAphids = false;
	local info = false;
	local canHarvest = false;
    local sq = nil;
    local player = playerObj;
	local currentPlant = nil;
	for i,v in ipairs(worldobjects) do
		local plant = CFarmingSystem.instance:getLuaObjectOnSquare(v:getSquare())
		if plant then
			if playerInv:containsTypeRecurse("CompostBag") or playerInv:containsTypeRecurse("Fertilizer") then -- fertilizer
				fertilizer = true;
			end
			if plant.state == "plow" then -- sow seed
				canSeed = true;
			end
			if plant.state == "seeded" then -- water the plant
				canWater = true;
			end
			if plant.state ~= "plow" then -- info
				info = true;
			end
			-- disease
			if plant.mildewLvl > 0 then -- mildew
				cureMildew = true;
			end
			if plant.fliesLvl > 0 then -- flies
				cureFlies = true;
			end
			if plant.aphidLvl > 0 then -- aphids
				cureAphids = true;
			end
			-- harvest
			if plant:canHarvest() then
				canHarvest = true;
			end
			currentPlant = plant
			sq = v:getSquare();
			break
		end
	end

    if not JoypadState.players[player:getPlayerNum()+1] and ISFarmingMenu.canDigHere(worldobjects) and not player:getVehicle() then
        if shovel then
            if test then return ISWorldObjectContextMenu.setTest() end
            context:addOption(getText("ContextMenu_Dig"), worldobjects, ISFarmingMenu.onPlow, player, shovel);
        else
            if(not player:getBodyDamage():getBodyPart(BodyPartType.Hand_L):HasInjury() and not player:getBodyDamage():getBodyPart(BodyPartType.Hand_R):HasInjury()) then
                if test then return ISWorldObjectContextMenu.setTest() end
                local option = context:addOption(getText("ContextMenu_DigWithHands"), worldobjects, ISFarmingMenu.onPlow, player, nil)
                local tooltip = ISWorldObjectContextMenu.addToolTip();
                tooltip.description = getText("ContextMenu_DigWithHandsTT");
                option.toolTip = tooltip;
            else
                if test then return ISWorldObjectContextMenu.setTest() end
                local option = context:addOption(getText("ContextMenu_DigWithHands"), worldobjects, ISFarmingMenu.onPlow, player, nil)
                option.notAvailable = true;
                local tooltip = ISWorldObjectContextMenu.addToolTip();
                tooltip.description = getText("ContextMenu_DamagedHands");
                option.toolTip = tooltip;
            end
        end
    end

	if fertilizer then
		--player:Say("Fertilizer OK")
		if (not handItem or handItem:getType() ~= "CompostBag" or (handItem:getDrainableUsesInt() == 0)) or 
		   (not handItem or handItem:getType() ~= "Fertilizer" or (handItem:getDrainableUsesInt() == 0)) then
			if playerInv:containsTypeRecurse("CompostBag") then
				ISFarmingMenu.Compost = playerInv:getFirstTypeEvalArgRecurse("CompostBag", predicateDrainableUsesInt, 1)
			else
				ISFarmingMenu.Compost = playerInv:getFirstTypeEvalArgRecurse("Fertilizer", predicateDrainableUsesInt, 1)
			end
			--player:Say("Compost Search OK")
		else
			ISFarmingMenu.Compost = handItem;
		end
		if test then return ISWorldObjectContextMenu.setTest() end
		--player:Say(tostring(ISFarmingMenu.Compost))
		if ISFarmingMenu.Compost then
			local use = ISFarmingMenu.Compost:getDrainableUsesInt()
			if use > 0 then
				context:addOption(getText("ContextMenu_Fertilize"), worldobjects, ISFarmingMenu.onFertilize, handItem, currentPlant, sq, player);
			end
		end
	end
	if shovel and currentPlant then
		if test then return ISWorldObjectContextMenu.setTest() end
        context:addOption(getText("ContextMenu_Remove"), worldobjects, ISFarmingMenu.onShovel, currentPlant, player, sq);
    end
	if info then
		if test then return ISWorldObjectContextMenu.setTest() end
		context:addOption(getText("ContextMenu_Info"), worldobjects, ISFarmingMenu.onInfo, currentPlant, sq, player);
	end
	if canHarvest then
		if test then return ISWorldObjectContextMenu.setTest() end
		context:addOption(getText("ContextMenu_Harvest"), worldobjects, ISFarmingMenu.onHarvest, currentPlant, sq, player);
	end
	-- plant seed subMenu
	if canSeed then
		if test then return ISWorldObjectContextMenu.setTest() end
		ISFarmingMenu:doSeedMenu(context, currentPlant, sq, player)
	end
	-- water your plant
	if canWater and currentPlant.waterLvl < 100 then
		local waterSources = {}
		if handItem and handItem:isWaterSource() and math.floor(handItem:getUsedDelta()/handItem:getUseDelta()) > 0 then
			table.insert(waterSources, handItem)
		else
			for i = 0, playerInv:getItems():size() - 1 do
				local item = playerInv:getItems():get(i);
				if item:isWaterSource() and math.floor(item:getUsedDelta()/item:getUseDelta()) > 0 then
					table.insert(waterSources, item)
				end
			end
		end
		-- we get how many use we can do on our item
		if #waterSources > 0 then
			if test then return ISWorldObjectContextMenu.setTest() end
			local waterOption = context:addOption(getText("ContextMenu_Water"), worldobjects, nil);
			local subMenuWater = context
			if #waterSources > 1 then
				subMenuWater = context:getNew(context);
				context:addSubMenu(waterOption, subMenuWater);
				table.sort(waterSources, ISFarmingMenu.itemSortByName)
			end
			for index,handItem in ipairs(waterSources) do
				local use = math.floor(handItem:getUsedDelta()/handItem:getUseDelta());
				-- prepare subMenu for water (we make a submenu for every lvl 5 by 5)
				local subMenu = context:getNew(subMenuWater);
				-- if waterLvl missing is below the max use of the water plant (so we can't have the option for 40 water if the plant have 80)
				local missingWaterUse = math.ceil((100 - currentPlant.waterLvl) / 5);
				if missingWaterUse < use then
					use = missingWaterUse;
				end
				subMenu:addOption(getText("ContextMenu_Full", use * 5), worldobjects, ISFarmingMenu.onWater, use, handItem, player, currentPlant, sq);
				if use > 10 then
					use = 10
				else
					use = use - 1
				end
				for i=use,1,-1 do
					subMenu:addOption(tostring(i * 5), worldobjects, ISFarmingMenu.onWater, i, handItem, player, currentPlant, sq);
				end
				if #waterSources > 1 then
					waterOption = subMenuWater:addOption(handItem:getName(), worldobjects, nil);
				end
				-- we add the subMenu to our current option (Water)
				context:addSubMenu(waterOption, subMenu);
			end
		end
	end
	-- disease
	if cureMildew or cureFlies or cureAphids then
		-- we try to get the cure for mildew
		if not handItem or handItem:getType() ~= "GardeningSprayMilk" or (handItem:getDrainableUsesInt() == 0) then
			ISFarmingMenu.GardeningSprayMilk = playerInv:getFirstTypeEvalArgRecurse("GardeningSprayMilk", predicateDrainableUsesInt, 1)
		else
			ISFarmingMenu.GardeningSprayMilk = handItem;
		end
		-- we try to get the cure for flies
		if not handItem or handItem:getType() ~= "GardeningSprayCigarettes" or (handItem:getDrainableUsesInt() == 0) then
			ISFarmingMenu.GardeningSprayCigarettes = playerInv:getFirstTypeEvalArgRecurse("GardeningSprayCigarettes", predicateDrainableUsesInt, 1)
		else
			ISFarmingMenu.GardeningSprayCigarettes = handItem;
		end
		-- we try to get the cure for aphids
		if not handItem or handItem:getType() ~= "GardeningSprayAphids" or (handItem:getDrainableUsesInt() == 0) then
			ISFarmingMenu.GardeningSprayAphids = playerInv:getFirstTypeEvalArgRecurse("GardeningSprayAphids", predicateDrainableUsesInt, 1)
		else
			ISFarmingMenu.GardeningSprayAphids = handItem;
		end
		--if ISFarmingMenu.GardeningSprayMilk or ISFarmingMenu.GardeningSprayCigarettes or ISFarmingMenu.GardeningSprayAphids then
		if test then return ISWorldObjectContextMenu.setTest() end
		local diseaseOption = context:addOption(getText("ContextMenu_Treat_Problem"), worldobjects, nil);
		local subMenuCure = context:getNew(context);
		context:addSubMenu(diseaseOption, subMenuCure);
		if currentPlant.mildewLvl > 0 then
			if ISFarmingMenu.GardeningSprayMilk then
				-- we get how many use we can do on our item
				local use = ISFarmingMenu.GardeningSprayMilk:getDrainableUsesInt()
				if use > 0 then
					-- prepare subMenu for mildew
					local mildewMenu = subMenuCure:addOption(getText("Farming_Mildew"), worldobjects, nil);
					-- now submenu for lvl of mildew you want to cure (5 by 5)
					local subMenuMildew = context:getNew(subMenuCure);
					if use > 10 then
						use = 10;
					end
					local mildewLvl = 0;
					for i=1, use do
						mildewLvl = i * 5;
						subMenuMildew:addOption(mildewLvl .. "", worldobjects, ISFarmingMenu.onMildewCure, i, sq, player);
					end
					context:addSubMenu(mildewMenu, subMenuMildew);
				end
			else
				local mildewMenu = subMenuCure:addOption(getText("Farming_Mildew"), worldobjects, nil);
				mildewMenu.notAvailable = true;
				local tooltip = ISWorldObjectContextMenu.addToolTip();
				local spray = getScriptManager():FindItem("farming.GardeningSprayMilk"):getDisplayName();--InventoryItemFactory.CreateItem("GardeningSprayMilk"):getDisplayName();
				tooltip.description = getText("Farming_MissingItem", spray);
				mildewMenu.toolTip = tooltip;
			end
		end
		if currentPlant.fliesLvl > 0  then
			if ISFarmingMenu.GardeningSprayCigarettes then
				-- we get how many use we can do on our item
				local use = ISFarmingMenu.GardeningSprayCigarettes:getDrainableUsesInt()
				if use > 0 then
					-- prepare subMenu for mildew
					local flieMenu = subMenuCure:addOption(getText("Farming_Pest_Flies"), worldobjects, nil);
					-- now submenu for lvl of flies you want to cure (5 by 5)
					local subMenuFlie = context:getNew(subMenuCure);
					if use > 10 then
						use = 10;
					end
					local fliesLvl = 0;
					for i=1, use do
						fliesLvl = i * 5;
						subMenuFlie:addOption(fliesLvl .. "", worldobjects, ISFarmingMenu.onFliesCure, i, sq, player);
					end
					context:addSubMenu(flieMenu, subMenuFlie);
				end
			else
				local flieMenu = subMenuCure:addOption(getText("Farming_Pest_Flies"), worldobjects, nil);
				flieMenu.notAvailable = true;
				local tooltip = ISWorldObjectContextMenu.addToolTip();
				local spray = getScriptManager():FindItem("farming.GardeningSprayCigarettes"):getDisplayName();
				tooltip.description = getText("Farming_MissingItem", spray);
				flieMenu.toolTip = tooltip;
			end
		end
	
		if currentPlant.aphidLvl > 0  then
			if ISFarmingMenu.GardeningSprayAphids then
				-- we get how many use we can do on our item
				local use = ISFarmingMenu.GardeningSprayAphids:getDrainableUsesInt()
				if use > 0 then
					-- prepare subMenu for mildew
					local aphidMenu = subMenuCure:addOption(getText("Farming_Devil_Water_Fungi"), worldobjects, nil);
					-- now submenu for lvl of flies you want to cure (5 by 5)
					local subMenuAphi = context:getNew(subMenuCure);
					if use > 10 then
						use = 10;
					end
					local aphidLvl = 0;
					for i=1, use do
						aphidLvl = i * 5;
						subMenuAphi:addOption(aphidLvl .. "", worldobjects, ISFarmingMenu.onAphidsCure, i, sq, player);
					end
					context:addSubMenu(aphidMenu, subMenuAphi);
				end
			else
				local aphidMenu = subMenuCure:addOption(getText("Farming_Devil_Water_Fungi"), worldobjects, nil);
				aphidMenu.notAvailable = true;
				local tooltip = ISWorldObjectContextMenu.addToolTip();

				local spray = getScriptManager():FindItem("legourmetfarming.GardeningSprayAphids")
				if spray then
					local displayName = spray:getDisplayName();
					tooltip.description = getText("Farming_MissingItem", displayName);
					aphidMenu.toolTip = tooltip;
				end
			end
		end
	end

	if ISFarmingMenu.cheat and currentPlant then
		if test then return ISWorldObjectContextMenu.setTest() end
		local option = context:addOption("Cheat", worldobjects, nil);
		local subMenu = context:getNew(context);
		context:addSubMenu(option, subMenu);
		subMenu:addOption("Grow", worldobjects, ISFarmingMenu.onCheatGrow, currentPlant);
		subMenu:addOption("Water To Max", worldobjects, ISFarmingMenu.onCheatWater, currentPlant);
		subMenu:addOption("Zero Water", worldobjects, ISFarmingMenu.onCheat, currentPlant, { var = 'waterLvl', count = -currentPlant.waterLvl });
		subMenu:addOption("Flies +5", worldobjects, ISFarmingMenu.onCheat, currentPlant, { var = 'fliesLvl', count = 5 });
		subMenu:addOption("Flies -5", worldobjects, ISFarmingMenu.onCheat, currentPlant, { var = 'fliesLvl', count = -5 });
		subMenu:addOption("Mildew +5", worldobjects, ISFarmingMenu.onCheat, currentPlant, { var = 'mildewLvl', count = 5 });
		subMenu:addOption("Mildew -5", worldobjects, ISFarmingMenu.onCheat, currentPlant, { var = 'mildewLvl', count = -5 });
		subMenu:addOption("Aphids +5", worldobjects, ISFarmingMenu.onCheat, currentPlant, { var = 'aphidLvl', count = 5 });
		subMenu:addOption("Aphids -5", worldobjects, ISFarmingMenu.onCheat, currentPlant, { var = 'aphidLvl', count = -5 });
	end
end

function ISFarmingMenu.canPlow(seedAvailable, typeOfSeed, option, sticksAvailable, sheetropeAvailable, perklvl, prof)
	local tooltip = ISToolTip:new();
	tooltip:initialise();
	tooltip:setVisible(false);
	option.toolTip = tooltip;

	local props = farming_vegetableconf.props[typeOfSeed]
	local textOverride = props.textPrefix or "Farming_"
	tooltip:setName(getText(textOverride .. typeOfSeed));
	local result = true;
	local rgb = "";

    local requiredSkill = props.requiredskill
	if requiredSkill then
		if not prof then
			if perklvl < requiredSkill then
				result = false;
				rgb = "<RGB:1,0,0>";
			else
				rgb = "<RGB:1,1,1>";
			end

			tooltip.description = rgb .. getText("Farming_Tooltip_SkillRequired") .. perklvl .. "/" .. props.requiredskill .. ""  .. " <LINE> " ;
		else
			tooltip.description = "";
		end
	else
		tooltip.description = "";
	end
	tooltip.description = tooltip.description .. "<RGB:1,1,1> " .. getText("Farming_Tooltip_MinWater") .. props.waterLvl .. "";

    local waterLevelMax = props.waterLvlMax
    local waterPlus = "";
	if waterLevelMax then
		tooltip.description = tooltip.description .. " <LINE> " .. getText("Farming_Tooltip_MaxWater") ..  waterLevelMax;
        waterPlus = "-" .. waterLevelMax;
	end
	tooltip.description = tooltip.description .. " <LINE> " .. getText("Farming_Tooltip_TimeOfGrow") .. math.floor((props.timeToGrow * 7) / 24) .. " " .. getText("IGUI_Gametime_days");
    tooltip.description = tooltip.description .. " <LINE> " .. getText("Farming_Tooltip_AverageWater") .. props.waterLvl .. waterPlus;

    local seedsRequired = props.seedsRequired
	if seedAvailable < seedsRequired then
		result = false;
		rgb = "<RGB:1,0,0>";
	else
		rgb = "<RGB:1,1,1>";
	end
	tooltip.description = tooltip.description .. " <LINE> " .. rgb .. getText("Farming_Tooltip_RequiredSeeds") .. seedAvailable .. "/" .. seedsRequired;

    local sticksRequired = props.sticksRequired
	if sticksRequired and sticksRequired > 0 then
		if sticksAvailable < sticksRequired then
			result = false;
			rgb = "<RGB:1,0,0>";
		else
			rgb = "<RGB:1,1,1>";
		end
		tooltip.description = tooltip.description .. " <LINE> " .. rgb .. getText("Farming_Tooltip_WoodenStickRequired") .. sticksAvailable .. "/" .. sticksRequired;
	end

    local sheetRopeRequired = props.sheetropeRequired
	if sheetRopeRequired and sheetRopeRequired > 0 then
		if sheetropeAvailable < sheetRopeRequired then
			result = false;
			rgb = "<RGB:1,0,0>";
		else
			rgb = "<RGB:1,1,1>";
		end
		tooltip.description = tooltip.description .. " <LINE> " .. rgb .. getText("Farming_Tooltip_SheetRopeRequired") .. sheetropeAvailable .. "/" .. sheetRopeRequired;
	end	

	tooltip:setTexture(props.texture);
	if not result then
		option.onSelect = nil;
		option.notAvailable = true;
    end
    tooltip:setWidth(170);
end

function ISFarmingMenu:onSeedSquareSelected()
	local cursor = ISFarmingMenu.cursor;
	if not ISFarmingMenu.walkToPlant(cursor.character, cursor.sq) then
		return
	end
	
	local plant = CFarmingSystem.instance:getLuaObjectOnSquare(cursor.sq)
	--local playerInv = cursor.character:getInventory()
	local props = farming_vegetableconf.props[cursor.typeOfSeed]
	local seedCode = MoFilchers.getItemCodeFromData(props)
	local items = MoFilchers.getItemsInInvWithCode(cursor.character, seedCode, props.seedsRequired)
	--local items = playerInv:getSomeTypeRecurse(props.seedName, props.seedsRequired)
	ISInventoryPaneContextMenu.transferIfNeeded(cursor.character, items)

	local seeds = {}
	for i=1,items:size() do
		local item = items:get(i-1)
		table.insert(seeds, item)
	end
	
	ISTimedActionQueue.add(ISSeedAction:new(cursor.character, seeds, props.seedsRequired, cursor.typeOfSeed, plant, 40))
end

function ISFarmingMenu:isSeedValid()
	local valid = true;
	local cursor = ISFarmingMenu.cursor;
	
	local playerInv = cursor.character:getInventory()
	local props = farming_vegetableconf.props[cursor.typeOfSeed]
	local seedCode = MoFilchers.getItemCodeFromData(props)
--	local items = playerInv:getSomeTypeRecurse(props.seedName, props.seedsRequired)
	local nmbOfSeeds = MoFilchers.getNumberOfItemsInInvWithCode(cursor.character, seedCode)
	cursor.tooltipTxt = getText("ContextMenu_Sow_Seed") .. ": "
	local color = " <RGB:1,1,1> "
	local seedText
	local scriptItem = getScriptManager():FindItem(props.seedName)
	if scriptItem then
		seedText = scriptItem:getDisplayName() .. " (";
	else
		seedText = cursor.typeOfSeed .. " seeds (";
	end
	seedText = seedText .. nmbOfSeeds .. " / " .. props.seedsRequired  .. ")";
	if nmbOfSeeds < props.seedsRequired then
		color = " <RGB:1,0,0> "
		valid = false;
	end
	cursor.tooltipTxt = cursor.tooltipTxt .. color .. seedText

	local plant = CFarmingSystem.instance:getLuaObjectOnSquare(cursor.sq)
	local plantName = ISFarmingMenu.getPlantName(plant);

	if not ISFarmingMenu.isValidPlant(plant) then
		cursor.tooltipTxt = cursor.tooltipTxt .. " <LINE> <RGB:1,0,0> " .. getText("Farming_Tooltip_NotAFurrow");
		valid = false;
	end
	
	if plant and plant.state ~= "plow" then
		cursor.tooltipTxt = " <RGB:1,1,1> " .. plantName .. " <LINE> " ..  cursor.tooltipTxt .. " <LINE> <RGB:1,0,0> " .. getText("Farming_Tooltip_FurrowHasSeeds");
		valid = false;
	end

	return valid;
end

function ISFarmingMenu:doSeedMenu(context, plant, sq, playerObj)
	local playerrcp = playerObj:getKnownRecipes();
	local menu1 = nil;
	local menu2 = nil;
	local menu3 = nil;
	local seedOption;
	local subMenu;
	local WoodenStickseedOption;
	local subMenu2;
	local TreeseedOption;
	local subMenu3;
	-- Sort seed types by display name.
	local typeOfSeedList = {}
	for typeOfSeed,props in pairs(farming_vegetableconf.props) do
        --print(props.seedName)
		local textOverride = props.textPrefix or "Farming_"
		table.insert(typeOfSeedList, {seedCode = MoFilchers.getItemCodeFromData(props), typeOfSeed = typeOfSeed, props = props, text = getText(textOverride .. typeOfSeed) })
	end
	table.sort(typeOfSeedList, function(a,b) return not string.sort(a.text, b.text) end)

	for _,tos in ipairs(typeOfSeedList) do
		if (not tos.props.plantType or tos.props.plantType == 1) and canSow(playerObj, playerrcp, tos) then
			menu1 = true
        elseif tos.props.plantType == 2 and canSow(playerObj, playerrcp, tos) then
			menu2 = true
		elseif tos.props.plantType == 3 and checkHasSeeds(playerObj, tos.seedCode) then
			menu3 = true
		end
	end

	if menu1 then
		--Plantas normales
		seedOption = context:addOption(getText("ContextMenu_Sow_Seed"), nil, nil)
		subMenu = context:getNew(context)
		context:addSubMenu(seedOption, subMenu)
	end

	if menu2 then
		-- Soporte
		WoodenStickseedOption = context:addOption(getText("ContextMenu_Sow_WoodenStick_Seed"), nil, nil);
		subMenu2 = context:getNew(context);
		context:addSubMenu(WoodenStickseedOption, subMenu2);
	end

	if menu3 then
		-- Arboles Frutales
		TreeseedOption = context:addOption(getText("ContextMenu_Sow_tree_Seed"), nil, nil);
		subMenu3 = context:getNew(context);
		context:addSubMenu(TreeseedOption, subMenu3);
	end

	for _,tos in ipairs(typeOfSeedList) do
		local option = nil;
		if (not tos.props.plantType or tos.props.plantType == 1) and menu1 and canSow(playerObj, playerrcp, tos) then
			option = subMenu:addActionsOption(tos.text, ISFarmingMenu.onSeed, tos, plant, sq)
        elseif tos.props.plantType == 2 and menu2 and canSow(playerObj, playerrcp, tos) then
			option = subMenu2:addActionsOption(tos.text, ISFarmingMenu.onSeed, tos, plant, sq)
		elseif tos.props.plantType == 3 and menu3 and checkHasSeeds(playerObj, tos.seedCode) then
			option = subMenu3:addActionsOption(tos.text, ISFarmingMenu.onSeed, tos, plant, sq)
		end

		if option  then
			local nbOfSeed = MoFilchers.getNumberOfItemsInInvWithCode(playerObj, tos.seedCode)
			local nbOfSticks = playerObj:getInventory():getCountTypeRecurse("Base.WoodenStick")
			local nbOfSheet = playerObj:getInventory():getCountTypeRecurse("Base.SheetRope")
			local perkFarming = playerObj:getPerkLevel(Perks.Farming)
			local prof = playerObj:getDescriptor():getProfession() == "farmer";
			ISFarmingMenu.canPlow(nbOfSeed, tos.typeOfSeed, option, nbOfSticks, nbOfSheet, perkFarming, prof)
		end
	end
end

function ISFarmingMenu.onSeed(playerObj, typeOfSeed, plant, sq)
	if ISFarmingMenu.walkToPlant(playerObj, sq) then
		local playerInv = playerObj:getInventory()
		local props = farming_vegetableconf.props[typeOfSeed.typeOfSeed]
		local items = MoFilchers.getItemsInInvWithCode(playerObj, typeOfSeed.seedCode, props.seedsRequired)
		ISInventoryPaneContextMenu.transferIfNeeded(playerObj, items)

		local seeds = {}
		for i=0, items:size()-1 do
			table.insert(seeds, items:get(i))
		end

        local sticksRequired = props.sticksRequired
		if sticksRequired and sticksRequired > 0 then
			items = playerInv:getSomeTypeRecurse("Base.WoodenStick", sticksRequired)
			ISInventoryPaneContextMenu.transferIfNeeded(playerObj, items)
		end

        local sheetRequired = props.sheetropeRequired
		if sheetRequired and sheetRequired > 0 then
			items = playerInv:getSomeTypeRecurse("Base.SheetRope", sheetRequired)
			ISInventoryPaneContextMenu.transferIfNeeded(playerObj, items)
		end
		ISTimedActionQueue.add(ISSeedAction:new(playerObj, seeds, props.seedsRequired, typeOfSeed.typeOfSeed, plant, 40))	
	end
	if playerObj:getJoypadBind() ~= -1 then
		return
	end
	ISFarmingMenu.cursor = ISFarmingCursorMouse:new(playerObj, ISFarmingMenu.onSeedSquareSelected, ISFarmingMenu.isSeedValid)
	getCell():setDrag(ISFarmingMenu.cursor, playerObj:getPlayerNum())
	ISFarmingMenu.cursor.typeOfSeed = typeOfSeed.typeOfSeed;
end