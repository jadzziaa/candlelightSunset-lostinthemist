-- defaults re-defined for new system
if LGRSeedPacketDef then
    for key, _ in pairs(LGRSeedPacketDef) do -- Eliminate all old data so the old "ViewInstructionsMenu.doMenu" won't trigger.
        LGRSeedPacketDef[key] = nil
    end
    
    LGRSeedPacketDef["CarrotSeedBag"] = {recipetolearn="Sow CarrotSeed", translation= "Tooltip_Sow_CarrotSeed"};
    LGRSeedPacketDef["BroccoliSeedBag"] = {recipetolearn="Sow BroccoliSeed", translation="Tooltip_Sow_Broccoli"};
    LGRSeedPacketDef["LeekSeedBag"] = {recipetolearn="Sow LeekSeed", translation="Tooltip_Sow_Leek"};
    LGRSeedPacketDef["LettuceSeedBag"] = {recipetolearn="Sow LettuceSeed", translation="Tooltip_Sow_Lettuce"};
    LGRSeedPacketDef["OnionSeedBag"] = {recipetolearn="Sow OnionSeed", translation="Tooltip_Sow_Onion"};
    LGRSeedPacketDef["PeanutSeedBag"] = {recipetolearn="Sow PeanutSeed", translation="Tooltip_Sow_Peanut"};
    LGRSeedPacketDef["RadishSeedBag"] = {recipetolearn="Sow RadishSeed", translation="Tooltip_Sow_Radishes"};
    LGRSeedPacketDef["StrawberrySeedBag"] = {recipetolearn="Sow StrawberrySeed", translation="Tooltip_Sow_Strawberry"};
    LGRSeedPacketDef["TomatoSeedBag"] = {recipetolearn="Sow TomatoSeed", translation="Tooltip_Sow_Tomato"};
    LGRSeedPacketDef["CoffeeBag"] = {recipetolearn="Sow CoffeeSeed", translation="Tooltip_Sow_Coffee"};
    LGRSeedPacketDef["PotatoSeedBag"] = {recipetolearn="Sow PotatoSeed", translation="Tooltip_Sow_Potatoes"};
    LGRSeedPacketDef["CabbageSeedBag"] = {recipetolearn="Sow CabbageSeed", translation="Tooltip_Sow_Cabbages"};
    LGRSeedPacketDef["PumpkinSeedBag"] = {recipetolearn="Sow PumpkinSeed", translation="Tooltip_Sow_Pumpkin"};
    LGRSeedPacketDef["WatermelonSeedBag"] = {recipetolearn="Sow WatermelonSeed", translation="Tooltip_Sow_Watermelon"};
    LGRSeedPacketDef["ZucchiniSeedBag"] = {recipetolearn="Sow ZucchiniSeed", translation="Tooltip_Sow_Zucchini"};
    LGRSeedPacketDef["CornSeedBag"] = {recipetolearn="Sow CornSeed", translation="Tooltip_Sow_Corn"};
    LGRSeedPacketDef["RiceSeedBag"] = {recipetolearn="Sow RiceSeed", translation="Tooltip_Sow_Rice"};
    LGRSeedPacketDef["PineappleSeedBag"] = {recipetolearn="Sow PineappleSeed", translation="Tooltip_Sow_Pineapple"};
    LGRSeedPacketDef["BeanSeedBag"] = {recipetolearn="Sow BeanSeed", translation="Tooltip_Sow_Bean"};
    LGRSeedPacketDef["PepperSeedBag"] = {recipetolearn="Sow PepperSeed", translation="Tooltip_Sow_BellPepper"};
    LGRSeedPacketDef["EggplantSeedBag"] = {recipetolearn="Sow EggplantSeed", translation="Tooltip_Sow_Eggplant"};
    LGRSeedPacketDef["GrapeSeedBag"] = {recipetolearn="Sow GrapeSeed", translation="Tooltip_Sow_Grape"};
    LGRSeedPacketDef["PeaSeedBag"] = {recipetolearn="Sow PeaSeed", translation="Tooltip_Sow_Pea"};
    LGRSeedPacketDef["ChiliSeedBag"] = {recipetolearn="Sow ChiliSeed", translation="Tooltip_Sow_Chili"};
    LGRSeedPacketDef["WheatSeedBag"] = {recipetolearn="Sow WheatSeed", translation="Tooltip_Sow_Wheat"};
    LGRSeedPacketDef["SugarcaneSeedBag"] = {recipetolearn="Sow SugarcaneSeed", translation="Tooltip_Sow_Sugarcane"};
    LGRSeedPacketDef["SunflowerSeedBag"] = {recipetolearn="Sow SunflowerSeed", translation="Tooltip_Sow_Sunflower"};
    LGRSeedPacketDef["TobaccoSeedBag"] = {recipetolearn="Sow TobaccoSeed", translation="Tooltip_Sow_Tobacco"};
    LGRSeedPacketDef["HabaneroSeedBag"] = {recipetolearn="Sow HabaneroSeed", translation="Tooltip_Sow_Habanero"};
    LGRSeedPacketDef["JalapenoSeedBag"] = {recipetolearn="Sow JalapenoSeed", translation="Tooltip_Sow_Jalapeno"};
    
    -- new seeds
    LGRSeedPacketDef["CannabisSeedBag"] = {recipetolearn="Sow CannabisSeed", translation="Tooltip_Sow_Cannibis"}
    LGRSeedPacketDef["AvocadoSeedBag"] = {recipetolearn="Sow AvocadoSeed", translation="Tooltip_Sow_Avocado"}
    LGRSeedPacketDef["LemongrassSeedBag"] = {recipetolearn="Sow LemongrassSeed", translation="Tooltip_Sow_Lemongrass"}
    LGRSeedPacketDef["CauliflowerSeedBag"] = {recipetolearn="Sow CauliflowerSeed", translation="Tooltip_Sow_Cauliflower"}
    LGRSeedPacketDef["BeetSeedBag"] = {recipetolearn="Sow BeetSeed", translation="Tooltip_Sow_Beets"}
end