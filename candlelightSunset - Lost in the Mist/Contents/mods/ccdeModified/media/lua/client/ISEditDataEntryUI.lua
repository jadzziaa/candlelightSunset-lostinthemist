local ISEditDataEntryUI = ISPanel:derive("ISEditDataEntryUI")

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)
local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium)
local FONT_HGT_LARGE = getTextManager():getFontHeight(UIFont.Large)
local FONT_SCALE = FONT_HGT_SMALL / 14

function ISEditDataEntryUI:initialise()
	ISPanel.initialise(self)
    self:create()
end

function ISEditDataEntryUI:setVisible(visible)
    self.javaObject:setVisible(visible)
end

function ISEditDataEntryUI:render()

end

local function OnPlayerMove(player)
	if player:isLocalPlayer() and player:DistToProper(ISEditDataEntryUI.instance.computer) > 2 then
		ISEditDataEntryUI.instance:close()
	end
end

function ISEditDataEntryUI:create()
	local yOffset = 10
	local xPadding = 10
	
	self.clerkcomputer = ISLabel:new((self.width - getTextManager():MeasureStringX(UIFont.Large, "Computer (Admin)")) / 2, yOffset, 25, "Computer (Admin)", 1, 1, 1, 1, UIFont.Large, true)
	self:addChild(self.clerkcomputer)
	
	yOffset = yOffset + 35
	
	self.accessheader = ISLabel:new(xPadding, yOffset, 25, "Access", 1, 1, 1, 1, UIFont.Medium, true)
	self:addChild(self.accessheader)
	
	yOffset = yOffset + 25
	
	self.username = ISTextEntryBox:new("Username", xPadding, yOffset, 150, 25)
	self.username:initialise()
	self.username:instantiate()
	self.username:setOnlyNumbers(false)
	self:addChild(self.username)
	
	yOffset = yOffset + 25
	
	self.id = ISTickBox:new(xPadding, yOffset, 25, 25, "Identification")
	self.id:initialise()
	self.id:addOption("Identification", 1, nil)
	self:addChild(self.id)
	
	yOffset = yOffset + 25
	
	self.driversLicense = ISTickBox:new(xPadding, yOffset, 25, 25, "Driver's License")
	self.driversLicense:initialise()
	self.driversLicense:addOption("Driver's License", 1, nil)
	self:addChild(self.driversLicense)
	
	yOffset = yOffset + 25
	
	self.propertyDeed = ISTickBox:new(xPadding, yOffset, 25, 25, "Property Deed")
	self.propertyDeed:initialise()
	self.propertyDeed:addOption("Property Deed", 1, nil)
	self:addChild(self.propertyDeed)
	
	yOffset = yOffset + 25
	
	self.vehicleRegistration = ISTickBox:new(xPadding, yOffset, 25, 25, "Vehicle Registration")
	self.vehicleRegistration:initialise()
	self.vehicleRegistration:addOption("Vehicle Registration", 1, nil)
	self:addChild(self.vehicleRegistration)
	
	yOffset = yOffset + 25
	
	self.businessContract = ISTickBox:new(xPadding, yOffset, 25, 25, "Business Contract")
	self.businessContract:initialise()
	self.businessContract:addOption("Business Contract", 1, nil)
	self:addChild(self.businessContract)
	
	yOffset = yOffset + 25
	
	self.loanAgreement = ISTickBox:new(xPadding, yOffset, 25, 25, "Loan Agreement")
	self.loanAgreement:initialise()
	self.loanAgreement:addOption("Loan Agreement", 1, nil)
	self:addChild(self.loanAgreement)
	
	yOffset = yOffset + 25
	
	self.formsForms = ISTickBox:new(xPadding, yOffset, 25, 25, "Forms")
	self.formsForms:initialise()
	self.formsForms:addOption("Forms", 1, nil)
	self:addChild(self.formsForms)
	
	yOffset = yOffset + 25
	
	self.policeRecords = ISTickBox:new(xPadding, yOffset, 25, 25, "Police Records")
	self.policeRecords:initialise()
	self.policeRecords:addOption("Police Records", 1, nil)
	self:addChild(self.policeRecords)
	
	yOffset = yOffset + 25
	
	self.gunRegistry = ISTickBox:new(xPadding, yOffset, 25, 25, "Gun Registry")
	self.gunRegistry:initialise()
	self.gunRegistry:addOption("Gun Registry", 1, nil)
	self:addChild(self.gunRegistry)
	
	yOffset = yOffset + 25
	
	self.clerkFiles = ISTickBox:new(xPadding, yOffset, 25, 25, "Clerk Files")
	self.clerkFiles:initialise()
	self.clerkFiles:addOption("Clerk Files", 1, nil)
	self:addChild(self.clerkFiles)
	
	yOffset = yOffset + 25
	
	self.medicalRecords = ISTickBox:new(xPadding, yOffset, 25, 25, "Medical Records")
	self.medicalRecords:initialise()
	self.medicalRecords:addOption("Medical Records", 1, nil)
	self:addChild(self.medicalRecords)
	
	yOffset = yOffset + 25
	
    self.viewPermissions = ISButton:new(xPadding, yOffset, 150, 25, "View Permissions", self, ISEditDataEntryUI.onOptionMouseDown)
    self.viewPermissions.internal = "VIEWPERMISSIONS"
    self.viewPermissions:initialise()
    self.viewPermissions:instantiate()
    self:addChild(self.viewPermissions)
	
	yOffset = yOffset + 35
	
    self.save = ISButton:new(xPadding, yOffset, 150, 25, "Save", self, ISEditDataEntryUI.onOptionMouseDown)
    self.save.internal = "SAVE"
    self.save:initialise()
    self.save:instantiate()
    self:addChild(self.save)
	
	yOffset = yOffset + 35
	
    self.cancel = ISButton:new(xPadding, yOffset, 150, 25, getText("UI_btn_close"), self, ISEditDataEntryUI.onOptionMouseDown)
    self.cancel.internal = "CANCEL"
    self.cancel:initialise()
    self.cancel:instantiate()
    self:addChild(self.cancel)

    Events.OnPlayerMove.Add(OnPlayerMove)
