Darkvision = {}

Darkvision.range = 120

Darkvision.indoor = 0.5

Darkvision.outdoor = 1.0

Darkvision.proportion = {

    [1] = 0.0, [2] = 0.1, [3] = 0.2, [4] = 0.3, [5] = 0.4, [6] = 0.5, 
    [7] = 0.6, [8] = 0.7, [9] = 0.8, [10] = 0.9, [11] = 1.0, 

}

-- These are the default options.
Darkvision.mod = { 
    
    options = {
        indoor = 4,
        outdoor = 8,
        override = false
    },

    names = {
        indoor = "Brightness of Indoor Vision",
        outdoor = "Brightness of Outdoor Vision",
        override = "Traitless Darkvision (Requires Permission)"
    },

    mod_id = "Darkvision",

    mod_shortname = "Darkvision"
    
}

Darkvision.loadModOptions = function()

    -- Connecting the options to the menu, so user can change and save them.
    if ModOptions and ModOptions.getInstance then

        Darkvision.modSettings = ModOptions:getInstance(Darkvision.mod)
        
        local indoor = Darkvision.modSettings:getData("indoor")
        local outdoor = Darkvision.modSettings:getData("outdoor")
        local override = Darkvision.modSettings:getData("override")
        
        indoor.tooltip = "How bright should darkvision make your eyesight while you are in a building? Note that the game may sometimes report you as indoors when you are in fact exposed to the night sky, and I don't know how to prevent this; you may find that this indoor brightness level is used near buildings when you are in fact outside."
        outdoor.tooltip = "How bright should darkvision make your eyesight while you are outside?"
        override.tooltip = "If your server allows players who do not have the Darkvision trait to use Darkvision, you may enable it using this setting. Note that this setting cannot be used to remove Darkvision from someone who has the trait."

        indoor[1] = "0%"
        indoor[2] = "10%"
        indoor[3] = "20%"
        indoor[4] = "30%"
        indoor[5] = "40%"
        indoor[6] = "50%"
        indoor[7] = "60%"
        indoor[8] = "70%"
        indoor[9] = "80%"
        indoor[10] = "90%"
        indoor[11] = "100%"
        
        outdoor[1] = "0%"
        outdoor[2] = "10%"
        outdoor[3] = "20%"
        outdoor[4] = "30%"
        outdoor[5] = "40%"
        outdoor[6] = "50%"
        outdoor[7] = "60%"
        outdoor[8] = "70%"
        outdoor[9] = "80%"
        outdoor[10] = "90%"
        outdoor[11] = "100%"

        function indoor:OnApply(percent)
           
            Darkvision.apply(percent, true)

        end
        
        function outdoor:OnApply(percent)
           
            Darkvision.apply(percent, false)

        end

    end

end

Darkvision.loadModOptions()

Darkvision.apply = function(percent, indoor)

    if indoor then
        Darkvision.indoor = Darkvision.proportion[percent]
    else
        Darkvision.outdoor = Darkvision.proportion[percent]
    end

end

Darkvision.light = {}

Darkvision.cell = {}

-- Debugging
-- Events.OnTick.Remove(Darkvision.eyesight)

Darkvision.extinguish = function(light, playerIndex)
    local cell = Darkvision.cell[playerIndex]
    if cell then cell:removeLamppost(light) end
    Darkvision.light[playerIndex] = nil
end

Darkvision.active = function(player)
    return player:HasTrait("Darkvision") or (SandboxVars.Darkvision.everyoneHasDarkvision and Darkvision.mod.options.override)
end

Darkvision.eyesight = function(ticks)

    if ticks % 5 ~= 0 then return end

    local range = Darkvision.range
    
    for playerIndex = 0, getNumActivePlayers() - 1 do repeat

        local player = getSpecificPlayer(playerIndex)
        
        if not player then break end

        local brightness = Darkvision.indoor

        if player:isOutside() then brightness = Darkvision.outdoor end

        local light = Darkvision.light[playerIndex]

        if light then Darkvision.extinguish(light, playerIndex) end
        
        if not (player:isAlive() and Darkvision.active(player)) then break end
        
        local r, g, b = brightness, brightness, brightness

        Darkvision.light[playerIndex] = IsoLightSource.new(player:getX(), player:getY(), player:getZ(), r, g, b, range)

        Darkvision.cell[playerIndex] = player:getCell()

        player:getCell():addLamppost(Darkvision.light[playerIndex])

    until true end

end

Darkvision.start = function()

    Darkvision.apply(Darkvision.mod.options.indoor, true)
    Darkvision.apply(Darkvision.mod.options.outdoor, false)

    Events.OnTick.Remove(Darkvision.eyesight)
    Events.OnTick.Add(Darkvision.eyesight)

end

Events.OnCreatePlayer.Add(Darkvision.start)

-- Darkvision Trait

Darkvision.trait = function()
    TraitFactory.addTrait("Darkvision", "Darkvision", 4, "See at night like you were born to live in darkness.", false)
end

Events.OnGameBoot.Add(Darkvision.trait)
