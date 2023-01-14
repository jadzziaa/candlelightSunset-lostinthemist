local ISShowDataEntryUI = ISPanel:derive("ISShowDataEntryUI")
local ISIdentificationModal = require "ISIdentificationModal"
local ISDriversLicenseModal = require "ISDriversLicenseModal"
local ISPropertyDeedModal = require "ISPropertyDeedModal"
local ISVehicleRegistrationModal = require "ISVehicleRegistrationModal"
local ISBusinessContractModal = require "ISBusinessContractModal"
local ISLoanAgreementModal = require "ISLoanAgreementModal"
local ISFormsFormsModal = require "ISFormsFormsModal"
require "lua_timers"

local instance
local permissions

local function OnReceiveGlobalModData(module, packet)
	if module ~= "ccdeData" then return end
	
	if (packet) then
		ModData.add(module, packet)
	end
end

Events.OnReceiveGlobalModData.Add(OnReceiveGlobalModData)

function ISShowDataEntryUI:initialise()
    self.isPrinting = false
	ISPanel.initialise(self)
    self:create()
end

function ISShowDataEntryUI:setVisible(visible)
    self.javaObject:setVisible(visible)
end

function ISShowDataEntryUI:render()

end

local function OnPlayerMove(player)
	if player:isLocalPlayer() and player:DistToProper(instance.computer) > 2 then
		instance:close()
	end
end

function ISShowDataEntryUI:create()
	instance = ISShowDataEntryUI.instance
	local yOffset = 10
	local xPadding = 10
	
	self.clerkcomputer = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "Clerk Computer")) / 2, yOffset, 25, "Clerk Computer", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.clerkcomputer)
	
	yOffset = yOffset + 35
	
	self.formsheader = ISLabel:new(xPadding, yOffset, 25, "Logging in...", 1, 1, 1, 1, UIFont.Medium, true)
	self:addChild(self.formsheader)
	
	yOffset = yOffset + 35
	
	self.cancel = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), menu, instance.onOptionMouseDown)
	self.cancel.internal = "CANCEL"
	self.cancel:initialise()
	self.cancel:instantiate()
	self:addChild(self.cancel)
	
	getSoundManager():PlayWorldSound("ccdeTypingEnter", instance.computer:getSquare(), 0, 8, 1, false)
	Events.OnPlayerMove.Add(OnPlayerMove)
	ModData.request("ccdeData")
	
	timer:Simple(2, function()
		if (instance) then
			instance:login(self, xPadding, yOffset)
		end
	end)
end

