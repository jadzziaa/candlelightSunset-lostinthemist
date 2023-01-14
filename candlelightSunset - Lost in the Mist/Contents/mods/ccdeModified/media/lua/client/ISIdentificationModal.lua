local ISIdentificationModal = ISPanel:derive("ISIdentificationModal")
require "lua_timers"

local gTime = getGameTime();
local year = gTime:getYear()
local month = gTime:getMonth()+1
local day = gTime:getDay()+1
local textdate = string.format("%i/%i/%i", month, day, year+15)
local textdate1 = string.format("%i/%i/%i", month, day, year+16)
local randomno1 = ZombRand(90)+10

function FIL_RandomNumber()
	return ZombRand(90)+10
end

function ISIdentificationModal:createChildren()
	local yOffset = 10
	local xPadding = 10
	
	self.idform = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "Identification")) / 2, yOffset, 25, "Identification", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.idform)
	
	yOffset = yOffset + 25
	
	self.fullname = ISTextEntryBox:new("Full Name", xPadding, yOffset, 150, 25)
	self.fullname:initialise()
	self.fullname:instantiate()
	self.fullname:setOnlyNumbers(false)
	self:addChild(self.fullname)
	
	yOffset = yOffset + 25
	
	self.age = ISTextEntryBox:new("Age", xPadding, yOffset, 150, 25)
	self.age:initialise()
	self.age:instantiate()
	self.age:setOnlyNumbers(false)
	self:addChild(self.age)
	
	yOffset = yOffset + 25
	
	self.dob = ISTextEntryBox:new("Date of birth", xPadding, yOffset, 150, 25)
	self.dob:initialise()
	self.dob:instantiate()
	self.dob:setOnlyNumbers(false)
	self:addChild(self.dob)
	
	yOffset = yOffset + 25
	
	self.cheight = ISTextEntryBox:new("Height", xPadding, yOffset, 150, 25)
	self.cheight:initialise()
	self.cheight:instantiate()
	self.cheight:setOnlyNumbers(false)
	self:addChild(self.cheight)
	
	yOffset = yOffset + 25
	
	self.hair = ISTextEntryBox:new("Hair color", xPadding, yOffset, 150, 25)
	self.hair:initialise()
	self.hair:instantiate()
	self.hair:setOnlyNumbers(false)
	self:addChild(self.hair)
	
	yOffset = yOffset + 25
	
	self.eyes = ISTextEntryBox:new("Eye color", xPadding, yOffset, 150, 25)
	self.eyes:initialise()
	self.eyes:instantiate()
	self.eyes:setOnlyNumbers(false)
	self:addChild(self.eyes)
	
	yOffset = yOffset + 25
	
	self.liccheader = ISLabel:new(xPadding, yOffset, 25, "Licence Class", 1, 1, 1, 1, UIFont.Medium, true)
	self:addChild(self.liccheader)
	
	yOffset = yOffset + 25
	
	self.licc = ISComboBox:new(xPadding, yOffset, 150, 25)
	self.licc:initialise()
	self.licc:addOption("Q  - 1")
	self.licc:addOption("A  - 9")
	self.licc:addOption("B  - 8")
	self.licc:addOption("C  - 7")
	self.licc:addOption("MJ - 4")
	self:addChild(self.licc)
	
	yOffset = yOffset + 25
	
	self.endo = ISLabel:new(xPadding, yOffset, 25, "Endorsment", 1, 1, 1, 1, UIFont.Medium, true)
	self:addChild(self.endo)
	
	yOffset = yOffset + 25
	
	self.endo = ISComboBox:new(xPadding, yOffset, 150, 25)
	self.endo:initialise()
	self.endo:addOption("MCH  - 1")
	self.endo:addOption("MDL  - 2")
	self.endo:addOption("PLC  - 3")
	self.endo:addOption("ADM  - 4")
	self.endo:addOption("TLR  - 5")
	self.endo:addOption("M    - 6")
	self.endo:addOption("TRP  - 7")
	self.endo:addOption("UNK  - 8")
	self.endo:addOption("MISC - 9")
	self:addChild(self.endo)
	
	yOffset = yOffset + 25
	
	self.rest = ISLabel:new(xPadding, yOffset, 25, "Restrictions", 1, 1, 1, 1, UIFont.Medium, true)
	self:addChild(self.rest)
	
	yOffset = yOffset + 25
	
	self.rest = ISComboBox:new(xPadding, yOffset, 150, 25)
	self.rest:initialise()
	self.rest:addOption("FPA - 2")
	self.rest:addOption("RAA - 3")
	self.rest:addOption("AWC - 4")
	self:addChild(self.rest)
	
	yOffset = yOffset + 25
	
	self.aff = ISLabel:new(xPadding, yOffset, 25, "Affiliation", 1, 1, 1, 1, UIFont.Medium, true)
	self:addChild(self.aff)
	
	yOffset = yOffset + 25
	
	self.aff = ISComboBox:new(xPadding, yOffset, 150, 25)
	self.aff:initialise()
	self.aff:addOption("EN")
	self.aff:addOption("LA")
	self.aff:addOption("AB")
	self.aff:addOption("HJ")
	self.aff:addOption("NM")
	self.aff:addOption("PL")
	self.aff:addOption("RM")
	self.aff:addOption("OO")
	self:addChild(self.aff)
	
	yOffset = yOffset + 40
	
	self.print = ISButton:new(xPadding, yOffset, 150, 25, "PRINT", self, ISIdentificationModal.onOptionMouseDown)
	self.print.internal = "PRINT"
	self.print:initialise()
	self.print:instantiate()
	self:addChild(self.print)

	yOffset = yOffset + 35
	
	self.cancelButton = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), self, ISIdentificationModal.onOptionMouseDown)
	self.cancelButton.internal = "CANCEL"
	self.cancelButton:initialise()
	self.cancelButton:instantiate()
	self:addChild(self.cancelButton)
