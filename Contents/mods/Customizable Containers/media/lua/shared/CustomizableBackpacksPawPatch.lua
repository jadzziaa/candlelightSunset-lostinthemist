if getActivatedMods():contains("PLLoot_Patch") then
else return end


function getWeightReductionVars()
for k, v in pairs(CContainers.ChestRigsPawPatch) do

    if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25

            CCMain(v.ItemName, "WeightReduction", tonumber(string.format("%.0f", v.WeightReduction * 0.75)))
        
    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Normal

            CCMain(v.ItemName, "WeightReduction", v.WeightReduction)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced

            CCMain(v.ItemName, "WeightReduction", v.WeightReductionWB)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced

            CCMain(v.ItemName, "WeightReduction", v.WeightReductionB)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced

        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            for k, v in pairs(CContainers.ChestRigsPawPatch) do
                CCMain(v.ItemName, "WeightReduction", RandomWeightReduction)

            end
        end
        if SandboxVars.CustomizableRandomizer.Frequency == 1 then
        
            Events.EveryTenMinutes.Add(CustomizableWeightReductionRandomizer)

        elseif SandboxVars.CustomizableRandomizer.Frequency == 2 then
            
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 3 then
        
            Events.EveryDays.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 4 then
        
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
        end
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced

        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)

            for k, v in pairs(CContainers.ChestRigsPawPatch) do
                CCMain(v.ItemName, "WeightReduction", RandomWeightReduction)

            end
        end
        if SandboxVars.CustomizableRandomizer.Frequency == 1 then
        
            Events.EveryTenMinutes.Add(CustomizableWeightReductionRandomizer)

        elseif SandboxVars.CustomizableRandomizer.Frequency == 2 then
            
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 3 then
        
            Events.EveryDays.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 4 then
        
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
        end
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then	-- WeightReduction = 75 

            CCMain(v.ItemName, "WeightReduction", 75)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 80 

            CCMain(v.ItemName, "WeightReduction", 80)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 85 

            CCMain(v.ItemName, "WeightReduction", 85)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 90 

            CCMain(v.ItemName, "WeightReduction", 90)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = 95 

            CCMain(v.ItemName, "WeightReduction", 95)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 12 then  -- WeightReduction = 99 

            CCMain(v.ItemName, "WeightReduction", 99)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 13 then  -- WeightReduction = Weightless 

            CCMain(v.ItemName, "WeightReduction", 100)

        end
    end
end


function getCapacityVars()
for k, v in pairs(CContainers.ChestRigsPawPatch) do
    if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 0.75)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla

        CCMain(v.ItemName, "Capacity", v.Capacity)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced

        CCMain(v.ItemName, "Capacity", v.CapacityWB)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced

        CCMain(v.ItemName, "Capacity", v.CapacityB)
            
    elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced

        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            for k, v in pairs(CContainers.ChestRigsPawPatch) do
                CCMain(v.ItemName, "Capacity", RandomCapacity)

            end
        end
      if SandboxVars.CustomizableRandomizer.Frequency == 1 then
        
            Events.EveryTenMinutes.Add(CustomizableWeightReductionRandomizer)

        elseif SandboxVars.CustomizableRandomizer.Frequency == 2 then
            
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 3 then
        
            Events.EveryDays.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 4 then
        
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
        end
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced

        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)

            for k, v in pairs(CContainers.ChestRigsPawPatch) do
                CCMain(v.ItemName, "Capacity", RandomCapacity)

            end
        end
      if SandboxVars.CustomizableRandomizer.Frequency == 1 then
        
            Events.EveryTenMinutes.Add(CustomizableWeightReductionRandomizer)

        elseif SandboxVars.CustomizableRandomizer.Frequency == 2 then
            
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 3 then
        
            Events.EveryDays.Add(CustomizableWeightReductionRandomizer)
            
        elseif SandboxVars.CustomizableRandomizer.Frequency == 4 then
        
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
        end
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 1.25)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 1.5)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 1.75)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 2)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 3)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 5)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 7.5x

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 7.5)))
        
    elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 10x

        CCMain(v.ItemName, "Capacity", tonumber(string.format("%.0f", v.Capacity * 10)))

    elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 20
    
        CCMain(v.ItemName, "Capacity", 20)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 25

        CCMain(v.ItemName, "Capacity", 25)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 30

        CCMain(v.ItemName, "Capacity", 30)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 40

        CCMain(v.ItemName, "Capacity", 40)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 19 then  -- Capacity = 50

        CCMain(v.ItemName, "Capacity", 50)

    elseif SandboxVars.CustomizableChestRigs.Capacity == 20 then  -- Capacity = 75

        CCMain(v.ItemName, "Capacity", 75)

        end
    end   
end


function getWeightVars()
for k, v in pairs(CContainers.ChestRigsPawPatch) do
    if SandboxVars.CustomizableChestRigs.Weight == 1 then  -- Weight = Well Balanced

        CCMain(v.ItemName, "Weight", v.Weight)

    elseif SandboxVars.CustomizableChestRigs.Weight == 2 then  -- Weight = -25

        CCMain(v.ItemName, "Weight", v.Weight * .75)

    elseif SandboxVars.CustomizableChestRigs.Weight == 3 then  -- Weight = -50

        CCMain(v.ItemName, "Weight", v.Weight * .5)

    elseif SandboxVars.CustomizableChestRigs.Weight == 4 then  -- Weight = -75

        CCMain(v.ItemName, "Weight", v.Weight * .25)

    elseif SandboxVars.CustomizableChestRigs.Weight == 5 then  -- Weight = Weightless

        CCMain(v.ItemName, "Weight", 0)

        end
    end
end


function getRunSpeedModifierVars()
    if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
    else return end
        for k, v in pairs(CContainers.ChestRigsPaw) do
    
            CCMain(v.ItemName, "RunSpeedModifier", 1.0)
        
        end
end
	

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)