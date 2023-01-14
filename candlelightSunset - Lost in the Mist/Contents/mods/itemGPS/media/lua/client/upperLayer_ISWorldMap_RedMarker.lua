require "ISUI/Maps/ISWorldMap"

local upperLayer = {}
upperLayer.ISWorldMap = {}

upperLayer.ISWorldMap.updateJoypad = ISWorldMap.updateJoypad
function ISWorldMap:updateJoypad()
    upperLayer.ISWorldMap.updateJoypad(self)
    local gps = self.character:getInventory():getItemFromType("GPSdayz")
    local PrimaryHand = self.character:getPrimaryHandItem()
    local SecondaryHand = self.character:getSecondaryHandItem()

	if gps and ((PrimaryHand and PrimaryHand:getType() == "GPSdayz") or (SecondaryHand and SecondaryHand:getType() == "GPSdayz")) and not isAdmin() then
		local modData = gps:getModData() 
		if modData.ReceiveGPS and gps:isActivated() and gps:getUsedDelta() > 0.005 then--if player:getInventory():containsType("GPSdayz") == true and modData.ReceiveGPS and gps:isActivated() then--or self.character:getInventory():containsType("WalkieTalkie5") == true then 
	   		--self.mapAPI:setShowPlayers(true)	
			self.mapAPI:setBoolean("Players", true)
			--ISMiniMap.ToggleMiniMap
			--self.beep = 0
			--if self.beep == 0 then getSoundManager():PlayWorldSound("beep" .. (ZombRand(2)+1), self.character:getCurrentSquare(), 1, 25, 2, true) end -- self.character:playSound("Beep1") end
			--if self.beep == 0 then getSoundManager():PlayWorldSound("GPS_Beep_1BIS", self.character:getCurrentSquare(), 1, 25, 2, true) end
			--self.beep = self.beep +1
			--if self.beep == 100 then self.beep = 0 end
	  		--self.mapAPI:setShowPlayers(false)

		  		--radialMenu:addSlice(getText("IGUI_MiniMap_Toggle"), getTexture("media/textures/worldMap/Map_On.png"), ISMiniMap.ToggleMiniMap, playerNum)
	  	else
	  		self.mapAPI:setBoolean("Players", false) 
		end
	elseif not isAdmin() then
		self.mapAPI:setBoolean("Players", false) 
		--return 
	elseif isAdmin() then
		self.mapAPI:setBoolean("Players", true) 
	end
end