function ISShowDataEntryUI:login(menu, xPadding, yOffset)
	permissions = ModData.get("ccdeData")[getPlayer():getUsername()] or "Access Denied"
	
	if (permissions == "Access Denied") then
		instance.formsheader:setName("Access Denied")
		return
	else
		yOffset = yOffset - 35
		menu:removeChild(menu.cancel)
	end
	
	instance.formsheader:setName("Forms")
	
	yOffset = yOffset + 25
	
    self.identificationButton = ISButton:new(xPadding, yOffset, 150, 25, (permissions.id and "" or "[X] ") .. "Identification", menu, instance.onOptionMouseDown)
    self.identificationButton.internal = "IDENTIFICATION"
    self.identificationButton:initialise()
    self.identificationButton:instantiate()
    menu:addChild(self.identificationButton)
	
	yOffset = yOffset + 35
	
    self.driversLicenseButton = ISButton:new(xPadding, yOffset, 150, 25, (permissions.dl and "" or "[X] ") .. "Driver's License", menu, instance.onOptionMouseDown)
    self.driversLicenseButton.internal = "DRIVERSLICENSE"
    self.driversLicenseButton:initialise()
    self.driversLicenseButton:instantiate()
    menu:addChild(self.driversLicenseButton)
	
	yOffset = yOffset + 35
	
    self.propertyDeedButton = ISButton:new(xPadding, yOffset, 150, 25, (permissions.pd and "" or "[X] ") .. "Property Deed", menu, instance.onOptionMouseDown)
    self.propertyDeedButton.internal = "PROPERTYDEED"
    self.propertyDeedButton:initialise()
    self.propertyDeedButton:instantiate()
    menu:addChild(self.propertyDeedButton)
	
	yOffset = yOffset + 35
	
    self.vehicleRegistrationButton = ISButton:new(xPadding, yOffset, 150, 25, (permissions.vr and "" or "[X] ") .. "Vehicle Registration", menu, instance.onOptionMouseDown)
    self.vehicleRegistrationButton.internal = "VEHICLEREGISTRATION"
    self.vehicleRegistrationButton:initialise()
    self.vehicleRegistrationButton:instantiate()
    menu:addChild(self.vehicleRegistrationButton)
	
	yOffset = yOffset + 35
	
    self.businessContractButton = ISButton:new(xPadding, yOffset, 150, 25, (permissions.bc and "" or "[X] ") .. "Business Contract", menu, instance.onOptionMouseDown)
    self.businessContractButton.internal = "BUSINESSCONTRACT"
    self.businessContractButton:initialise()
    self.businessContractButton:instantiate()
    menu:addChild(self.businessContractButton)
	
	yOffset = yOffset + 35
	
    self.loanAgreementButton = ISButton:new(xPadding, yOffset, 150, 25, (permissions.la and "" or "[X] ") .. "Loan Agreement", menu, instance.onOptionMouseDown)
    self.loanAgreementButton.internal = "LOANAGREEMENT"
    self.loanAgreementButton:initialise()
    self.loanAgreementButton:instantiate()
    menu:addChild(self.loanAgreementButton)
	
	yOffset = yOffset + 35
	
    self.formsFormsButton = ISButton:new(xPadding, yOffset, 150, 25, (permissions.ff and "" or "[X] ") .. "Forms", menu, instance.onOptionMouseDown)
    self.formsFormsButton.internal = "FORMS"
    self.formsFormsButton:initialise()
    self.formsFormsButton:instantiate()
    menu:addChild(self.formsFormsButton)
	
	yOffset = yOffset + 35
	
	self.soundfx = ISLabel:new(xPadding, yOffset, 25, "Sound Effects", 1, 1, 1, 1, UIFont.Medium, true)
	menu:addChild(self.soundfx)
	
	yOffset = yOffset + 25
	
    self.typingShortButton = ISButton:new(xPadding, yOffset, 150, 25, "Play Typing (Short)", menu, instance.onOptionMouseDown)
    self.typingShortButton.internal = "PLAYTYPINGSHORT"
    self.typingShortButton:initialise()
    self.typingShortButton:instantiate()
    menu:addChild(self.typingShortButton)
	
	yOffset = yOffset + 35
	
    self.typingLongButton = ISButton:new(xPadding, yOffset, 150, 25, "Play Typing (Long)", menu, instance.onOptionMouseDown)
    self.typingLongButton.internal = "PLAYTYPINGLONG"
    self.typingLongButton:initialise()
    self.typingLongButton:instantiate()
    menu:addChild(self.typingLongButton)
	
	yOffset = yOffset + 35
	
    self.typingEnterButton = ISButton:new(xPadding, yOffset, 150, 25, "Play Typing (Enter)", menu, instance.onOptionMouseDown)
    self.typingEnterButton.internal = "PLAYTYPINGENTER"
    self.typingEnterButton:initialise()
    self.typingEnterButton:instantiate()
    menu:addChild(self.typingEnterButton)
	
	yOffset = yOffset + 35
	
    self.cancel = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), menu, instance.onOptionMouseDown)
    self.cancel.internal = "CANCEL"
    self.cancel:initialise()
    self.cancel:instantiate()
    menu:addChild(self.cancel)
end

local openPanels = {
	left = {},
	right = {}
}

