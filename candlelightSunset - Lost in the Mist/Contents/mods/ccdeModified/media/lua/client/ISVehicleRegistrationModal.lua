local ISVehicleRegistrationModal = ISPanel:derive("ISVehicleRegistrationModal")
require "lua_timers"

function ISVehicleRegistrationModal:createChildren()
	local yOffset = 10
	local xPadding = 10
	
	self.idform = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "Vehicle Registration")) / 2, yOffset, 25, "Vehicle Registration", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.idform)
	
	yOffset = yOffset + 35
	
	self.fullname = ISTextEntryBox:new("Full Name", xPadding, yOffset, 150, 25)
	self.fullname:initialise()
	self.fullname:instantiate()
	self.fullname:setOnlyNumbers(false)
	self:addChild(self.fullname)
	
	yOffset = yOffset + 35
	
	self.plates = ISTextEntryBox:new("Plates", xPadding, yOffset, 150, 25)
	self.plates:initialise()
	self.plates:instantiate()
	self.plates:setOnlyNumbers(false)
	self:addChild(self.plates)
	
	yOffset = yOffset + 35
	
	self.color = ISTextEntryBox:new("Color", xPadding, yOffset, 150, 25)
	self.color:initialise()
	self.color:instantiate()
	self.color:setOnlyNumbers(false)
	self:addChild(self.color)
	
	yOffset = yOffset + 35
	
	self.make = ISTextEntryBox:new("Make", xPadding, yOffset, 150, 25)
	self.make:initialise()
	self.make:instantiate()
	self.make:setOnlyNumbers(false)
	self:addChild(self.make)
	
	yOffset = yOffset + 35
	
	self.model = ISTextEntryBox:new("Model", xPadding, yOffset, 150, 25)
	self.model:initialise()
	self.model:instantiate()
	self.model:setOnlyNumbers(false)
	self:addChild(self.model)
	
	yOffset = yOffset + 35
	
	self.year = ISTextEntryBox:new("Year", xPadding, yOffset, 150, 25)
	self.year:initialise()
	self.year:instantiate()
	self.year:setOnlyNumbers(false)
	self:addChild(self.year)
	
	yOffset = yOffset + 35
	
	self.print = ISButton:new(xPadding, yOffset, 150, 25, "PRINT", self, ISVehicleRegistrationModal.onOptionMouseDown)
	self.print.internal = "PRINT"
	self.print:initialise()
	self.print:instantiate()
	self:addChild(self.print)

	yOffset = yOffset + 35
	
	self.cancelButton = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), self, ISVehicleRegistrationModal.onOptionMouseDown)
	self.cancelButton.internal = "CANCEL"
	self.cancelButton:initialise()
	self.cancelButton:instantiate()
	self:addChild(self.cancelButton)
end

function ISVehicleRegistrationModal:onOptionMouseDown(button, x, y)
	if button.internal == "CANCEL" then
		self:close()
	elseif button.internal == "PRINT" and self.mainMenu.isPrinting == false then
		self.mainMenu.isPrinting = true
		getSoundManager():PlayWorldSound("ccdeTypingLong", self.mainMenu.computer:getSquare(), 0, 8, 1, false)
		
		timer:Simple(3, function()
			getSoundManager():PlayWorldSound("ccdePrinting", self.mainMenu.computer:getSquare(), 0, 8, 1, false)
			
			timer:Simple(6, function()
				self:doPrint()
				self.mainMenu.isPrinting = false
			end)
		end)
		
		self:close()
	end
end

function ISVehicleRegistrationModal:doPrint()
	local form1 = InventoryItemFactory.CreateItem(".VehicleRegistration")
	local form2 = InventoryItemFactory.CreateItem(".VehicleRegistration")
	local formContents = "Color: " .. tostring(self.color:getText()) .. "\nPlates: " .. tostring(self.plates:getText()) .. "\nMake: " .. tostring(self.make:getText()) .. "\nModel:" .. tostring(self.model:getText()) .. "\nYear: " .. tostring(self.year:getText())
	
	form1:setName(tostring(self.fullname:getText()))
	form1:setCanBeWrite(true)
	form1:addPage(1, formContents)
	form1:setLockedBy(getPlayer():getUsername())
	
	form2:setName(tostring(self.fullname:getText()))
	form2:setCanBeWrite(true)
	form2:addPage(1, formContents)
	form2:setLockedBy(getPlayer():getUsername())

	getPlayer():getInventory():AddItem(form1)
	getPlayer():getInventory():AddItem(form2)
end

function ISVehicleRegistrationModal:render()

end

function ISVehicleRegistrationModal:assignRemovalIndex(index)
	self.removalIndex = index
end

function ISVehicleRegistrationModal:close()
	self.instance.mainMenu:removeOpenPanel(self.removalIndex, self:toString())
    self:setVisible(false)
    self:removeFromUIManager()
end

function ISVehicleRegistrationModal:new(x, y, width, height, mainMenu)
	local o = {}
	o = ISPanel:new(x, y, width, height)
	setmetatable(o, self)
	self.__index = self
	o.variableColor = {r=0.9, g=0.55, b=0.1, a=1}
	o.borderColor = {r=0.4, g=0.4, b=0.4, a=1}
	o.backgroundColor = {r=0, g=0, b=0, a=0.8}
	o.buttonBorderColor = {r=0.7, g=0.7, b=0.7, a=0.5}
	o.moveWithMouse = true
	o.mainMenu = mainMenu
	ISVehicleRegistrationModal.instance = o
	return o
end

return ISVehicleRegistrationModal
