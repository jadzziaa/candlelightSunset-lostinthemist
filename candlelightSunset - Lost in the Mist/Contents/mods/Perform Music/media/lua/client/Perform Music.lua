--/////////////////////////////////////////////////////////////////////////
--//////////////////////////// Matías N. Salas ////////////////////////////
--///////////////////////////////////////////////////////////////////////// 
---@version 5.1 Kahlua

---@module 'TaskPlayGuitar';
local TaskPlayGuitar = require 'Perform Music/TimedAction/TaskPlayGuitar'; --> Gets the TimedAction
local Guitars = { --> Items target.
    ['Base.GuitarAcoustic'] = true,
    ['Base.Banjo'] = true,
    ['Base.GuitarElectricBlack'] = true,
    ['Base.GuitarElectricBlue'] = true,
    ['Base.GuitarElectricRed'] = true,
    ['Base.GuitarElectricBassBlack'] = true,
    ['Base.GuitarElectricBassBlue'] = true,
    ['Base.GuitarElectricBassRed'] = true
}
local ContextMenu = {};

ContextMenu.PlayGuitar = function(source, item) --> This function is triggered by the option created
    ISTimedActionQueue.clear(source); --> Clear TimedAction queue.

    if not item:isEquipped() then --> Checks if the item is equipped.
        ISTimedActionQueue.add(ISEquipWeaponAction:new(source, item, 50, true, false)) --> TimedAction Equip weapon.
    end

    ISTimedActionQueue.add(TaskPlayGuitar:new(source, item)); --> run the code on Perform Music/TaskPlayGuitar.lua
end

---Event when clicking on items on the player's inventory.
---@param playerIndex number
---@param context table
---@param items table
Events.OnPreFillInventoryObjectContextMenu.Add(function(playerIndex, context, items)
    local source = getSpecificPlayer(playerIndex);

    for i = 1, #items do
        if type(items[1]) == 'table' then --> check if have more that one item.
            local item = items[1].items[1];

            if Guitars[item:getFullType()] then --> Check if it's a guitar.
                
                context:addOption(getText('ContextMenu_PlayGuitar'), source, ContextMenu.PlayGuitar, item); --> Create a new option on the context menu

                break;
            end
        else
            if Guitars[items[1]:getFullType()] then --> Check if it's a guitar.
                context:addOption(getText('ContextMenu_PlayGuitar'), source, ContextMenu.PlayGuitar, items[1]);--> Create a new option on the context menu

                break;
            end
        end
    end
end)