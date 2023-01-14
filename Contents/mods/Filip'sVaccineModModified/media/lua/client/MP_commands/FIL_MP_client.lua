--- A really big thanks to MrBounty for the inspiration <3
local Commands = {}

function CanBeInjected()
    return true
end

-- Surgeon (send)
function SendInjectPlayerVirus(player)
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "InjectPlayerVirus";
    sendClientCommand("FIL", "SendServer", arg);
end

function SendInjectPlayerCure(player)
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "InjectPlayerCure";
    sendClientCommand("FIL", "SendServer", arg);
end

function SendInjectPlayerQVaccine(player)
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "InjectPlayerQVaccine";
    sendClientCommand("FIL", "SendServer", arg);
end

function SendInjectPlayerTestV3(player)
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "InjectPlayerTestV3";
    sendClientCommand("FIL", "SendServer", arg);
end

function SendInjectPlayerTestV2(player)
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "InjectPlayerTestV2";
    sendClientCommand("FIL", "SendServer", arg);
end

function SendInjectPlayerTestV1(player)
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "InjectPlayerTestV1";
    sendClientCommand("FIL", "SendServer", arg);
end

function SendTakeBloodSample(player, isPlayerHaveSyringe)
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "TakeBloodSample";
    arg["toSend"] = {isPlayerHaveSyringe};
    sendClientCommand("FIL", "SendServer", arg);
end

function AskCanInjectPlayer(player)
    FIL_GetConfirmUIMP().responseReceive = false;
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "CanInjectPlayer";
    sendClientCommand("FIL", "SendServer", arg);
end

function AskCanInjectPlayer1(player)
    FIL_GetConfirmUIMP().responseReceive = false;
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "CanInjectPlayer1";
    sendClientCommand("FIL", "SendServer", arg);
end

function AskCanInjectPlayer2(player)
    FIL_GetConfirmUIMP().responseReceive = false;
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "CanInjectPlayer2";
    sendClientCommand("FIL", "SendServer", arg);
end

function AskCanInjectPlayer3(player)
    FIL_GetConfirmUIMP().responseReceive = false;
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "CanInjectPlayer3";
    sendClientCommand("FIL", "SendServer", arg);
end

function AskCanInjectPlayer4(player)
    FIL_GetConfirmUIMP().responseReceive = false;
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "CanInjectPlayer4";
    sendClientCommand("FIL", "SendServer", arg);
end

function AskCanInjectPlayer5(player)
    FIL_GetConfirmUIMP().responseReceive = false;
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "CanInjectPlayer5";
    sendClientCommand("FIL", "SendServer", arg);
end

function AskCanInjectPlayer0(player)
    FIL_GetConfirmUIMP().responseReceive = false;
    local arg = {};
    arg["From"] = getPlayer():getOnlineID();
    arg["To"] = player:getOnlineID();
    arg["command"] = "CanInjectPlayer0";
    sendClientCommand("FIL", "SendServer", arg);
end

Commands["responseCanInject"] = function(arg)
    local ui = FIL_GetConfirmUIMP()
    ui.responseReceive = true;
    ui.responseAction = arg["toSend"][1];
    ui.responseCan = arg["toSend"][2];
    ui.responseUserName = getPlayerByOnlineID(arg["From"]):getUsername();
end


-- Patient (receive)
Commands["InjectPlayerVirus"] = function(arg)
    local arg = arg["toSend"];
    InjectPlayerVirus();
end

Commands["InjectPlayerCure"] = function(arg)
    local arg = arg["toSend"];
    InjectPlayerCure();
end

Commands["InjectPlayerQVaccine"] = function(arg)
    local arg = arg["toSend"];
    InjectPlayerQVaccine();
end

Commands["InjectPlayerTestV3"] = function(arg)
    local arg = arg["toSend"];
    InjectPlayerTestV3();
end

Commands["InjectPlayerTestV2"] = function(arg)
    local arg = arg["toSend"];
    InjectPlayerTestV2();
end

Commands["InjectPlayerTestV1"] = function(arg)
    local arg = arg["toSend"];
    InjectPlayerTestV1();
end

Commands["TakeBloodSample"] = function(arg)
    local arg = arg["toSend"];
    TakeBloodSample(arg[1]);
end
Commands["CanInjectPlayer"] = function(arg)
    arg["To"] = arg["From"];
    arg["From"] = getPlayer():getOnlineID();
    arg["command"] = "responseCanInject";
    arg["toSend"] = {"Fil", CanBeInjected()};
    sendClientCommand("FIL", "SendServer", arg);
end

Commands["CanInjectPlayer1"] = function(arg)
    arg["To"] = arg["From"];
    arg["From"] = getPlayer():getOnlineID();
    arg["command"] = "responseCanInject";
    arg["toSend"] = {"Fil1", CanBeInjected()};
    sendClientCommand("FIL", "SendServer", arg);
end

Commands["CanInjectPlayer2"] = function(arg)
    arg["To"] = arg["From"];
    arg["From"] = getPlayer():getOnlineID();
    arg["command"] = "responseCanInject";
    arg["toSend"] = {"Fil2", CanBeInjected()};
    sendClientCommand("FIL", "SendServer", arg);
end

Commands["CanInjectPlayer3"] = function(arg)
    arg["To"] = arg["From"];
    arg["From"] = getPlayer():getOnlineID();
    arg["command"] = "responseCanInject";
    arg["toSend"] = {"Fil3", CanBeInjected()};
    sendClientCommand("FIL", "SendServer", arg);
end

Commands["CanInjectPlayer4"] = function(arg)
    arg["To"] = arg["From"];
    arg["From"] = getPlayer():getOnlineID();
    arg["command"] = "responseCanInject";
    arg["toSend"] = {"Fil4", CanBeInjected()};
    sendClientCommand("FIL", "SendServer", arg);
end

Commands["CanInjectPlayer5"] = function(arg)
    arg["To"] = arg["From"];
    arg["From"] = getPlayer():getOnlineID();
    arg["command"] = "responseCanInject";
    arg["toSend"] = {"Fil5", CanBeInjected()};
    sendClientCommand("FIL", "SendServer", arg);
end

Commands["CanInjectPlayer0"] = function(arg)
    arg["To"] = arg["From"];
    arg["From"] = getPlayer():getOnlineID();
    arg["command"] = "responseCanInject";
    arg["toSend"] = {"Fil0", CanBeInjected()};
    sendClientCommand("FIL", "SendServer", arg);
end

-- Event
local FIL_onServerCommand = function(module, command, args)
    if module == "FIL" and Commands[command] then
        args = args or {}
        Commands[command](args)
    end
end

Events.OnServerCommand.Add(FIL_onServerCommand)