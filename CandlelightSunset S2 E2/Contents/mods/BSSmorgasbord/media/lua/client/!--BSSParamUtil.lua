GaistUtils = GaistUtils or {}
function GaistUtils.doParam(item, category, value)
    local item = ScriptManager.instance:getItem(item)    
    if item then 
        item:DoParam(category.." = "..value)
    end
end