end

function ISIdentificationModal:onOptionMouseDown(button, x, y)
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

function ISIdentificationModal:doPrint()
	local form1 = InventoryItemFactory.CreateItem(".IdentificationCard")
	local form2 = InventoryItemFactory.CreateItem(".IdentificationCard")
	local formContents = "The City of Raven Creek" .. "\n======================================================" .. "\n " .. "\nLicence: " .. tostring(self.aff:getSelectedText()):sub(1, -2) .. tostring(self.age:getText()) .. tostring(self.licc:getSelectedText()):sub(6, -1) .. tostring(self.rest:getSelectedText()):sub(7, -1) .. tostring(self.endo:getSelectedText()):sub(8,-1) .. FIL_RandomNumber() .. "                                         Issued On: " .. textdate .. "\nName: " .. tostring(self.fullname:getText()) .. "                                 Expires On: " .. textdate1 .. "\nDoB: " .. tostring(self.dob:getText()) .. "                                                            Height: " .. tostring(self.cheight:getText()) .. "\nHair: " .. tostring(self.hair:getText()) .. "                                                                                Eyes: " .. tostring(self.eyes:getText()) .. "\n---------------------------------------------------------------------------------" .. "\n " .. "\nClass: " ..tostring(self.licc:getSelectedText()):sub(1,-5) .. "                                                                  Endorsements: " .. tostring(self.endo:getSelectedText()):sub(1,-5) .. "\nRestrictions: " .. tostring(self.rest:getSelectedText()):sub(1, -5) .. "                                                    Affiliation: " .. tostring(self.aff:getSelectedText()) .. "\n " .. "\n                 This license serves as legal identification within the " .. "\n                metropolitan area of Raven Creek, Kentucky 90756"
	
	form1:setName("ID - " .. tostring(self.fullname:getText()))
	form1:setCanBeWrite(true)
	form1:addPage(1, formContents)
	form1:setLockedBy(getPlayer():getUsername())
	
	form2:setName("ID - " .. tostring(self.fullname:getText()))
	form2:setCanBeWrite(true)
	form2:addPage(1, formContents)
	form2:setLockedBy(getPlayer():getUsername())

	getPlayer():getInventory():AddItem(form1)
	getPlayer():getInventory():AddItem(form2)
end

function ISIdentificationModal:render()

end

function ISIdentificationModal:assignRemovalIndex(index)
	self.removalIndex = index
end

function ISIdentificationModal:close()
	self.instance.mainMenu:removeOpenPanel(self.removalIndex, self:toString())
	self:setVisible(false)
	self:removeFromUIManager()
end

function ISIdentificationModal:new(x, y, width, height, mainMenu)
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
	ISIdentificationModal.instance = o
	return o
end

return ISIdentificationModal
