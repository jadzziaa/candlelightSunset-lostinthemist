local ISPropertyDeedModal = ISPanel:derive("ISPropertyDeedModal")
require "lua_timers"

function ISPropertyDeedModal:createChildren()
	local yOffset = 10
	local xPadding = 10
	
	self.idform = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "Property Deed")) / 2, yOffset, 25, "Property Deed", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.idform)
	
	yOffset = yOffset + 35
	
	self.fullname = ISTextEntryBox:new("Full Name", xPadding, yOffset, 150, 25)
	self.fullname:initialise()
	self.fullname:instantiate()
	self.fullname:setOnlyNumbers(false)
	self:addChild(self.fullname)
	
	yOffset = yOffset + 35
	
	self.location = ISTextEntryBox:new("Location Name", xPadding, yOffset, 150, 25)
	self.location:initialise()
	self.location:instantiate()
	self.location:setOnlyNumbers(false)
	self:addChild(self.location)
	
	yOffset = yOffset + 35
	
	self.address = ISTextEntryBox:new("Address Number/Street", xPadding, yOffset, 150, 25)
	self.address:initialise()
	self.address:instantiate()
	self.address:setOnlyNumbers(false)
	self:addChild(self.address)
	
	yOffset = yOffset + 35
	
	self.towncitylabel = ISLabel:new(xPadding, yOffset, 25, "Town/City", 1, 1, 1, 1, UIFont.Medium, true)
	self:addChild(self.towncitylabel)
	
	yOffset = yOffset + 25
	
	self.towncity = ISComboBox:new(xPadding, yOffset, 150, 25)
	self.towncity:initialise()
	self.towncity:addOption("Louisville")
	self.towncity:addOption("Muldraugh")
	self.towncity:addOption("Riverside")
	self.towncity:addOption("Rosewood")
	self.towncity:addOption("West Point")
	self:addChild(self.towncity)
	
	yOffset = yOffset + 35
	
	self.print = ISButton:new(xPadding, yOffset, 150, 25, "PRINT", self, ISPropertyDeedModal.onOptionMouseDown)
	self.print.internal = "PRINT"
	self.print:initialise()
	self.print:instantiate()
	self:addChild(self.print)

	yOffset = yOffset + 35
	
	self.cancelButton = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), self, ISPropertyDeedModal.onOptionMouseDown)
	self.cancelButton.internal = "CANCEL"
	self.cancelButton:initialise()
	self.cancelButton:instantiate()
	self:addChild(self.cancelButton)
end

function ISPropertyDeedModal:onOptionMouseDown(button, x, y)
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

function ISPropertyDeedModal:doPrint()
	local form1 = InventoryItemFactory.CreateItem(".PropertyDeed")
	local form2 = InventoryItemFactory.CreateItem(".PropertyDeed")
	local formContents = "The Property of " .. tostring(self.location:getText()) .. ",\nLocated on " .. tostring(self.address:getText()) .. ", " .. tostring(self.towncity:getSelectedText()) .. ", Kentucky" .. "\nHereby belongs to\n\n" .. tostring(self.fullname:getText())
	
	form1:setName("Original Property Deed of " .. tostring(self.location:getText()))
	form1:setCanBeWrite(true)
	form1:addPage(1, formContents)
	form1:setLockedBy(getPlayer():getUsername())
	
	form2:setName("Copied Property Deed of " .. tostring(self.location:getText()))
	form2:setCanBeWrite(true)
	form2:addPage(1, formContents)
	form2:setLockedBy(getPlayer():getUsername())

	getPlayer():getInventory():AddItem(form1)
	getPlayer():getInventory():AddItem(form2)
end

function ISPropertyDeedModal:render()

end

function ISPropertyDeedModal:assignRemovalIndex(index)
	self.removalIndex = index
end

function ISPropertyDeedModal:close()
	self.instance.mainMenu:removeOpenPanel(self.removalIndex, self:toString())
    self:setVisible(false)
    self:removeFromUIManager()
end

function ISPropertyDeedModal:new(x, y, width, height, mainMenu)
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
	ISPropertyDeedModal.instance = o
	return o
end

return ISPropertyDeedModal