function ISShowDataEntryUI:calculateSidePosition(absoluteX, width)
	if (#openPanels.left >= #openPanels.right) then
		return absoluteX + width * (#openPanels.right + 1)
	elseif (#openPanels.left < #openPanels.right) then
		return absoluteX - width * (#openPanels.left + 1)
	end
end

function ISShowDataEntryUI:addOpenPanel(panel)
	if (#openPanels.left >= #openPanels.right) then
		table.insert(openPanels.right, panel)
		return #openPanels.right
	else
		table.insert(openPanels.left, panel)
		return #openPanels.left
	end
end

function ISShowDataEntryUI:removeOpenPanel(removalIndex, panel)
	if (openPanels.right[removalIndex] == panel) then
		openPanels.right[removalIndex] = nil
	elseif (openPanels.left[removalIndex] == panel) then
		openPanels.left[removalIndex] = nil
	end
end

function ISShowDataEntryUI:onOptionMouseDown(button, x, y)
	if button.internal == "CANCEL" then
		if instance.identificationModal then
			instance.identificationModal:close()
		end
		
		if instance.driversLicenseModal then
			instance.driversLicenseModal:close()
		end
		
		if instance.propertyDeedModal then
			instance.propertyDeedModal:close()
		end
		
		if instance.vehicleRegistrationModal then
			instance.vehicleRegistrationModal:close()
		end
		
		if instance.businessContractModal then
			instance.businessContractModal:close()
		end
		
		if instance.loanAgreementModal then
			instance.loanAgreementModal:close()
		end
		
		if instance.formsFormsModal then
			instance.formsFormsModal:close()
		end

		instance:close()
	else
		if button.internal == "IDENTIFICATION" and permissions.id == true then
			if instance.identificationModal then
				instance.identificationModal:close()
			end
			
			instance.identificationModal = ISIdentificationModal:new(ISShowDataEntryUI:calculateSidePosition(instance:getAbsoluteX(), instance.width), instance:getAbsoluteY(), 170, 500, instance)
			instance.identificationModal:initialise()
			instance.identificationModal:addToUIManager()
			local index = instance:addOpenPanel(instance.identificationModal:toString())
			instance.identificationModal:assignRemovalIndex(index)
			getSoundManager():PlayWorldSound("ccdeTypingShort", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "DRIVERSLICENSE" and permissions.dl == true then
			if instance.driversLicenseModal then
				instance.driversLicenseModal:close()
			end
			
			instance.driversLicenseModal = ISDriversLicenseModal:new(ISShowDataEntryUI:calculateSidePosition(instance:getAbsoluteX(), instance.width), instance:getAbsoluteY(), 170, 500, instance)
			instance.driversLicenseModal:initialise()
			instance.driversLicenseModal:addToUIManager()
			local index = instance:addOpenPanel(instance.driversLicenseModal:toString())
			instance.driversLicenseModal:assignRemovalIndex(index)
			getSoundManager():PlayWorldSound("ccdeTypingShort", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "PROPERTYDEED" and permissions.pd == true then
			if instance.propertyDeedModal then
				instance.propertyDeedModal:close()
			end
			
			instance.propertyDeedModal = ISPropertyDeedModal:new(ISShowDataEntryUI:calculateSidePosition(instance:getAbsoluteX(), instance.width), instance:getAbsoluteY(), 170, 500, instance)
			instance.propertyDeedModal:initialise()
			instance.propertyDeedModal:addToUIManager()
			local index = instance:addOpenPanel(instance.propertyDeedModal:toString())
			instance.propertyDeedModal:assignRemovalIndex(index)
			getSoundManager():PlayWorldSound("ccdeTypingShort", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "VEHICLEREGISTRATION" and permissions.vr == true then
			if instance.vehicleRegistrationModal then
				instance.vehicleRegistrationModal:close()
			end
			
			instance.vehicleRegistrationModal = ISVehicleRegistrationModal:new(ISShowDataEntryUI:calculateSidePosition(instance:getAbsoluteX(), instance.width), instance:getAbsoluteY(), 170, 500, instance)
			instance.vehicleRegistrationModal:initialise()
			instance.vehicleRegistrationModal:addToUIManager()
			local index = instance:addOpenPanel(instance.vehicleRegistrationModal:toString())
			instance.vehicleRegistrationModal:assignRemovalIndex(index)
			getSoundManager():PlayWorldSound("ccdeTypingShort", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "BUSINESSCONTRACT" and permissions.bc == true then
			if instance.businessContractModal then
				instance.businessContractModal:close()
			end
			
			instance.businessContractModal = ISBusinessContractModal:new(ISShowDataEntryUI:calculateSidePosition(instance:getAbsoluteX(), instance.width), instance:getAbsoluteY(), 170, 500, instance)
			instance.businessContractModal:initialise()
			instance.businessContractModal:addToUIManager()
			local index = instance:addOpenPanel(instance.businessContractModal:toString())
			instance.businessContractModal:assignRemovalIndex(index)
			getSoundManager():PlayWorldSound("ccdeTypingShort", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "LOANAGREEMENT" and permissions.la == true then
			if instance.loanAgreementModal then
				instance.loanAgreementModal:close()
			end
			
			instance.loanAgreementModal = ISLoanAgreementModal:new(ISShowDataEntryUI:calculateSidePosition(instance:getAbsoluteX(), instance.width), instance:getAbsoluteY(), 170, 500, instance)
			instance.loanAgreementModal:initialise()
			instance.loanAgreementModal:addToUIManager()
			local index = instance:addOpenPanel(instance.loanAgreementModal:toString())
			instance.loanAgreementModal:assignRemovalIndex(index)
		elseif button.internal == "FORMS" and permissions.ff == true then
			if instance.formsFormsModal then
				instance.formsFormsModal:close()
			end
			
			instance.formsFormsModal = ISFormsFormsModal:new(ISShowDataEntryUI:calculateSidePosition(instance:getAbsoluteX(), instance.width), instance:getAbsoluteY(), 170, 500, instance)
			instance.formsFormsModal:initialise()
			instance.formsFormsModal:addToUIManager()
			local index = instance:addOpenPanel(instance.formsFormsModal:toString())
			instance.formsFormsModal:assignRemovalIndex(index)
			getSoundManager():PlayWorldSound("ccdeTypingShort", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "PLAYTYPINGSHORT" then
			getSoundManager():PlayWorldSound("ccdeTypingShort", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "PLAYTYPINGLONG" then
			getSoundManager():PlayWorldSound("ccdeTypingLong", instance.computer:getSquare(), 0, 8, 1, false)
		elseif button.internal == "PLAYTYPINGENTER" then
			getSoundManager():PlayWorldSound("ccdeTypingEnter", instance.computer:getSquare(), 0, 8, 1, false)
		end
	end
end

function ISShowDataEntryUI:close()
	Events.OnPlayerMove.Remove(OnPlayerMove)
	
	if instance.identificationModal then
		instance.identificationModal:close()
	end
	
	if instance.driversLicenseModal then
		instance.driversLicenseModal:close()
	end
	
	if instance.propertyDeedModal then
		instance.propertyDeedModal:close()
	end
	
	if instance.vehicleRegistrationModal then
		instance.vehicleRegistrationModal:close()
	end
	
	if instance.businessContractModal then
		instance.businessContractModal:close()
	end
	
	if instance.loanAgreementModal then
		instance.loanAgreementModal:close()
	end
	
	if instance.formsFormsModal then
		instance.formsFormsModal:close()
	end
	
	openPanels = {
		left = {},
		right = {}
	}
	
	instance:setVisible(false)
	instance:removeFromUIManager()
	ISShowDataEntryUI.instance = nil
end

function ISShowDataEntryUI:new(x, y, width, height, computer, ccdeData)
    local o = {}
    o = ISPanel:new(x, y, width, height)
    setmetatable(o, self)
    self.__index = self
    o.variableColor={r=0.9, g=0.55, b=0.1, a=1}
    o.borderColor = {r=0.4, g=0.4, b=0.4, a=1}
    o.backgroundColor = {r=0, g=0, b=0, a=0.8}
    o.buttonBorderColor = {r=0.7, g=0.7, b=0.7, a=0.5}
    o.moveWithMouse = true
    o.computer = computer
	o.ccdeData = ccdeData
	o.permissions = "Access Denied"
    ISShowDataEntryUI.instance = o
    return o
end

return ISShowDataEntryUI