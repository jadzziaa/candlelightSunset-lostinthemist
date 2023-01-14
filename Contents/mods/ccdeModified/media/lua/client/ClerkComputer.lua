CCDE = {
	subContext = {}
}

local ISShowDataEntryUI = require "ISShowDataEntryUI"
local ISShowDatabaseUI = require "ISShowDatabaseUI"
local ISEditDataEntryUI = require "ISEditDataEntryUI"
local UI_SCALE = getTextManager():getFontHeight(UIFont.Small) / 14

local function onEditClerkComputer(computer, ccdeData, access)
	local computerMenu = ISEditDataEntryUI:new((getCore():getScreenWidth() - 400 * UI_SCALE) / 2, (getCore():getScreenHeight() - 600 * UI_SCALE) / 2, 170, 500, computer, ccdeData, access)
	computerMenu:initialise()
	computerMenu:addToUIManager()
end

local function onViewClerkComputer(computer, ccdeData)
	local computerMenu = ISShowDataEntryUI:new((getCore():getScreenWidth() - 400 * UI_SCALE) / 2, (getCore():getScreenHeight() - 600 * UI_SCALE) / 2, 170, 500, computer, ccdeData)
	
	computerMenu:initialise()
	computerMenu:addToUIManager()
	getPlayer():getEmitter():playSoundImpl("ccdeTypingEnter", nil)
end

local function onCreateClerkComputer(object, player)
	local square = object:getSquare()
	
	square:transmitRemoveItemFromSquare(object)
	
	local properties = object:getProperties()
	local newObject = IsoThumpable.new(object:getCell(), square, object:getSprite():getName(), properties:Is("collideN"), nil)
	
	newObject:setBlockAllTheSquare(properties:Is("collideN") and properties:Is("collideW"))
	newObject:setIsThumpable(properties:Is("collideN") or properties:Is("collideW"))
	newObject:setThumpDmg(0)
	
	local ccdeData = {}
	
	ccdeData.owner = player:getUsername()
	ccdeData.coowners = {}
	ccdeData.name = "Clerk Computer"
	ccdeData.UUID = getRandomUUID()
	newObject:getModData()["ccdeData"] = ccdeData
	square:AddSpecialObject(newObject)
	newObject:transmitCompleteItemToServer()
	newObject:transmitModData()
	player:getInventory():Remove("ClerkComputer")
end

local function OnFillWorldObjectContextMenu(player, context, worldObjects, test)
	local playerObj = getSpecificPlayer(player)
	local hasClerkComputer = playerObj:getInventory():containsType("ClerkComputer")
	local ccdeData = ModData.get("ccdeData")
	
	if clickedSquare then
		computer = ComputerMod.GetComputerOnSquare(clickedSquare)

		if not computer then
			for i = 1, #worldObjects do
				if ComputerMod.isComputer(worldObjects[i]) then
					computer = worldObjects[i]
					break
				end
			end
		end

		if not computer then
			local sx, sy, sz = clickedSquare:getX(), clickedSquare:getY(), clickedSquare:getZ()
			local square = getCell():getGridSquare(sx + 1, sy + 1, sz)
			
			if square then
				computer = ComputerMod.GetComputerOnSquare(square)
			end
		end
		
		if computer then
			if (not computer:getModData()["ccdeData"] and hasClerkComputer) then
				context:addOptionOnTop("Convert To Clerk Computer", computer, onCreateClerkComputer, playerObj, player)
			else
				local state = ComputerMod.isComputerOn(computer)
				
				if ComputerMod.isComputerPowered(computer) and state == true then
					local option = context:addOptionOnTop("Clerk Computer")
					CCDE.subContext = ISContextMenu:getNew(context)
					context:addSubMenu(option, CCDE.subContext)
					
					if (not playerObj:isAccessLevel('None') or isDebugEnabled()) then
						CCDE.subContext:addOption("(ADMIN) Edit Permissions", computer, onEditClerkComputer, computer, ccdeData, 'admin')
					end
					
					CCDE.subContext:addOption("Access Computer", computer, onViewClerkComputer, computer, ccdeData)
				end
			end
		end
	end
end

Events.OnFillWorldObjectContextMenu.Add(OnFillWorldObjectContextMenu)
