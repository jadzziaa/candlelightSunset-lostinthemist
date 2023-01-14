function FIL_isPlayerHaveVirus()
    local playerInv = getPlayer():getInventory();
    local has_viralpathogen = playerInv:getItemFromType('CmpSyringeWithVirus');
    return has_viralpathogen;
end--function

function FIL_isPlayerHaveVirusRE()
    local playerInv = getPlayer():getInventory();
    local has_viralpathogenre = playerInv:getItemFromType('CmpSyringeReusableWithVirus');
    return has_viralpathogenre;
end--function

function FIL_isPlayerHaveTestV()
    local playerInv = getPlayer():getInventory();
    local has_testv = playerInv:getItemFromType('CmpSyringeWithTestVaccine');
    return has_testv;
end--function

function FIL_isPlayerHaveTestVRE()
    local playerInv = getPlayer():getInventory();
    local has_testvre = playerInv:getItemFromType('CmpSyringeReusableWithTestVaccine');
    return has_testvre;
end--function

function FIL_isPlayerHaveTestV2()
    local playerInv = getPlayer():getInventory();
    local has_testv2 = playerInv:getItemFromType('CmpSyringeWithTestVaccineV2');
    return has_testv2;
end--function

function FIL_isPlayerHaveTestV2RE()
    local playerInv = getPlayer():getInventory();
    local has_testv2re = playerInv:getItemFromType('CmpSyringeReusableWithTestVaccineV2');
    return has_testv2re;
end--function

function FIL_isPlayerHaveTestV3()
    local playerInv = getPlayer():getInventory();
    local has_testv3 = playerInv:getItemFromType('CmpSyringeWithTestVaccineV3');
    return has_testv3;
end--function

function FIL_isPlayerHaveTestV3RE()
    local playerInv = getPlayer():getInventory();
    local has_testv3re = playerInv:getItemFromType('CmpSyringeReusableWithTestVaccineV3');
    return has_testv3re;
end--function

function FIL_isPlayerHaveQVaccine()
    local playerInv = getPlayer():getInventory();
    local has_testqv = playerInv:getItemFromType('CmpSyringeWithQualityVaccine');
    return has_testqv;
end--function

function FIL_isPlayerHaveQVaccineRE()
    local playerInv = getPlayer():getInventory();
    local has_testqvre = playerInv:getItemFromType('CmpSyringeReusableWithQualityVaccine');
    return has_testqvre;
end--function

function FIL_isPlayerHaveCure()
    local playerInv = getPlayer():getInventory();
    local has_cure = playerInv:getItemFromType('CmpSyringeWithCure');
    return has_cure;
end--function

function FIL_isPlayerHaveCureRE()
    local playerInv = getPlayer():getInventory();
    local has_curere = playerInv:getItemFromType('CmpSyringeReusableWithCure');
    return has_curere;
end--function

function FIL_isPlayerHaveSyringe()
    local playerInv = getPlayer():getInventory();
    local has_syringe = playerInv:getItemFromType('LabSyringe');
    return has_syringe;
end--function

function FIL_isPlayerHaveSyringeRE()
    local playerInv = getPlayer():getInventory();
    local has_syringere = playerInv:getItemFromType('LabSyringeReusable');
    return has_syringere;
end--function

function FIL_isPlayerHaveCotton()
    local playerInv = getPlayer():getInventory();
    local has_cotton = playerInv:getItemFromType('AlcoholedCottonBalls');
    return has_cotton;
end--function

function FIL_isPlayerHaveAlcoholWipes()
    local playerInv = getPlayer():getInventory();
    local has_alcoholwipes = playerInv:getItemFromType('AlcoholWipes');
    return has_alcoholwipes;
end--function

function FIL_isHaveFirstAid()
    local playerXp = getPlayer():getXp();
    local has_firstaid = playerXp:getXP(Perks.Doctor);
    if has_firstaid >= 225 then
        return true;
    else
        return false;
    end--if
end--function

