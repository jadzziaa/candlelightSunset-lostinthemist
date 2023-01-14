local ISBusinessContractModal = ISPanel:derive("ISBusinessContractModal")
require "lua_timers"

function ISBusinessContractModal:createChildren()
	local yOffset = 10
	local xPadding = 10
	
	self.idform = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "Business Contract")) / 2, yOffset, 25, "Business Contract", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.idform)
	
	yOffset = yOffset + 35
	
	self.fullname = ISTextEntryBox:new("Full Name", xPadding, yOffset, 150, 25)
	self.fullname:initialise()
	self.fullname:instantiate()
	self.fullname:setOnlyNumbers(false)
	self:addChild(self.fullname)
	
	yOffset = yOffset + 35
	
	self.businessName = ISTextEntryBox:new("Business Name", xPadding, yOffset, 150, 25)
	self.businessName:initialise()
	self.businessName:instantiate()
	self.businessName:setOnlyNumbers(false)
	self:addChild(self.businessName)
	
	yOffset = yOffset + 35
	
	self.writtenLoanAmount = ISTextEntryBox:new("Loan Amount (written)", xPadding, yOffset, 150, 25)
	self.writtenLoanAmount:initialise()
	self.writtenLoanAmount:instantiate()
	self.writtenLoanAmount:setOnlyNumbers(false)
	self:addChild(self.writtenLoanAmount)
	
	yOffset = yOffset + 35
	
	self.dollarLoanAmount = ISTextEntryBox:new("Loan Amount (dollar value)", xPadding, yOffset, 150, 25)
	self.dollarLoanAmount:initialise()
	self.dollarLoanAmount:instantiate()
	self.dollarLoanAmount:setOnlyNumbers(true)
	self:addChild(self.dollarLoanAmount)
	
	yOffset = yOffset + 35
	
	self.loanBreakdown = ISTextEntryBox:new("Loan Breakdown", xPadding, yOffset, 150, 100)
	self.loanBreakdown:initialise()
	self.loanBreakdown:instantiate()
	self.loanBreakdown:setOnlyNumbers(false)
	self.loanBreakdown:setMultipleLine(true)
	self.loanBreakdown:setMaxLines(4)
	self:addChild(self.loanBreakdown)
	
	yOffset = yOffset + 35 + 75
	
	self.isLEO = ISTickBox:new(xPadding, yOffset, 25, 25, "Is LEO?")
	self.isLEO:initialise()
	self.isLEO:addOption("Is LEO?", 1, nil)
	self:addChild(self.isLEO)
	
	yOffset = yOffset + 35
	
	self.print = ISButton:new(xPadding, yOffset, 150, 25, "PRINT", self, ISBusinessContractModal.onOptionMouseDown)
	self.print.internal = "PRINT"
	self.print:initialise()
	self.print:instantiate()
	self:addChild(self.print)

	yOffset = yOffset + 35
	
	self.cancelButton = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), self, ISBusinessContractModal.onOptionMouseDown)
	self.cancelButton.internal = "CANCEL"
	self.cancelButton:initialise()
	self.cancelButton:instantiate()
	self:addChild(self.cancelButton)
end

function ISBusinessContractModal:onOptionMouseDown(button, x, y)
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

function ISBusinessContractModal:doPrint()
	local form1 = InventoryItemFactory.CreateItem("Base.SheetPaper2")
	local form2 = InventoryItemFactory.CreateItem("Base.SheetPaper2")
	local formContents = "This contract hereby verifies that loan of:\n" .. tostring(self.writtenLoanAmount:getText()) .. " $" .. tostring(self.dollarLoanAmount:getText()) .. " for " .. tostring(self.fullname:getText()) .. ", under the restrictions of using all funds and assets for the direct gain of the business.\nThe Loan Is constructed as:\n" .. tostring(self.loanBreakdown:getText()) .. "\n" .. (self.isLEO:isSelected(1) and "Under Leo Regulations, this contract agrees that the following business will be a part of the Employment Office for better opportunities to the citizens of Kentucky,\n" .. tostring(self.businessName:getText()) or "") .. "\nSign here:\nX"
	
	form1:setName("Copied Contract for " .. tostring(self.businessName:getText()))
	form1:setCanBeWrite(true)
	form1:addPage(1, formContents)
	
	form2:setName("Original Contract for " .. tostring(self.businessName:getText()))
	form2:setCanBeWrite(true)
	form2:addPage(1, formContents)

	getPlayer():getInventory():AddItem(form1)
	getPlayer():getInventory():AddItem(form2)
end

function ISBusinessContractModal:render()

end

function ISBusinessContractModal:assignRemovalIndex(index)
	self.removalIndex = index
end

function ISBusinessContractModal:close()
	self.instance.mainMenu:removeOpenPanel(self.removalIndex, self:toString())
    self:setVisible(false)
    self:removeFromUIManager()
end

function ISBusinessContractModal:new(x, y, width, height, mainMenu)
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
	ISBusinessContractModal.instance = o
	return o
end

return ISBusinessContractModal
