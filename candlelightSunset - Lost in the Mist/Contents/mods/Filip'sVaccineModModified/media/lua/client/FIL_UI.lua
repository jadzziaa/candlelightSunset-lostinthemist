local confirmUIMP

function FIL_GetConfirmUIMP()
    return confirmUIMP;
end

-- Usefull functions
    local function FIL_prerenderFuncMP()
        local toSee = confirmUIMP;
        if confirmUIMP.responseReceive then
            if not confirmUIMP.responseCan then
                getPlayer():Say("I can't do that !")
                confirmUIMP.responseReceive = false;
                confirmUIMP:close();
                return false;
            end
            FIL_SetConfirmUIMP(confirmUIMP.responseAction, confirmUIMP.responseUserName);
        end
    end
-- end Usefull punctions

function FIL_SetConfirmUIMP(action, userName)
    confirmUIMP:setInCenterOfScreen();
    confirmUIMP:bringToTop();
    confirmUIMP:open();
    if action == "Fil" then
        confirmUIMP["text4"]:setText("You gonna inject " .. userName .. " with test vaccine");
        confirmUIMP["text2"]:setText("");
        confirmUIMP["text3"]:setText("");
        confirmUIMP["b1"]:setVisible(true);
        confirmUIMP["b2"]:setVisible(true);
    elseif action == "Fil1" then
        confirmUIMP["text4"]:setText("You gonna inject " .. userName .. " with improved test vaccine");
        confirmUIMP["text2"]:setText("");
        confirmUIMP["text3"]:setText("");
        confirmUIMP["b1"]:setVisible(true);
        confirmUIMP["b2"]:setVisible(true);
    elseif action == "Fil2" then
        confirmUIMP["text4"]:setText("You gonna inject " .. userName .. " with advanced test vaccine");
        confirmUIMP["text2"]:setText("");
        confirmUIMP["text3"]:setText("");
        confirmUIMP["b1"]:setVisible(true);
        confirmUIMP["b2"]:setVisible(true);
    elseif action == "Fil3" then
        confirmUIMP["text4"]:setText("You gonna inject " .. userName .. " with quality vaccine");
        confirmUIMP["text2"]:setText("");
        confirmUIMP["text3"]:setText("");
        confirmUIMP["b1"]:setVisible(true);
        confirmUIMP["b2"]:setVisible(true);
    elseif action == "Fil4" then
        confirmUIMP["text4"]:setText("You gonna inject " .. userName .. " with cure");
        confirmUIMP["text2"]:setText("");
        confirmUIMP["text3"]:setText("");
        confirmUIMP["b1"]:setVisible(true);
        confirmUIMP["b2"]:setVisible(true);
    elseif action == "Fil5" then
        confirmUIMP["text4"]:setText("You gonna inject " .. userName .. " with viral pathogen");
        confirmUIMP["text2"]:setText("");
        confirmUIMP["text3"]:setText("");
        confirmUIMP["b1"]:setVisible(true);
        confirmUIMP["b2"]:setVisible(true);
    elseif action == "Fil0" then
        confirmUIMP["text4"]:setText("You gonna take blood sample from " .. userName);
        confirmUIMP["text2"]:setText("");
        confirmUIMP["text3"]:setText("");
        confirmUIMP["b1"]:setVisible(true);
        confirmUIMP["b2"]:setVisible(true);             
    elseif action == "Wait for server" then
        confirmUIMP["text4"]:setText(action);
        confirmUIMP["text3"]:setText("");
        confirmUIMP["text2"]:setText("");
        confirmUIMP["b1"]:setVisible(false);
        confirmUIMP["b2"]:setVisible(false);
    end
end

local function FIL_confirmPressMP(button, args)
    local player = getPlayer();
    if confirmUIMP.actionAct == "Fil" then
        if args.option == "yes" then
            getPlayer():Say("Ok, let's inject test vaccine!");
            ISTimedActionQueue.add(ISInjectPlayerTestV1:new(confirmUIMP.patient, player));
        else
            getPlayer():Say("Never mind!");
        end
    end
    if confirmUIMP.actionAct == "Fil1" then
        if args.option == "yes" then
            getPlayer():Say("Ok, let's improved test vaccine!");
            ISTimedActionQueue.add(ISInjectPlayerTestV2:new(confirmUIMP.patient, player));
        else
            getPlayer():Say("Never mind!");
        end
    end
    if confirmUIMP.actionAct == "Fil2" then
        if args.option == "yes" then
            getPlayer():Say("Ok, let's inject advanced test vaccine!");
            ISTimedActionQueue.add(ISInjectPlayerTestV3:new(confirmUIMP.patient, player));
        else
            getPlayer():Say("Never mind!");
        end
    end
    if confirmUIMP.actionAct == "Fil3" then
        if args.option == "yes" then
            getPlayer():Say("Ok, let's inject quality vaccine!");
            ISTimedActionQueue.add(ISInjectPlayerQVaccine:new(confirmUIMP.patient, player));
        else
            getPlayer():Say("Never mind!");
        end
    end
    if confirmUIMP.actionAct == "Fil4" then
        if args.option == "yes" then
            getPlayer():Say("Ok, let's inject cure!");
            ISTimedActionQueue.add(ISInjectPlayerCure:new(confirmUIMP.patient, player));
        else
            getPlayer():Say("Never mind!");
        end
    end
    if confirmUIMP.actionAct == "Fil5" then
        if args.option == "yes" then
            getPlayer():Say("Ok, let's inject viral pathogen!");
            ISTimedActionQueue.add(ISInjectPlayerVirus:new(confirmUIMP.patient, player));
        else
            getPlayer():Say("Never mind!");
        end
    end
    if confirmUIMP.actionAct == "Fil0" then
        if args.option == "yes" then
            getPlayer():Say("Ok, let's take a blood sample!");
            ISTimedActionQueue.add(ISTakeBloodSample:new(confirmUIMP.patient, player));
        else
            getPlayer():Say("Never mind!");
        end
    end
    confirmUIMP:close();
    confirmUIMP.responseReceive = false;
end

function FIL_MakeConfirmUIMP()
    confirmUIMP = NewUI();
    confirmUIMP.responseReceive = false;

    confirmUIMP:addText("text1", "Are you sure ?", "Title", "Center");
    confirmUIMP:setLineHeightPixel(getTextManager():getFontHeight(confirmUIMP.text1.font) + 10)
    confirmUIMP:nextLine();

    confirmUIMP:addText("text4", "", "Medium", "Center");
    confirmUIMP:setLineHeightPixel(getTextManager():getFontHeight(confirmUIMP.text4.font) + 10)
    confirmUIMP:nextLine();

    confirmUIMP:addText("text2", "", _, "Center");
    confirmUIMP:nextLine();

    confirmUIMP:addText("text3", "", _, "Center");
    confirmUIMP:nextLine();

    confirmUIMP:addEmpty();
    confirmUIMP:nextLine();

    confirmUIMP:addEmpty();
    confirmUIMP:addButton("b1", "Yes", FIL_confirmPressMP);
    confirmUIMP.b1:addArg("option", "yes");
    confirmUIMP:addEmpty();
    confirmUIMP:addButton("b2", "No", FIL_confirmPressMP);
    confirmUIMP:addEmpty();
    
    confirmUIMP:nextLine();
    confirmUIMP:addEmpty();

    confirmUIMP:saveLayout();
    confirmUIMP:addPrerenderFunction(FIL_prerenderFuncMP);
    confirmUIMP:close();
end