--[[
    Add the new ClothingMenuPanel into the char creation.
]]
require "OptionScreens/CharacterCreationMain"

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)
local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium)

local vanilla_doClothingCombo = CharacterCreationMain.doClothingCombo
function CharacterCreationMain:doClothingCombo(definition, erasePrevious, ...)   
    if not self.clothingPanel then return; end     
    vanilla_doClothingCombo(self, {}, erasePrevious, ...) -- vanilla code
	if erasePrevious then
		if self.fas_clothingCombo then
			for i,v in pairs(self.fas_clothingCombo) do
				self.clothingPanel:removeChild(self.fas_clothingColorBtn[v.comboId]);
				self.clothingPanel:removeChild(self.fas_clothingTextureCombo[v.comboId]);
				self.clothingPanel:removeChild(self.fas_clothingComboLabel[v.comboId]);
                self.clothingPanel:removeChild(self.fas_clothingDecalCombo[v.comboId]);
				self.clothingPanel:removeChild(v);
			end
		end
		self.fas_clothingCombo = {};
		self.fas_clothingColorBtn = {};
		self.fas_clothingTextureCombo = {};
		self.fas_clothingComboLabel = {};
        self.fas_clothingDecalCombo = {}
		self.yOffset = self.originalYOffset;
	end
    for id, groupDefinition in pairs(FashionistaClothingGroups) do 
        local combo = nil

        -- ensure each group is valid
        local validLocations = {}
        for i, location in ipairs(groupDefinition.locations) do
            local items = getAllItemsForBodyLocation(location)
            if (items and #items > 0) then
                table.insert(validLocations, location)
            end
        end

        if (#validLocations > 0) then
            -- get / create combo
            if self.fas_clothingCombo then
                combo = self.fas_clothingCombo[id]
            end
            if not combo then 
                local displayName = getText("UI_ClothingType_" .. id)
                if displayName == "UI_ClothingType_" .. id then
                    displayName = id
                end
                self:fashionista_createClothingCombo(displayName, id, validLocations) -- use our custom method for the combo
                combo = self.fas_clothingCombo[id]
                combo:addOptionWithData(getText("UI_characreation_clothing_none"), {id = nil})
            end
            
            -- Get all items from all locations defined in this groupDefinition
            local clothingFromAllLocations = {}
            for i, location in ipairs(validLocations) do
                local items = getAllItemsForBodyLocation(location)
                for j, clothing in ipairs(items) do
                    local item = ScriptManager.instance:FindItem(clothing)
                    local displayName = item:getDisplayName()
                    -- ensure items matching the excluded keywords are excluded
                    if not (groupDefinition.excludedKeywords and coach_findStringInTable(groupDefinition.excludedKeywords, displayName)) then 
                        -- add to the list of clothing
                        table.insert(clothingFromAllLocations, {id = clothing, name = item:getDisplayName(), location = location})
                    end
                end
            end

            -- Sort items alphabetically by display name
            table.sort(clothingFromAllLocations, function(a,b)
                return a.name:upper() < b.name:upper()
            end)

            -- add options to combo for each item
            for i,clothing in ipairs(clothingFromAllLocations) do
                combo:addOptionWithData(clothing.name, {id = clothing.id, location = clothing.location})
            end
        end
    end
    self:updateSelectedClothingCombo();
    self.clothingPanel:setScrollHeight(self.yOffset)
end

-- create a custom clothing combo with support for multiple locations in one dropdown
---@public
---@param displayName string
---@param id string
---@param bodyLocations string[]
function CharacterCreationMain:fashionista_createClothingCombo(displayName, id, bodyLocations) 
	local comboHgt = FONT_HGT_SMALL + 3 * 2
	local x = 0
	
	if not self.clothingPanel then return; end
	
	local label = ISLabel:new(x + 70 + 70, self.yOffset, comboHgt, displayName, 1, 1, 1, 1, UIFont.Small)
	label:initialise()
	self.clothingPanel:addChild(label)
	
	local combo = ISComboBox:new(x + 90 + 70, self.yOffset, self.comboWid, comboHgt, self, self.fashionista_onClothingComboSelected)
    combo.comboId = id
    combo.bodyLocations = bodyLocations
	combo:initialise()
	self.clothingPanel:addChild(combo)
	
	local button = ISButton:new(combo:getRight() + 20, self.yOffset, 45, comboHgt, "", self)
	button:setOnClick(CharacterCreationMain.fashionista_onClothingColorClicked, bodyLocations, id)
	button.internal = color
	button:initialise()
	button.backgroundColor = {r = 1, g = 1, b = 1, a = 1}
	self.clothingPanel:addChild(button)
	
	local comboTexture = ISComboBox:new(combo:getRight() + 20, self.yOffset, 80, comboHgt, self, self.fashionista_onClothingTextureComboSelected, bodyLocations, id)
	comboTexture:initialise()
	self.clothingPanel:addChild(comboTexture)

    local comboDecal = ISComboBox:new(comboTexture:getRight() + 20, self.yOffset, self.comboWid, comboHgt, self, self.fashionista_onClothingDecalComboSelected, bodyLocations, id)
	comboDecal:initialise()
	self.clothingPanel:addChild(comboDecal)
	
	self.fas_clothingCombo = self.fas_clothingCombo or {}
	self.fas_clothingColorBtn = self.fas_clothingColorBtn or {}
    self.fas_clothingDecalCombo = self.fas_clothingDecalCombo or {}
	self.fas_clothingTextureCombo = self.fas_clothingTextureCombo or {}
	self.fas_clothingComboLabel = self.fas_clothingComboLabel or {}
	
	self.fas_clothingCombo[id] = combo
	self.fas_clothingColorBtn[id] = button
	self.fas_clothingTextureCombo[id] = comboTexture
	self.fas_clothingComboLabel[id] = label;
    self.fas_clothingDecalCombo[id] = comboDecal
	
	table.insert(self.clothingWidgets, { combo, button, comboTexture, comboDecal })
	
	self.yOffset = self.yOffset + comboHgt + 4
end

local vanilla_updateSelectedClothingCombo = CharacterCreationMain.updateSelectedClothingCombo
function CharacterCreationMain:updateSelectedClothingCombo()
    vanilla_updateSelectedClothingCombo(self) -- vanilla code
    if CharacterCreationMain.debug then return; end

    local desc = MainScreen.instance.desc;
	if self.fas_clothingCombo then
		for i,combo in pairs(self.fas_clothingCombo) do
			combo.selected = 1;
            -- hide the color button, texture combo and decal combo by default
            self.fas_clothingColorBtn[combo.comboId]:setVisible(false);
            self.fas_clothingTextureCombo[combo.comboId]:setVisible(false);
            self.fas_clothingDecalCombo[combo.comboId]:setVisible(false);
            local found = false
            for i,bodyLocation in ipairs(combo.bodyLocations) do
                local currentItem = desc:getWornItem(bodyLocation);
                if currentItem then
                    for j,v in ipairs(combo.options) do
                        if v.data.id == currentItem:getFullType() then -- we've found the item in the combo, update the color button, texture combo and decal combo to reflect the current item
                            combo.selected = j;
                            found = true
                            self:fashionista_updateColorButton(combo.comboId, currentItem);
                            self:fashionista_updateClothingTextureCombo(combo.comboId, currentItem);
                            self:fashionista_updateClothingDecalCombo(combo.comboId, currentItem);
                            break
                        end
                    end
                    if found then break end; -- we've found the item, no need to continue
                end
            end
            if not found then -- no clothing item in this slot, hide the color button, texture combo and decal combo
                self:fashionista_updateColorButton(combo.comboId, nil);
                self:fashionista_updateClothingTextureCombo(combo.comboId, nil);
                self:fashionista_updateClothingDecalCombo(combo.comboId, nil);
            end

		end
	end
end

function CharacterCreationMain:fashionista_updateColorButton(comboId, clothing)
	self.fas_clothingColorBtn[comboId]:setVisible(false);
	-- if the item can be colored we add the colorpicker button
	if clothing and clothing:getClothingItem():getAllowRandomTint() then -- has color support, show the color picker button
		self.fas_clothingColorBtn[comboId]:setVisible(true);
		-- update color of button
		local color = clothing:getVisual():getTint(clothing:getClothingItem())
		self.fas_clothingColorBtn[comboId].backgroundColor = {r = color:getRedFloat(), g = color:getGreenFloat(), b = color:getBlueFloat(), a = 1}
	end
end

function CharacterCreationMain:fashionista_updateClothingTextureCombo(comboId, clothing)
	self.fas_clothingTextureCombo[comboId]:setVisible(false);
	if not clothing then return end
	local clothingItem = clothing:getClothingItem()
	local textureChoices = clothingItem:hasModel() and clothingItem:getTextureChoices() or clothingItem:getBaseTextures()
	if textureChoices and (textureChoices:size() > 1) then -- has textures, show the texture combo with options
		local textureChoice = clothingItem:hasModel() and clothing:getVisual():getTextureChoice() or clothing:getVisual():getBaseTexture()
		local combo = self.fas_clothingTextureCombo[comboId];
		combo:setVisible(true);
		combo.options = {}
		for i=0,textureChoices:size() - 1 do
			local text = getText("UI_ClothingTextureType", i + 1)
			combo:addOptionWithData(text, textureChoices:get(i))
			if i == textureChoice then
				combo.selected = i + 1;
			end
		end
	end
end

function CharacterCreationMain:fashionista_updateClothingDecalCombo(comboId, clothing)
    self.fas_clothingDecalCombo[comboId]:setVisible(false);
	if not clothing then return end
	local clothingItem = clothing:getVisual():getClothingItem()
	if clothingItem and clothingItem:getDecalGroup() then -- has decal, show the decal combo with options
		local combo = self.fas_clothingDecalCombo[comboId];
		combo:setVisible(true);
		combo.options = {}
        local items = getAllDecalNamesForItem(clothing)
        for i=1,items:size() do
            combo:addOptionWithData(items:get(i-1), items:get(i-1))
        end
        local decalName = clothing:getVisual():getDecal(clothingItem)
        combo:select(decalName)
	end
end

-- when a clothing item is selected
function CharacterCreationMain:fashionista_onClothingComboSelected(combo)
    local data = combo:getOptionData(combo.selected)
	local itemType = data.id
    local desc = MainScreen.instance.desc
	if itemType then
		local item = InventoryItemFactory.CreateItem(itemType)
		if item then
			desc:setWornItem(data.location, item)
		end
	else -- selected "None", remove from all locations in this group
        for i, bodyLocation in ipairs(combo.bodyLocations) do
            desc:setWornItem(bodyLocation, nil)
        end
    end
	self:updateSelectedClothingCombo();
	
	CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
	self:disableBtn()
end

-- clicked on a color button, show the color picker
function CharacterCreationMain:fashionista_onClothingColorClicked(button, bodyLocations, id)
	self.colorPicker:setX(self.clothingPanel:getAbsoluteX() + self.clothingPanel:getXScroll() + button:getX() - self.colorPicker:getWidth())
	self.colorPicker:setY(self.clothingPanel:getAbsoluteY() + self.clothingPanel:getYScroll() + button:getY() + button:getHeight())
	self.colorPicker:setPickedFunc(CharacterCreationMain.fashionista_onClothingColorPicked, bodyLocations, id)
	local color = button.backgroundColor
	self.colorPicker:setInitialColor(ColorInfo.new(color.r, color.g, color.b, 1))
	self:removeChild(self.colorPicker)
	self:addChild(self.colorPicker)
	if self.clothingPanel.joyfocus then
		button:setJoypadFocused(false)
		self.clothingPanel.joyfocus.focus = self.colorPicker
	end
end

-- when a clothing color is selected
function CharacterCreationMain:fashionista_onClothingColorPicked(color, mouseUp, bodyLocations, id)
	self.fas_clothingColorBtn[id].backgroundColor = { r=color.r, g=color.g, b=color.b, a = 1 }
	local desc = MainScreen.instance.desc
	for i, bodyLocation in ipairs(bodyLocations) do
        local item = desc:getWornItem(bodyLocation)
        if item and item:getFullType() == self.fas_clothingCombo[id]:getOptionData(self.fas_clothingCombo[id].selected).id then
            local color2 = ImmutableColor.new(color.r, color.g, color.b, 1)
            item:getVisual():setTint(color2)
            CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
            break
        end
    end
end

-- when a clothing texture is selected
function CharacterCreationMain:fashionista_onClothingTextureComboSelected(combo, bodyLocations, id)
	local desc = MainScreen.instance.desc
	local textureName = combo:getOptionData(combo.selected)
	for i, bodyLocation in ipairs(bodyLocations) do
        local item = desc:getWornItem(bodyLocation)
        if textureName and item and item:getFullType() == self.fas_clothingCombo[id]:getOptionData(self.fas_clothingCombo[id].selected).id then
            if item:getClothingItem():hasModel() then
                item:getVisual():setTextureChoice(combo.selected - 1)
            else
                item:getVisual():setBaseTexture(combo.selected - 1)
            end
            break
        end
    end
	CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
	self:disableBtn()
end

-- when a clothing decal is selected
function CharacterCreationMain:fashionista_onClothingDecalComboSelected(combo, bodyLocations, id)
    local desc = MainScreen.instance.desc
    local decalName = combo:getOptionData(combo.selected)
    for i, bodyLocation in ipairs(bodyLocations) do
        local item = desc:getWornItem(bodyLocation)
        if decalName and item and item:getFullType() == self.fas_clothingCombo[id]:getOptionData(self.fas_clothingCombo[id].selected).id then
            item:getVisual():setDecal(decalName)
        end
    end
    CharacterCreationHeader.instance.avatarPanel:setSurvivorDesc(desc)
	self:disableBtn()
end

-- saving fashionista outfit
-- huge thanks to @razab for help with how to correctly extend this method without overriding it
local vanilla_saveBuildStep2 = CharacterCreationMain.saveBuildStep2
function CharacterCreationMain:saveBuildStep2(button, joypadData, param2, ...)                
    vanilla_saveBuildStep2(self, button, joypadData, param2, ...) -- vanilla code

    if button.internal == "CANCEL" then
        return
    end

    local savename = button.parent.entry:getText()
    if savename == '' then 
        return 
    end

    local builds = CharacterCreationMain.readSavedOutfitFile();
    local savestring = builds[savename]
    local desc = MainScreen.instance.desc;

    for comboId,v in pairs(self.fas_clothingCombo) do
        local data = v:getOptionData(v.selected)
        if data ~= nil then
            -- since we can have multiple bodyLocation's for each combo now, we need to find what body location the current combo option represents!
            for _, bodyLocation in ipairs(v.bodyLocations) do
                local currentItem = desc:getWornItem(bodyLocation);
                if currentItem and data.id == currentItem:getFullType() then
                    -- mostly the vanilla code, slightly tweaked to use our values but still the same format to ensure compatability with non-mod presets
                    savestring = savestring .. bodyLocation .. "=" .. data.id;
                    if self.fas_clothingColorBtn[comboId] and self.fas_clothingColorBtn[comboId]:isVisible() then
                        savestring = savestring .. "|" .. self.fas_clothingColorBtn[comboId].backgroundColor.r .. "," .. self.fas_clothingColorBtn[comboId].backgroundColor.g  .. "," .. self.fas_clothingColorBtn[comboId].backgroundColor.b;
                    end
                    if self.fas_clothingTextureCombo[comboId] and self.fas_clothingTextureCombo[comboId]:isVisible() then
                        savestring = savestring .. "|" .. self.fas_clothingTextureCombo[comboId].selected;
                    end
                    if (self.fas_clothingDecalCombo[comboId] and self.fas_clothingDecalCombo[comboId]:isVisible()) then
                        savestring = savestring .. "|" .. self.fas_clothingDecalCombo[comboId].selected;
                    end
                    savestring = savestring .. ";";
                    break
                end
            end
		end
    end

    builds[savename] = savestring;
	
	local options = {};
	CharacterCreationMain.writeSaveFile(builds);
	for key,val in pairs(builds) do
		options[key] = 1;
	end
	
	self.savedBuilds.options = {};
	local i = 1;
	for key,val in pairs(options) do
		table.insert(self.savedBuilds.options, key);
		if key == savename then
			self.savedBuilds.selected = i;
		end
		i = i + 1;
	end
end

-- loading fashionista outfit
local vanilla_loadOutfit = CharacterCreationMain.loadOutfit
function CharacterCreationMain:loadOutfit(box, ...)
    vanilla_loadOutfit(self, box, ...) -- vanilla code

    local name = box.options[box.selected];
    if name == nil then return end;      

    local saved_builds = CharacterCreationMain.readSavedOutfitFile();
    local build = saved_builds[name];
    if build == nil then return end;
    
	local items = luautils.split(build, ";");
	for i,v in pairs(items) do
		local location = luautils.split(v, "=");
		local options = nil;
		if location[2] then
			options = luautils.split(location[2], "|");
		end
        -- need to check which combo contains this body location, since my combos can represent multiple locations
        for comboId, combo in pairs(self.fas_clothingCombo) do 
            local found
            for _, bodyLocation in pairs(combo.bodyLocations) do
                if bodyLocation == location[1] then
                    local itemType = options[1];
                    self.fas_clothingCombo[comboId].selected = 1;
                    for optionIndex, opt in ipairs(self.fas_clothingCombo[comboId].options) do
                        if opt.data.id == itemType then
                            self.fas_clothingCombo[comboId].selected = optionIndex
                            break
                        end
                    end
                    self:fashionista_onClothingComboSelected(self.fas_clothingCombo[comboId]);
                    local comboDecal = self.fas_clothingDecalCombo[comboId]
                    if options[2] then
                        local comboTexture = self.fas_clothingTextureCombo[comboId]
                        local color = luautils.split(options[2], ",");
                        -- is it a color or a texture choice
                        if (#color == 3) and self.fas_clothingColorBtn[comboId] then -- it's a color
                            local colorRGB = {};
                            colorRGB.r = tonumber(color[1]);
                            colorRGB.g = tonumber(color[2]);
                            colorRGB.b = tonumber(color[3]);
                            self:fashionista_onClothingColorPicked(colorRGB, true, self.fas_clothingCombo[comboId].bodyLocations, comboId);
                        elseif comboTexture and comboTexture:isVisible() and comboTexture.options[tonumber(color[1])] then -- texture
                            comboTexture.selected = tonumber(color[1]);
                            self:fashionista_onClothingTextureComboSelected(self.fas_clothingTextureCombo[comboId], self.fas_clothingCombo[comboId].bodyLocations, comboId);
                        elseif comboDecal and comboDecal:isVisible() and comboDecal.options[tonumber(color[1])] then -- decal
                            comboDecal.selected = tonumber(color[1]);
                            self:fashionista_onClothingDecalComboSelected(self.fas_clothingDecalCombo[comboId], self.fas_clothingCombo[comboId].bodyLocations, comboId);
                        end
                    end
                    if options[3] then -- possible for a color AND decal
                        if comboDecal and comboDecal:isVisible() and comboDecal.options[tonumber(options[3])] then -- decal
                            comboDecal.selected = tonumber(options[3]);
                            self:fashionista_onClothingDecalComboSelected(self.fas_clothingDecalCombo[comboId], self.fas_clothingCombo[comboId].bodyLocations, comboId);
                        end
                    end
                    found = true
                    break
                end
            end
            if found then break end
        end
    end

end