local function otherPlayerLocalMain(_, action, patient)
    local ui = FIL_GetConfirmUIMP();
    if FIL_isPlayerHaveTestV(true) then
        if FIL_isPlayerHaveCotton(true) then
            if not ui then 
                FIL_MakeConfirmUIMP();
                ui = FIL_GetConfirmUIMP();
            end
            if action == "Fil" then
                AskCanInjectPlayer(patient);
            end
        else
            if FIL_isPlayerHaveAlcoholWipes(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil" then
                    AskCanInjectPlayer(patient);
                end
            end--if    
        end--if
    else
        if FIL_isPlayerHaveTestVRE(true) then
            if FIL_isPlayerHaveCotton(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil" then
                    AskCanInjectPlayer(patient);
                end
            else
                if FIL_isPlayerHaveAlcoholWipes(true) then
                    if not ui then 
                        FIL_MakeConfirmUIMP();
                        ui = FIL_GetConfirmUIMP();
                    end
                    if action == "Fil" then
                        AskCanInjectPlayer(patient);
                    end
                end--if    
            end--if
        end--if
    end--if   
    ui.actionAct = action;
    ui.patient = patient;
    FIL_SetConfirmUIMP("Wait for server");
end

local function otherPlayerLocal1(_, action, patient)
    local ui = FIL_GetConfirmUIMP();
    if FIL_isPlayerHaveTestV2(true) then
        if FIL_isPlayerHaveCotton(true) then
            if not ui then 
                FIL_MakeConfirmUIMP();
                ui = FIL_GetConfirmUIMP();
            end
            if action == "Fil1" then
                AskCanInjectPlayer1(patient);
            end
        else
            if FIL_isPlayerHaveAlcoholWipes(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil1" then
                    AskCanInjectPlayer1(patient);
                end
            end--if
        end--if
    else
        if FIL_isPlayerHaveTestV2RE(true) then
            if FIL_isPlayerHaveCotton(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil1" then
                    AskCanInjectPlayer1(patient);
                end
            else
                if FIL_isPlayerHaveAlcoholWipes(true) then
                    if not ui then 
                        FIL_MakeConfirmUIMP();
                        ui = FIL_GetConfirmUIMP();
                    end
                    if action == "Fil1" then
                        AskCanInjectPlayer1(patient);
                    end
                end--if
            end--if
        end--if
    end--if   
    ui.actionAct = action;
    ui.patient = patient;
    FIL_SetConfirmUIMP("Wait for server");
end

local function otherPlayerLocal2(_, action, patient)
    local ui = FIL_GetConfirmUIMP();
    if FIL_isPlayerHaveTestV3(true) then
        if FIL_isPlayerHaveCotton(true) then
            if not ui then 
                FIL_MakeConfirmUIMP();
                ui = FIL_GetConfirmUIMP();
            end
            if action == "Fil2" then
                AskCanInjectPlayer2(patient);
            end
        else
            if FIL_isPlayerHaveAlcoholWipes(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil2" then
                    AskCanInjectPlayer2(patient);
                end
            end--if
        end--if
    else
        if FIL_isPlayerHaveTestV3RE(true) then
            if FIL_isPlayerHaveCotton(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil2" then
                    AskCanInjectPlayer2(patient);
                end
            else
                if FIL_isPlayerHaveAlcoholWipes(true) then
                    if not ui then 
                        FIL_MakeConfirmUIMP();
                        ui = FIL_GetConfirmUIMP();
                    end
                    if action == "Fil2" then
                        AskCanInjectPlayer2(patient);
                    end
                end--if
            end--if
        end--if
    end--if   
    ui.actionAct = action;
    ui.patient = patient;
    FIL_SetConfirmUIMP("Wait for server");
end

local function otherPlayerLocal3(_, action, patient)
    local ui = FIL_GetConfirmUIMP();
    if FIL_isPlayerHaveQVaccine(true) then
        if FIL_isPlayerHaveCotton(true) then
            if not ui then 
                FIL_MakeConfirmUIMP();
                ui = FIL_GetConfirmUIMP();
            end
            if action == "Fil3" then
                AskCanInjectPlayer3(patient);
            end
        else
            if FIL_isPlayerHaveAlcoholWipes(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil3" then
                    AskCanInjectPlayer3(patient);
                end
            end--if
        end--if
    else
        if FIL_isPlayerHaveQVaccineRE(true) then
            if FIL_isPlayerHaveCotton(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil3" then
                    AskCanInjectPlayer3(patient);
                end
            else
                if FIL_isPlayerHaveAlcoholWipes(true) then
                    if not ui then 
                        FIL_MakeConfirmUIMP();
                        ui = FIL_GetConfirmUIMP();
                    end
                    if action == "Fil3" then
                        AskCanInjectPlayer3(patient);
                    end
                end--if
            end--if
        end--if
    end--if   
    ui.actionAct = action;
    ui.patient = patient;
    FIL_SetConfirmUIMP("Wait for server");
end

local function otherPlayerLocal4(_, action, patient)
    local ui = FIL_GetConfirmUIMP();
    if FIL_isPlayerHaveCure(true) then
        if FIL_isPlayerHaveCotton(true) then
            if not ui then 
                FIL_MakeConfirmUIMP();
                ui = FIL_GetConfirmUIMP();
            end
            if action == "Fil4" then
                AskCanInjectPlayer4(patient);
            end
        else
            if FIL_isPlayerHaveAlcoholWipes(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil4" then
                    AskCanInjectPlayer4(patient);
                end
            end--if
        end--if
    else
        if FIL_isPlayerHaveCureRE(true) then
            if FIL_isPlayerHaveCotton(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil4" then
                    AskCanInjectPlayer4(patient);
                end
            else
                if FIL_isPlayerHaveAlcoholWipes(true) then
                    if not ui then 
                        FIL_MakeConfirmUIMP();
                        ui = FIL_GetConfirmUIMP();
                    end
                    if action == "Fil4" then
                        AskCanInjectPlayer4(patient);
                    end
                end--if
            end--if
        end--if
    end--if   
    ui.actionAct = action;
    ui.patient = patient;
    FIL_SetConfirmUIMP("Wait for server");
end

local function otherPlayerLocal5(_, action, patient)
    local ui = FIL_GetConfirmUIMP();
    if FIL_isPlayerHaveVirus(true) then
        if FIL_isPlayerHaveCotton(true) then
            if not ui then 
                FIL_MakeConfirmUIMP();
                ui = FIL_GetConfirmUIMP();
            end
            if action == "Fil5" then
                AskCanInjectPlayer5(patient);
            end
        else
            if FIL_isPlayerHaveAlcoholWipes(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil5" then
                    AskCanInjectPlayer5(patient);
                end
            end--if
        end--if
    else
        if FIL_isPlayerHaveVirusRE(true) then
            if FIL_isPlayerHaveCotton(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil5" then
                    AskCanInjectPlayer5(patient);
                end
            else
                if FIL_isPlayerHaveAlcoholWipes(true) then
                    if not ui then 
                        FIL_MakeConfirmUIMP();
                        ui = FIL_GetConfirmUIMP();
                    end
                    if action == "Fil5" then
                        AskCanInjectPlayer5(patient);
                    end
                end--if
            end--if
        end--if
    end--if        
    ui.actionAct = action;
    ui.patient = patient;
    FIL_SetConfirmUIMP("Wait for server");
end

local function otherPlayerLocal0(_, action, patient)
    local ui = FIL_GetConfirmUIMP();
    if FIL_isPlayerHaveSyringe(true) then
        if FIL_isPlayerHaveCotton(true) then
            if not ui then 
                FIL_MakeConfirmUIMP();
                ui = FIL_GetConfirmUIMP();
            end
            if action == "Fil0" then
                AskCanInjectPlayer0(patient);
            end
        else
            if FIL_isPlayerHaveAlcoholWipes(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil0" then
                    AskCanInjectPlayer0(patient);
                end
            end--if
        end--if
    else
        if FIL_isPlayerHaveSyringeRE(true) then
            if FIL_isPlayerHaveCotton(true) then
                if not ui then 
                    FIL_MakeConfirmUIMP();
                    ui = FIL_GetConfirmUIMP();
                end
                if action == "Fil0" then
                    AskCanInjectPlayer0(patient);
                end
            else
                if FIL_isPlayerHaveAlcoholWipes(true) then
                    if not ui then 
                        FIL_MakeConfirmUIMP();
                        ui = FIL_GetConfirmUIMP();
                    end
                    if action == "Fil0" then
                        AskCanInjectPlayer0(patient);
                    end
                end--if
            end--if
        end--if
    end--if   
    ui.actionAct = action;
    ui.patient = patient;
    FIL_SetConfirmUIMP("Wait for server");
end


local function FIL_onFillWorldObjectContextMenu(playerId, context, worldobjects, _)
    local player = getSpecificPlayer(playerId);
    local clickedPlayer
    local modData = player:getModData();

    for _,object in ipairs(worldobjects) do
        local square = object:getSquare()
        if square then
            local movingObjects = square:getMovingObjects()
            for i = 0, movingObjects:size() - 1 do
                local o = movingObjects:get(i)
                if instanceof(o, "IsoPlayer") then
                    clickedPlayer = o;
                    break
                end
            end
            if clickedPlayer then
                if not ((-1 < clickedPlayer:getX() - player:getX() and clickedPlayer:getX() - player:getX() < 1) and (-1 < clickedPlayer:getY() - player:getY() and clickedPlayer:getY() - player:getY() < 1)) then
                    return false;
                end
                local FIL_rootOption = context:addOption("Medical on ");
                local FIL_rootMenu = context:getNew(context);
                local vaccineOption = FIL_rootMenu:addOption("Inject");
                local vaccineMenu = context:getNew(context);

                context:addSubMenu(FIL_rootOption, FIL_rootMenu);
                context:addSubMenu(vaccineOption, vaccineMenu);
                if FIL_isHaveFirstAid(true) then
                    --Blood Sample
                    if FIL_isPlayerHaveSyringe(true) then
                        if FIL_isPlayerHaveCotton(true) then
                            FIL_rootMenu:addOption(getText("Take blood sample"), worldobjects, otherPlayerLocal0, "Fil0", clickedPlayer);
                        else
                            if FIL_isPlayerHaveAlcoholWipes(true) then
                                FIL_rootMenu:addOption(getText("Take blood sample"), worldobjects, otherPlayerLocal0, "Fil0", clickedPlayer);
                            end--if
                        end--if
                    else--if
                        if FIL_isPlayerHaveSyringeRE(true) then
                            if FIL_isPlayerHaveCotton(true) then
                                FIL_rootMenu:addOption(getText("Take blood sample"), worldobjects, otherPlayerLocal0, "Fil0", clickedPlayer);
                            else
                                if FIL_isPlayerHaveAlcoholWipes(true) then
                                    FIL_rootMenu:addOption(getText("Take blood sample"), worldobjects, otherPlayerLocal0, "Fil0", clickedPlayer);
                                end--if
                            end--if    
                        end--if    
                    end--if

                    --Test Vaccine
                    if FIL_isPlayerHaveTestV(true) then
                        if FIL_isPlayerHaveCotton(true) then
                            vaccineMenu:addOption(getText("Test vaccine"), worldobjects, otherPlayerLocalMain, "Fil", clickedPlayer);
                        else
                            if FIL_isPlayerHaveAlcoholWipes(true) then
                                vaccineMenu:addOption(getText("Test vaccine"), worldobjects, otherPlayerLocalMain, "Fil", clickedPlayer);
                            end--if
                        end--if
                    else--if
                        if FIL_isPlayerHaveTestVRE(true) then
                            if FIL_isPlayerHaveCotton(true) then
                                vaccineMenu:addOption(getText("Test vaccine"), worldobjects, otherPlayerLocalMain, "Fil", clickedPlayer);
                            else
                                if FIL_isPlayerHaveAlcoholWipes(true) then
                                    vaccineMenu:addOption(getText("Test vaccine"), worldobjects, otherPlayerLocalMain, "Fil", clickedPlayer);
                                end--if
                            end--if    
                        end--if    
                    end--if
                    --Improved Test Vaccine
                    if FIL_isPlayerHaveTestV2(true) then
                        if FIL_isPlayerHaveCotton(true) then
                            vaccineMenu:addOption(getText("Improved test vaccine"), worldobjects, otherPlayerLocal1, "Fil1", clickedPlayer);
                        else
                            if FIL_isPlayerHaveAlcoholWipes(true) then
                                vaccineMenu:addOption(getText("Improved test vaccine"), worldobjects, otherPlayerLocal1, "Fil1", clickedPlayer);
                            end--if
                        end--if
                    else--if
                        if FIL_isPlayerHaveTestV2RE(true) then
                            if FIL_isPlayerHaveCotton(true) then
                                vaccineMenu:addOption(getText("Improved test vaccine"), worldobjects, otherPlayerLocal1, "Fil1", clickedPlayer);
                            else
                                if FIL_isPlayerHaveAlcoholWipes(true) then
                                    vaccineMenu:addOption(getText("Improved test vaccine"), worldobjects, otherPlayerLocal1, "Fil1", clickedPlayer);
                                end--if
                            end--if    
                        end--if    
                    end--if
                    --Advanced Test Vaccine
                    if FIL_isPlayerHaveTestV3(true) then
                        if FIL_isPlayerHaveCotton(true) then
                            vaccineMenu:addOption(getText("Advanced test vaccine"), worldobjects, otherPlayerLocal2, "Fil2", clickedPlayer);
                        else
                            if FIL_isPlayerHaveAlcoholWipes(true) then
                                vaccineMenu:addOption(getText("Advanced test vaccine"), worldobjects, otherPlayerLocal2, "Fil2", clickedPlayer);
                            end--if
                        end--if
                    else--if
                        if FIL_isPlayerHaveTestV3RE(true) then
                            if FIL_isPlayerHaveCotton(true) then
                                vaccineMenu:addOption(getText("Advanced test vaccine"), worldobjects, otherPlayerLocal2, "Fil2", clickedPlayer);
                            else
                                if FIL_isPlayerHaveAlcoholWipes(true) then
                                    vaccineMenu:addOption(getText("Advanced test vaccine"), worldobjects, otherPlayerLocal2, "Fil2", clickedPlayer);
                                end--if
                            end--if    
                        end--if    
                    end--if
                    --Quality Vaccine
                    if FIL_isPlayerHaveQVaccine(true) then
                        if FIL_isPlayerHaveCotton(true) then
                            vaccineMenu:addOption(getText("Quality vaccine"), worldobjects, otherPlayerLocal3, "Fil3", clickedPlayer);
                        else
                            if FIL_isPlayerHaveAlcoholWipes(true) then
                                vaccineMenu:addOption(getText("Quality vaccine"), worldobjects, otherPlayerLocal3, "Fil3", clickedPlayer);
                            end--if
                        end--if
                    else--if
                        if FIL_isPlayerHaveQVaccineRE(true) then
                            if FIL_isPlayerHaveCotton(true) then
                                vaccineMenu:addOption(getText("Quality vaccine"), worldobjects, otherPlayerLocal3, "Fil3", clickedPlayer);
                            else
                                if FIL_isPlayerHaveAlcoholWipes(true) then
                                    vaccineMenu:addOption(getText("Quality vaccine"), worldobjects, otherPlayerLocal3, "Fil3", clickedPlayer);
                                end--if
                            end--if    
                        end--if    
                    end--if
                    --Cure
                    if FIL_isPlayerHaveCure(true) then
                        if FIL_isPlayerHaveCotton(true) then
                            vaccineMenu:addOption(getText("Cure"), worldobjects, otherPlayerLocal4, "Fil4", clickedPlayer);
                        else
                            if FIL_isPlayerHaveAlcoholWipes(true) then
                                vaccineMenu:addOption(getText("Cure"), worldobjects, otherPlayerLocal4, "Fil4", clickedPlayer);
                            end--if
                        end--if
                    else--if
                        if FIL_isPlayerHaveCureRE(true) then
                            if FIL_isPlayerHaveCotton(true) then
                                vaccineMenu:addOption(getText("Cure"), worldobjects, otherPlayerLocal4, "Fil4", clickedPlayer);
                            else
                                if FIL_isPlayerHaveAlcoholWipes(true) then
                                    vaccineMenu:addOption(getText("Cure"), worldobjects, otherPlayerLocal4, "Fil4", clickedPlayer);
                                end--if
                            end--if    
                        end--if    
                    end--if    
                end--if
                --Virus
                if FIL_isPlayerHaveVirus(true) then
                    if FIL_isPlayerHaveCotton(true) then
                        vaccineMenu:addOption(getText("Viral pathogen"), worldobjects, otherPlayerLocal5, "Fil5", clickedPlayer);
                    else
                        if FIL_isPlayerHaveAlcoholWipes(true) then
                            vaccineMenu:addOption(getText("Viral pathogen"), worldobjects, otherPlayerLocal5, "Fil5", clickedPlayer);
                        end--if
                    end--if
                else--if
                    if FIL_isPlayerHaveVirusRE(true) then
                        if FIL_isPlayerHaveCotton(true) then
                            vaccineMenu:addOption(getText("Viral pathogen"), worldobjects, otherPlayerLocal5, "Fil5", clickedPlayer);
                        else
                            if FIL_isPlayerHaveAlcoholWipes(true) then
                                vaccineMenu:addOption(getText("Viral pathogen"), worldobjects, otherPlayerLocal5, "Fil5", clickedPlayer);
                            end--if
                        end--if    
                    end--if    
                end--if
            end
        end
    end
end

Events.OnFillWorldObjectContextMenu.Add(FIL_onFillWorldObjectContextMenu);