--recipe OnCreate functions

function FIL_OnCreate_PizzaRecipe(items, result, player)
    local item = items:get(i);
    player:getInventory():AddItem("Base.PizzaRecipe");
end--function