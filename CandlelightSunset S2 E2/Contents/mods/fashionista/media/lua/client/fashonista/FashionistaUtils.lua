function coach_findStringInTable (tab, val)
    local lowercase = val:lower()
    for index, value in ipairs(tab) do
        if string.find(lowercase, value:lower()) then
            return true
        end
    end
    return false
end