end

function ISEditDataEntryUI:onOptionMouseDown(button, x, y)
	if button.internal == "CANCEL" then
		self:close()
	elseif button.internal == "SAVE" then
		local permissions = {}
		
		if (self.id:isSelected(1)) then permissions.id = true else permissions.id = false end
		if (self.driversLicense:isSelected(1)) then permissions.dl = true else permissions.dl = false end
		if (self.propertyDeed:isSelected(1)) then permissions.pd = true else permissions.pd = false end
		if (self.vehicleRegistration:isSelected(1)) then permissions.vr = true else permissions.vr = false end
		if (self.businessContract:isSelected(1)) then permissions.bc = true else permissions.bc = false end
		if (self.loanAgreement:isSelected(1)) then permissions.la = true else permissions.la = false end
		if (self.formsForms:isSelected(1)) then permissions.ff = true else permissions.ff = false end
		if (self.policeRecords:isSelected(1)) then permissions.pr = true else permissions.pr = false end
		if (self.gunRegistry:isSelected(1)) then permissions.gr = true else permissions.gr = false end
		if (self.clerkFiles:isSelected(1)) then permissions.cf = true else permissions.cf = false end
		if (self.medicalRecords:isSelected(1)) then permissions.mr = true else permissions.mr = false end
		
		sendClientCommand("CCDE", "save", {self.username:getText(), permissions})
		
		self:close()
	end
end

function ISEditDataEntryUI:close()
	Events.OnPlayerMove.Remove(OnPlayerMove)
	
	self:setVisible(false)
	self:removeFromUIManager()
end

function ISEditDataEntryUI:new(x, y, width, height, computer, ccdeData, access)
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
	o.access = access
    ISEditDataEntryUI.instance = o
    return o
end

return ISEditDataEntryUI