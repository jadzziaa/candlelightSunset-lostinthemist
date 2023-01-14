--recipe for butchering small animals

function CutCrow_OnCreate(items, result, player)
    local item = items:get(i);
    player:getInventory():AddItems("Base.Bones", 4);
    player:getInventory():AddItems("Base.LeatherStripsDirty", 2);
end--function    