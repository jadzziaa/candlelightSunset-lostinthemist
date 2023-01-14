local ISLoanAgreementModal = ISPanel:derive("ISLoneAgreementModal")
require "lua_timers"

function ISLoanAgreementModal:createChildren()
	local yOffset = 10
	local xPadding = 10
	
	self.idform = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "LOAN AGREEMENT")) / 2, yOffset, 25, "LOAN AGREEMENT", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.idform)
	
	yOffset = yOffset + 35
	
	self.effdate = ISTextEntryBox:new("Effective Date", xPadding, yOffset, 150, 25)
	self.effdate:initialise()
	self.effdate:instantiate()
	self.effdate:setOnlyNumbers(false)
	self:addChild(self.effdate)
	
	yOffset = yOffset + 35
	
	self.borrower = ISTextEntryBox:new("Borrower", xPadding, yOffset, 150, 25)
	self.borrower:initialise()
	self.borrower:instantiate()
	self.borrower:setOnlyNumbers(false)
	self:addChild(self.borrower)
	
	yOffset = yOffset + 35
	
	self.borrowerid = ISTextEntryBox:new("Borrower's IDno", xPadding, yOffset, 150, 25)
	self.borrowerid:initialise()
	self.borrowerid:instantiate()
	self.borrowerid:setOnlyNumbers(false)
	self:addChild(self.borrowerid)
	
	yOffset = yOffset + 35
	
	self.lender = ISTextEntryBox:new("Lender", xPadding, yOffset, 150, 25)
	self.lender:initialise()
	self.lender:instantiate()
	self.lender:setOnlyNumbers(false)
	self:addChild(self.lender)
	
	yOffset = yOffset + 35
	
	self.lenderid = ISTextEntryBox:new("Lender's IDno", xPadding, yOffset, 150, 25)
	self.lenderid:initialise()
	self.lenderid:instantiate()
	self.lenderid:setOnlyNumbers(false)
	self:addChild(self.lenderid)
	
	yOffset = yOffset + 35
	
	self.firstpay = ISTextEntryBox:new("First Payment", xPadding, yOffset, 150, 25)
	self.firstpay:initialise()
	self.firstpay:instantiate()
	self.firstpay:setOnlyNumbers(false)
	self:addChild(self.firstpay)
	
	yOffset = yOffset + 35
	
	self.lastpay = ISTextEntryBox:new("Last Payment", xPadding, yOffset, 150, 25)
	self.lastpay:initialise()
	self.lastpay:instantiate()
	self.lastpay:setOnlyNumbers(false)
	self:addChild(self.lastpay)
	
	yOffset = yOffset + 35
	
	self.loanamount = ISTextEntryBox:new("Loan Amount", xPadding, yOffset, 150, 25)
	self.loanamount:initialise()
	self.loanamount:instantiate()
	self.loanamount:setOnlyNumbers(false)
	self:addChild(self.loanamount)
	
	yOffset = yOffset + 35
	
	self.interest = ISTextEntryBox:new("Interest Fee", xPadding, yOffset, 150, 25)
	self.interest:initialise()
	self.interest:instantiate()
	self.interest:setOnlyNumbers(false)
	self:addChild(self.interest)
	
	yOffset = yOffset + 35
	
	self.latefee = ISTextEntryBox:new("Late Fee", xPadding, yOffset, 150, 25)
	self.latefee:initialise()
	self.latefee:instantiate()
	self.latefee:setOnlyNumbers(false)
	self:addChild(self.latefee)
	
	yOffset = yOffset + 50
	
	self.print = ISButton:new(xPadding, yOffset, 150, 25, "PRINT", self, ISLoanAgreementModal.onOptionMouseDown)
	self.print.internal = "PRINT"
	self.print:initialise()
	self.print:instantiate()
	self:addChild(self.print)

	yOffset = yOffset + 35
	
	self.cancelButton = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), self, ISLoanAgreementModal.onOptionMouseDown)
	self.cancelButton.internal = "CANCEL"
	self.cancelButton:initialise()
	self.cancelButton:instantiate()
	self:addChild(self.cancelButton)
end

function ISLoanAgreementModal:onOptionMouseDown(button, x, y)
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

function ISLoanAgreementModal:doPrint()
	local form1 = InventoryItemFactory.CreateItem("Base.SheetPaper2")
	local form2 = InventoryItemFactory.CreateItem("Base.SheetPaper2")
	local formContents = "                                   EDEN BANK - LOAN AGREEMENT" .. "\n======================================================" .. "\nThis Loan Agreement (hereinafter referred to as the" .. "\n\"Agreement\") is entered into on " .. tostring(self.effdate:getText()) .. "\nby and between " .. tostring(self.borrower:getText()) .. "," .. "\nwith an IDno of " .. tostring(self.borrowerid:getText()) .. " (referred to as \"Borrower\")," .. "\nand Eden Bank, represented by " .. tostring(self.lender:getText()) .. "," .. "\nwith an IDno of " .. tostring(self.lenderid:getText()) .. " (referred to as \"Lender\")" .. "\n(collectively referred to as the \"Parties\")." .. "\n---------------------------------------------------------------------------------" .. "\nStart Date of First Payment: " .. tostring(self.firstpay:getText()) .. "\nEnd Date of Last Payment: " .. tostring(self.lastpay:getText()) .. "\nLoan Amount: " .. tostring(self.loanamount:getText()) .. "       Interest Rate: " .. tostring(self.interest:getText()) .. "\nLate Fee: " .. tostring(self.latefee:getText()) .. "\n---------------------------------------------------------------------------------"
	
	form1:setName("Loan Agreement for " .. tostring(self.borrower:getText()))
	form1:setCanBeWrite(true)
	form1:addPage(1, formContents)
	
	form2:setName("Loan Agreement for " .. tostring(self.borrower:getText()))
	form2:setCanBeWrite(true)
	form2:addPage(1, formContents)

	getPlayer():getInventory():AddItem(form1)
	getPlayer():getInventory():AddItem(form2)
end

function ISLoanAgreementModal:render()

end

function ISLoanAgreementModal:assignRemovalIndex(index)
	self.removalIndex = index
end

function ISLoanAgreementModal:close()
	self.instance.mainMenu:removeOpenPanel(self.removalIndex, self:toString())
    self:setVisible(false)
    self:removeFromUIManager()
end

function ISLoanAgreementModal:new(x, y, width, height, mainMenu)
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
	ISLoanAgreementModal.instance = o
	return o
end

return ISLoanAgreementModal
