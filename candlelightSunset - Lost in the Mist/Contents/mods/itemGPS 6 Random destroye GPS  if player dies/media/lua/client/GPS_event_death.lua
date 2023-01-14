
---------------------------------------------------------------------------------------------------------------------------------------------------------
function OnPlayerDeath()
	local rand = ZombRand(3)
	if rand == 2 then return end
	local player = getSpecificPlayer(0)
	if not player then return end
	local square = player:getCurrentSquare()

	if gps then 
		if gps:getWorldItem() ~= nil and gps:getWorldItem():getSquare() == square then--gps:getContainer() and gps:getContainer():getType() == "floor" then
			gps:getWorldItem():getSquare():transmitRemoveItemFromSquare(gps:getWorldItem())
            gps:getWorldItem():getSquare():removeWorldObject(gps:getWorldItem());
			--gps:removeFromWorld()
	      	--gps:removeFromSquare()	
		  	-- gps:getContainer():Remove(gps);	
		   	gps:setWorldItem(nil);	    
		    ISInventoryPage.dirtyUI()
		    square:AddWorldInventoryItem("Base.GPSdestroyed", 0, 0, 0);
            return			
		end
		gps = nil
	end

	local gpsINV = player:getInventory():getItemFromType("GPSdayz")	

	if gpsINV then
		
		player:removeAttachedItem(gpsINV)
		gpsINV:setAttachedSlotType(nil);
		gpsINV:setAttachedToModel(nil);
		player:getInventory():Remove(gpsINV)
		player:removeFromHands(gpsINV)
		ISInventoryPage.renderDirty = true
		player:getInventory():AddItem("Base.GPSdestroyed")
		
		return
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
Events.OnPlayerDeath.Add(OnPlayerDeath)
--Events.OnObjectLeftMouseButtonUp.Add(OnPlayerDeath);



--	local containers = ISInventoryPaneContextMenu.getContainers(player) -- containerList--
--	for i=1,containers:size() do
--		local container = containers:get(i-1)
--		if container then
--			for j=1,container:getItems():size() do
--				local item = container:getItems():get(j-1)		
--				if item then
--					local type = item:getType()
--					if type == "GPSdayz" then
--						local worldObj = item:getWorldItem()
--						if  worldObj then 
--							worldObj:getSquare():transmitRemoveItemFromSquare(worldObj)
--							worldObj:removeFromWorld()
--	      					worldObj:removeFromSquare()	
--	      					ISInventoryPage.dirtyUI()
--	      					square:AddWorldInventoryItem("Base.GPSdestroyed", 0, 0, 0);
--	      					return
--						end
--					end
--				end
--			end
--		end	
--	end