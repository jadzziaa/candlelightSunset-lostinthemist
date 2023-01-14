local ISFormsFormsModal = ISPanel:derive("ISFormsFormsModal")
require "lua_timers"

function ISFormsFormsModal:createChildren()
	local yOffset = 10
	local xPadding = 10
	
	self.idform = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "Froms")) / 2, yOffset, 25, "Forms", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.idform)
	
	yOffset = yOffset + 35
	
	self.print = ISButton:new(xPadding, yOffset, 150, 25, "Loan Application Form", self, ISFormsFormsModal.onOptionMouseDown)
	self.print.internal = "LOANAPPLICATION"
	self.print:initialise()
	self.print:instantiate()
	self:addChild(self.print)

	yOffset = yOffset + 35
	
	self.cancelButton = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), self, ISFormsFormsModal.onOptionMouseDown)
	self.cancelButton.internal = "CANCEL"
	self.cancelButton:initialise()
	self.cancelButton:instantiate()
	self:addChild(self.cancelButton)
end

function ISFormsFormsModal:onOptionMouseDown(button, x, y)
	if button.internal == "CANCEL" then
		self:close()
	elseif button.internal == "LOANAPPLICATION" and self.mainMenu.isPrinting == false then
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

function ISFormsFormsModal:doPrint()
	local form1 = InventoryItemFactory.CreateItem("Base.SheetPaper2")
	local form2 = InventoryItemFactory.CreateItem("Base.SheetPaper2")
	local formContents = "                                                  Loan Application Form" .. "\n======================================================" .. "\nDesired loan amount:   ______________   gold coins" .. "\n                                     and/or     ______________   silver coins" .. "\nWhat will the loan be used for:   _______________________" .. "\n    _________________________________________________" .. "\n    _________________________________________________" .. "\n---------------------------------------------------------------------------------" .. "\nFull name:   ____________________" .. "\nDate of birth:   ____________________" .. "\nAffiliation:   ____________________" .. "\nID Licence No:   ____________________" .. "\nSource of income:   __________________________________" .. "\n     _________________________________________________" .. "\n======================================================"
	
	form1:setName("Eden Loan Application Form")
	form1:setCanBeWrite(true)
	form1:addPage(1, formContents)

	getPlayer():getInventory():AddItem(form1)
end

function ISFormsFormsModal:render()

end

function ISFormsFormsModal:assignRemovalIndex(index)
	self.removalIndex = index
end

function ISFormsFormsModal:close()
	self.instance.mainMenu:removeOpenPanel(self.removalIndex, self:toString())
    self:setVisible(false)
    self:removeFromUIManager()
end

function ISFormsFormsModal:new(x, y, width, height, mainMenu)
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
	ISFormsFormsModal.instance = o
	return o
end

return ISFormsFormsModal
