-- Return true if recipe is valid, false otherwise
function CheckForAmmo_OnTest(sourceItem, result)
 if sourceItem:getCurrentAmmoCount() >= 1 then
        return false
    else
      return true
    end   
end

-- Checks item for any parts on weapon before item switch
function Switch357AmmoPartsCheck_OnCreate(items, result, player, firstHand, secondHand)
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getSubCategory() == "Firearm" then
			local scope = item:getScope()
			local sling = item:getSling()
			local canon = item:getCanon()
			local pad = item:getRecoilpad()

			if scope then
			result:attachWeaponPart(scope)
			end
			if sling then
			result:attachWeaponPart(sling)
			end
			if pad then
			result:attachWeaponPart(pad)
			end
            if canon then
			result:attachWeaponPart(canon)
			end
			if secondHand or firstHand then
	        player:setSecondaryHandItem(result);
	        if not player:getPrimaryHandItem() then
	            player:setPrimaryHandItem(result);
	        end
	    end
			return
		end
    end
end