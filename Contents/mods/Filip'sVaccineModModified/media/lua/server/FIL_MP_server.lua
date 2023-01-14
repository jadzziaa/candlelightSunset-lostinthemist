--- A rly big thx to MrBounty for the inspiration <3

---Server side
local Commands = {}

Commands["SendServer"] = function(player, arg)
    local otherPlayer = getPlayerByOnlineID(arg["To"])
    print("Filip's vaccine command: ", arg['command'])
    sendServerCommand(otherPlayer, "FIL", arg["command"], arg)
end

local FIL_onClientCommand = function(module, command, player, args)
    if module == 'FIL' and Commands[command] then
        args = args or {}
        Commands[command](_, args)
    end
end
Events.OnClientCommand.Add(FIL_onClientCommand)