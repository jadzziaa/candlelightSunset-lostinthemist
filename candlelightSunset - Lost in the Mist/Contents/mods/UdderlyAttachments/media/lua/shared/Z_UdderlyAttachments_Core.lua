-- UdderlyAttachments_1_Core.lua
-- 8/13/22 to 8/18/22 UdderlyEvelyn
print("[UdderlyAttachments] Initializing..")	
UA = UA or {}
UA.GunAddingFunctions = UA.GunAddingFunctions or {}
UA.AttachmentAddingFunctions = UA.AttachmentAddingFunctions or {}
UA.AssignmentFunctions = UA.AssignmentFunctions or {}

--Utility Functions
local function contains(list, x)
	for _,v in pairs(list) do
		if v == x then 
			return true 
		end
	end
	return false
end

--Run any added functions by other mods.
for _,f in pairs(UA.GunAddingFunctions) do
	if not pcall(function () loadstring(f)() end) then
		print("[UdderlyAttachments] Error Running Gun Adding Function \""..f.."\".")
	end
end

for _,f in pairs(UA.AttachmentAddingFunctions) do
	if not pcall(function() loadstring(f)() end) then
		print("[UdderlyAttachments] Error Running Attachment Adding Function \""..f.."\".")
	end
end

for _,f in pairs(UA.AssignmentFunctions) do
	if not pcall(function() loadstring(f)() end) then
		print("[UdderlyAttachments] Error Running Assignment Function \""..f.."\".")
	end
end

--Run our core functionality on startup to let everything have loaded first.
print("[UdderlyAttachments] Dynamically Assigning Guns To Attachments..")	
for _,attachment in pairs(UA.Attachments) do
	local attachmentName = attachment[1]
	local attachmentItem = ScriptManager.instance:FindItem(attachmentName)
	if attachmentItem == nil then
		print("[UdderlyAttachments] Attachment item could not be found for \""..attachmentName.."\".")
	else		
		--invItem stuff was removed because it causes the script to finalize before we add to it, retained here because code may be useful later if adapted to reading script files or etc..
		--local invItem = InventoryItemFactory.CreateItem(attachmentName)
		--local originalMountOn = tostring(invItem:getMountOn())
		local mountOn = ""
		--if originalMountOn ~= nil and originalMountOn ~= "[]" then
		--	local tmp = string.sub(originalMountOn, 2, #originalMountOn) --strip leftmost
		--	local tmp2 = string.sub(tmp, 1, #tmp-1) --strip rightmost
		--	mountOn=tmp2:gsub(", ", "; ")
		--end
		local didAnyYet = false --#mountOn > 0
		--print("[UdderlyAttachments] Original MountOn for \""..attachmentName.."\": \""..mountOn.."\"")
		for _,group in pairs(attachment[2]) do
			for _,gun in pairs(group) do
				if not contains(attachment[4], gun) then --If NOT marked for exclusion..
					print("[UdderlyAttachments] Assigning \""..gun.."\" to \""..attachmentName.."\".")
					if InventoryItemFactory.CreateItem(gun) ~= nil then
						if didAnyYet == false then
							mountOn = gun
						else--if string.find(originalMountOn, gun) == nil then --Only add it if it isn't already there!
							mountOn = mountOn.."; "..gun
						end
						didAnyYet = true
					else
						print("[UdderlyAttachments] Gun \""..gun.."\" was not found, skipping..")
					end
				else
					print("[UdderlyAttachments] Gun \""..gun.."\" is in the exclusion list for \""..attachmentName.."\" and will not be added.")
				end
			end
		end
		for _,gun in pairs(attachment[3]) do
			print("[UdderlyAttachments] Assigning \""..gun.."\" (one-off) to \""..attachmentName.."\".")
			if InventoryItemFactory.CreateItem(gun) ~= nil then
				if didAnyYet == false then
					mountOn = gun
				else --if string.find(mountOn, gun) == nil then --Only add it if it isn't already there! A one-off could be redundant to a group assignment, especially with many mods' interplay.
					--print("[UdderlyAttachments] TEST: Gun is not already in the list, add it.")
					mountOn = mountOn.."; "..gun
				--else
					--print("[UdderlyAttachments] TEST: Gun was already in the list.")
				end
				--print("[UdderlyAttachments] TEST: MountOn Currently: \""..mountOn.."\"")
				didAnyYet = true
			else
				print("[UdderlyAttachments] Gun \""..gun.."\" was not found, skipping..")
			end
		end
		--print("[UdderlyAttachments] Final MountOn for \""..attachmentName.."\": \"MountOn = "..mountOn..";\"")
		attachmentItem:DoParam("MountOn = "..mountOn..";")
		--print("[UdderlyAttachments] Retrieved Data: \""..tostring(InventoryItemFactory.CreateItem(attachmentName):getMountOn()).."\"")
	end
end
print("[UdderlyAttachments] Done!")