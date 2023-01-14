--Made by Snake, edited by pwrcosmic <3
if ViewInstructionsMenu then
    ViewInstructionsMenu.doMenu = function(player, context, items)
        if SandboxVars.MoFilchers.GourmetLearnSow then -- Won't trigger unless the sandbox setting is enabled. It's HERE because these can change from admins!
            local pl = getSpecificPlayer(player);
            if not pl:HasTrait("Illiterate") then
    
                local SeedPacket = nil;
                for i,v in ipairs(items) do
                    local tempitem = v;
                    if not instanceof(v, "InventoryItem") then
                        tempitem = v.items[1];
                    end
    
                    local itemCode = MoFilchers.getCodeFromItem(tempitem)
                    print(itemCode)
                    local seedPacketCheck = LGRSeedPacketDef[itemCode]
    
                    if seedPacketCheck then
                        SeedPacket = tempitem;
                    end
                end
    
                if SeedPacket then
                    local option = context:addOption(getText("ContextMenu_View_Instructions"), SeedPacket, ViewInstructionsMenu.View_OnCreate, pl);
                    ViewInstructionsMenu.Tooltip(option, pl, SeedPacket)
                end
            end
        end
    end
    
    ViewInstructionsMenu.Tooltip = function(option, pl, SeedPacket)
        local plrecipe = pl:getKnownRecipes();
        local result = true;
        local tooltip = ISInventoryPaneContextMenu.addToolTip();
        tooltip:setName(getText("ContextMenu_View_Instructions"));
        tooltip:setTexture(SeedPacket:getTexture():getName());
    
        local itemCode = MoFilchers.getCodeFromItem(SeedPacket)
        local seedPacketCheck = LGRSeedPacketDef[itemCode]
        if not seedPacketCheck then
            seedPacketCheck = LGRSeedPacketDef[SeedPacket:getType()]
        end
    
        if SandboxVars.MoFilchers.GourmetLearnSow and not plrecipe:contains(seedPacketCheck.recipetolearn) then
            tooltip.description = getText("ContextMenu_Learn") .. getText(seedPacketCheck.translation);
        else
            tooltip.description = "<RGB:1,0,0>" .. getText("ContextMenu_AlreadyLearned");
            result = false;
        end
        if not result then
            option.onSelect = nil;
            option.notAvailable = true;
        end
        option.toolTip = tooltip;
    end
    
    Events.OnFillInventoryObjectContextMenu.Add(ViewInstructionsMenu.doMenu); -- This'll only run if the file exists to begin with, so Snakes must be installed.
end