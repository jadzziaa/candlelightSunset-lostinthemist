if isClient() then return end

local ccdeData

local function OnInitGlobalModData(isNewGame)
	ccdeData = ModData.getOrCreate("ccdeData")
end

local function OnClientCommand(module, command, player, args)
	if module == "CCDE" then
		if command == "save" then
			local username = args[1]
			local permissions = args[2]
			
			ccdeData[username] = permissions
			
			ModData.add("ccdeData", ccdeData)
		end
	end
end

Events.OnClientCommand.Add(OnClientCommand)
Events.OnInitGlobalModData.Add(OnInitGlobalModData)
