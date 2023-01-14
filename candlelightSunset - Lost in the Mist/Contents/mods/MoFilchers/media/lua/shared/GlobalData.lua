MoFilchers = {}

local activeMods = getActivatedMods()
MoFilchers.MCMInstalled = activeMods:contains("MCM")
MoFilchers.FilcherInstalled = (activeMods:contains("FarmingTime") or activeMods:contains("AwesomeTime"))
MoFilchers.SnakesInstalled = activeMods:contains("LeGourmetRevolution")
MoFilchers.SnakesTexturesInstalled = activeMods:contains("CustomMapBridge")
MoFilchers.JiggaInstalled = activeMods:contains("jiggasGreenfireMod")
MoFilchers.NeverRotInstalled = activeMods:contains("FarmingNeverRot")
MoFilchers.XnertotInstalled = activeMods:contains("XnerTree")
MoFilchers.CoffeeInstalled = activeMods:contains("FarmingCoffeeTime")
MoFilchers.VanillaInstalled = true -- Lazy but it works lol

MoFilchers.modMapping = {
    ["F"] = "FilcherInstalled",
    ["G"] = "SnakesInstalled",
    ["M"] = "MCMInstalled",
    ["J"] = "JiggaInstalled",
    ["X"] = "XnertotInstalled",
    ["C"] = "CoffeeInstalled",
    ["V"] = "VanillaInstalled"
}

-- This mod is unfortunately hard-coded, any updates to either mod that adjusts seeds required won't carry over unless this is updated.
MoFilchers.allItems = {}
MoFilchers.itemConversions = {
    ["F"] = {
        ["BeetSeed"] = {
            seedData = {
                seedsRequired = 6;
                texture = "vegetation_farming_01_54";
                waterLvl = 60;
                waterLvlMax = 95;
                timeToGrow = ZombRand(89, 103);
                minVeg = 4;
                maxVeg = 9;
                minVegAutorized = 11;
                maxVegAutorized = 15;
                vegetableName = "filcher.Beetroot";
                seedName = "filcher.BeetSeed";
                growCode = "SFFarmNewVeggies.growBeets";
                seedPerVeg = 4;
            },

            spriteData = {
                "vegetation_farming_01_48",
                "vegetation_farming_01_49",
                "vegetation_farming_01_50",
                "vegetation_farming_01_51",
                "vegetation_farming_01_52",
                "vegetation_farming_01_54",
                "vegetation_farming_01_53",
                "vegetation_farming_01_55"
            },

            icon = "media/textures/Item_SFBeetroot.png",
            farmName = "Beets",
            oldFarmName = "Beets",
        },

        ["BeetSeedBag"] = {
            itemName = "filcher.BeetBagSeed"
        },

        ["CauliflowerSeed"] = {
            seedData = {
                seedsRequired = 9;
                texture = "vegetation_farming_01_21";
                waterLvl = 70;
                timeToGrow = ZombRand(50,55);
                vegetableName = "filcher.Cauliflower";
                seedName = "filcher.CauliflowerSeed";
                seedPerVeg = 3;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 9;
                maxVegAutorized = 11;
                growCode = "SFFarmNewVeggies.growCauliflowers";
            },

            spriteData = {
                "vegetation_farming_01_16",
                "vegetation_farming_01_17",
                "vegetation_farming_01_18",
                "vegetation_farming_01_19",
                "vegetation_farming_01_20",
                "vegetation_farming_01_21",
                "vegetation_farming_01_22",
                "vegetation_farming_01_23"
            },

            icon = "media/textures/Item_Cauliflower.png",
            farmName = "Cauliflowers",
            oldFarmName = "Cauliflowers",
        },

        ["CauliflowerSeedBag"] = {
            itemName = "filcher.CauliflowerBagSeed"
        },

        ["CornSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_77";
                waterLvl = 75;
                timeToGrow = ZombRand(62, 103);
                vegetableName = "Base.Corn";
                seedName = "filcher.CornSeed";
                growCode = "SFFarmNewVeggies.growCorn";
                seedPerVeg = 4;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 9;
                maxVegAutorized = 11;
                phaseName5 = "Farming_In_bloom";
                phaseName6 = "Farming_Ready_for_Harvest";
            },

            spriteData = {
                "vegetation_farming_01_72",
                "vegetation_farming_01_73",
                "vegetation_farming_01_74",
                "vegetation_farming_01_75",
                "vegetation_farming_01_76",
                "vegetation_farming_01_77",
                "vegetation_farming_01_78",
                "vegetation_farming_01_79"
            },

            icon = "Item_Corn",
            farmName = "Corn",
            oldFarmName = "Corn",
        },

        ["CornSeedBag"] = {
            itemName = "filcher.CornBagSeed"
        },
        
        ["LemongrassSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "sffarming_01_09";
                waterLvl = 70;
                timeToGrow = ZombRand(40,45);
                vegetableName = "Base.LemonGrass";
                seedName = "filcher.SFLemonGrassSeed";
                growCode = "SFFarmNewVeggies.growLemongrass";
                seedPerVeg = 2;
                minVeg = 1;
                maxVeg = 3;
                minVegAutorized = 2;
                maxVegAutorized = 5;
                retainOnHarvest = 2;
            },

            spriteData = {
                "vegetation_farming_01_40",
                "vegetation_farming_01_41",
                "sffarming_01_07",
                "sffarming_01_07",
                "sffarming_01_08",
                "sffarming_01_09",
                "sffarming_01_10",
                "sffarming_01_11",
            },

            icon = "Item_LemonGrass",
            farmName = "Lemongrass",
            oldFarmName = "Lemongrass",
        },

        ["LemongrassSeedBag"] = {
            itemName = "filcher.SFLemonGrassBagSeed"
        },

        ["LettuceSeed"] = {
            seedData = {
                seedsRequired = 9;
                texture = "vegetation_farming_01_21";
                waterLvl = 65;
                timeToGrow = ZombRand(45,50);
                vegetableName = "Base.Lettuce";
                seedName = "filcher.LettuceSeed";
                growCode = "SFFarmNewVeggies.growLettuce";
                seedPerVeg = 3;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 9;
                maxVegAutorized = 11;
            },

            spriteData = {
                "vegetation_farming_01_16",
                "vegetation_farming_01_17",
                "vegetation_farming_01_18",
                "vegetation_farming_01_19",
                "vegetation_farming_01_20",
                "vegetation_farming_01_21",
                "vegetation_farming_01_22",
                "vegetation_farming_01_23"
            },

            icon = "Item_Lettuce",
            farmName = "Lettuce",
            oldFarmName = "Lettuce",
        },

        ["LettuceSeedBag"] = {
            itemName = "filcher.LettuceBagSeed"
        },

         ["WheatSeed"] = {
            seedData = {
                seedsRequired = 9;
                texture = "sffarming_01_05";
                waterLvl = 35;
                waterLvlMax = 85;
                timeToGrow = ZombRand(60, 80);
                vegetableName = "filcher.SFWheat";
                seedName = "filcher.SFWheatSeed";
                growCode = "SFFarmNewVeggies.growWheat";
                seedPerVeg = 3;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                phaseName6 = "Farming_Ready_for_Harvest";
            },

            spriteData = {
                "vegetation_farming_01_17",
                "sffarming_01_01",
                "sffarming_01_02",
                "sffarming_01_03",
                "sffarming_01_04",
                "sffarming_01_05",
                "sffarming_01_06",
                "sffarming_01_06",               
            },

            icon = "Item_SFWheat.png",
            farmName = "Wheat",
            oldFarmName = "Wheat",
         },

        ["WheatSeedBag"] = {
            itemName = "filcher.SFWheatBagSeed"
        },
    },

    ["M"] = {
        ["AvocadoSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_71";
                waterLvl = 75;
                timeToGrow = ZombRand(56, 62); -- 56, 62
                vegetableName = "Base.Avocado";
                seedName = "MCM.Avocadoseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 2;
                minVeg = 4;
                maxVeg = 5;
                minVegAutorized = 6;
                maxVegAutorized = 10;
            },

            spriteData = {
                "vegetation_farming_01_64",
                "vegetation_farming_01_65",
                "vegetation_farming_01_66",
                "vegetation_farming_01_67",
                "vegetation_farming_01_68",
                "vegetation_farming_01_69",
                "vegetation_farming_01_70",
                "vegetation_farming_01_71"            
            },

            icon = "vegIcon/item_Avocado.png",
            farmName = "Avocado",
            oldFarmName = "Avocado",
        },

        ["AvocadoSeedBag"] = {
            itemName = "MCM.AvocadoBagSeed"
        },

        ["CornSeed"] = {
            seedData = {
                seedsRequired = 5;
                texture = "vegetation_farming_01_78";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103); --89, 103
                vegetableName = "Base.Corn";
                seedName = "MCM.Cornseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 3;
                minVeg = 4;
                maxVeg = 5;
                minVegAutorized = 6;
                maxVegAutorized = 10;
            },

            spriteData = {
                "vegetation_farming_01_72",
                "vegetation_farming_01_73",
                "vegetation_farming_01_74",
                "vegetation_farming_01_75",
                "vegetation_farming_01_76",
                "vegetation_farming_01_77",
                "vegetation_farming_01_78",
                "vegetation_farming_01_79"     
            },

            icon = "vegIcon/item_Corn.png",
            farmName = "Corn",
            oldFarmName = "Corn",
        },

        ["CornSeedBag"] = {
            itemName = "MCM.CornBagSeed"
        },

        ["EggplantSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_71";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103); --89, 103
                vegetableName = "Base.Eggplant";
                seedName = "MCM.Eggplantseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 2;
                minVeg = 4;
                maxVeg = 5;
                minVegAutorized = 6;
                maxVegAutorized = 10;
            },

            spriteData = {
                "vegetation_farming_01_64",
                "vegetation_farming_01_65",
                "vegetation_farming_01_66",
                "vegetation_farming_01_67",
                "vegetation_farming_01_68",
                "vegetation_farming_01_69",
                "vegetation_farming_01_70",
                "vegetation_farming_01_71"  
            },

            icon = "vegIcon/item_Eggplant.png",
            farmName = "Eggplant",
            oldFarmName = "Eggplant",
        },

        ["EggplantSeedBag"] = {
            itemName = "MCM.EggplantBagSeed"
        },

        ["LeekSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_47";
                waterLvl = 65;
                timeToGrow = ZombRand(35, 45); --89, 103
                vegetableName = "Base.Leek";
                seedName = "MCM.Leekseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 2;
                minVeg = 3;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 9;
            },

            spriteData = {
                "vegetation_farming_01_40",
                "vegetation_farming_01_41",
                "vegetation_farming_01_42",
                "vegetation_farming_01_43",
                "vegetation_farming_01_44",
                "vegetation_farming_01_46",
                "vegetation_farming_01_45",
                "vegetation_farming_01_47"
            },

            icon = "vegIcon/item_Leek.png",
            farmName = "Leek",
            oldFarmName = "Leek",
        },

        ["LeekSeedBag"] = {
            itemName = "MCM.LeekBagSeed"
        },

        ["LettuceSeed"] = {
            seedData = {
                seedsRequired = 9;
                texture = "vegetation_farming_01_23";
                waterLvl = 65;
                timeToGrow = ZombRand(45, 50); --45, 50
                vegetableName = "Base.Lettuce";
                seedName = "MCM.Lettuceseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 3;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 9;
                maxVegAutorized = 11;
            },

            spriteData = {
                "vegetation_farming_01_16",
                "vegetation_farming_01_17",
                "vegetation_farming_01_18",
                "vegetation_farming_01_19",
                "vegetation_farming_01_20",
                "vegetation_farming_01_21",
                "vegetation_farming_01_22",
                "vegetation_farming_01_23"
            },

            icon = "vegIcon/item_Lettuce.png",
            farmName = "Lettuce",
            oldFarmName = "Lettuce",
        },

        ["OnionSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_47";
                waterLvl = 65;
                timeToGrow = ZombRand(89, 103); --89, 103
                vegetableName = "Base.Onion";
                seedName = "MCM.Onionseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 2;
                minVeg = 3;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 9;
            },

            spriteData = {
                "vegetation_farming_01_40",
                "vegetation_farming_01_41",
                "vegetation_farming_01_42",
                "vegetation_farming_01_43",
                "vegetation_farming_01_44",
                "vegetation_farming_01_46",
                "vegetation_farming_01_45",
                "vegetation_farming_01_47"
            },

            icon = "vegIcon/item_Onion.png",
            farmName = "Onion",
            oldFarmName = "Onion",
        },

        ["OnionSeedBag"] = {
            itemName = "MCM.OnionBagSeed"
        },

        ["PepperSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_71";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103); --89, 103
                vegetableName = "Base.BellPepper";
                seedName = "MCM.Pepperseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 2;
                minVeg = 4;
                maxVeg = 5;
                minVegAutorized = 6;
                maxVegAutorized = 10;
            },

            spriteData = {
                "vegetation_farming_01_64",
                "vegetation_farming_01_65",
                "vegetation_farming_01_66",
                "vegetation_farming_01_67",
                "vegetation_farming_01_68",
                "vegetation_farming_01_69",
                "vegetation_farming_01_70",
                "vegetation_farming_01_71"
            },

            icon = "vegIcon/item_BellPepper.png",
            farmName = "Bell Pepper",
            oldFarmName = "Pepper",
        },

        ["PepperSeedBag"] = {
            itemName = "MCM.PepperBagSeed"
        },

        ["WatermelonSeed"] = {
            seedData = {
                seedsRequired = 9;
                texture = "vegetation_farming_01_23";
                waterLvl = 85;
                timeToGrow = ZombRand(89, 103); --89, 103
                vegetableName = "Base.Watermelon";
                seedName = "MCM.Watermelonseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 3;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 9;
                maxVegAutorized = 11;
            },

            spriteData = {
                "vegetation_farming_01_16",
                "vegetation_farming_01_17",
                "vegetation_farming_01_18",
                "vegetation_farming_01_19",
                "vegetation_farming_01_20",
                "vegetation_farming_01_21",
                "vegetation_farming_01_22",
                "vegetation_farming_01_23"
            },

            icon = "vegIcon/item_Watermelon.png",
            farmName = "Watermelon",
            oldFarmName = "Watermelon",
        },

        ["WatermelonSeedBag"] = {
            itemName = "MCM.WatermelonBagSeed"
        },

        ["ZucchiniSeed"] = {
            seedData = {
                seedsRequired = 6;
                texture = "vegetation_farming_01_63";
                waterLvl = 85;
                timeToGrow = ZombRand(103, 131); --103, 131
                vegetableName = "Base.Zucchini";
                seedName = "MCM.Zucchiniseed";
                growCode = "MoCropsconf.growNewCrop";
                seedPerVeg = 4;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 14;
            },

            spriteData = {
                "vegetation_farming_01_56",
                "vegetation_farming_01_57",
                "vegetation_farming_01_58",
                "vegetation_farming_01_59",
                "vegetation_farming_01_60",
                "vegetation_farming_01_61",
                "vegetation_farming_01_62",
                "vegetation_farming_01_63"
            },

            icon = "vegIcon/item_Zucchini.png",
            farmName = "Zucchini",
            oldFarmName = "Zucchini",
        },

        ["ZucchiniSeedBag"] = {
            itemName = "MCM.ZucchiniBagSeed"
        },
    },

    ["G"] = {
        ["AppleSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "LegourmetFarming_03_23";
                waterLvl = 75;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.NaturalApple";
                seedName = "legourmetfarming.AppleSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growApple";
                drySprite = "LegourmetFarming_03_53";
                rotSprite = "LegourmetFarming_03_24";
                destroySprite = "LegourmetFarming_03_54";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_17",
                "LegourmetFarming_03_18",
                "LegourmetFarming_03_19",
                "LegourmetFarming_03_20",
                "LegourmetFarming_03_21",
                "LegourmetFarming_03_22",
                "LegourmetFarming_03_23",
                "LegourmetFarming_03_24"
            },

            icon = "Item_Apple",
            farmName = "Apple",
            oldFarmName = "Apple",
        },

        ["AvocadoSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "LegourmetFarming_03_74";
                waterLvl = 85;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.NaturalAvocado";
                seedName = "legourmetfarming.AvocadoSeed";
                growCode = "farming_vegetableconf.growAvocado";
                seedPerVeg = 1;
                drySprite = "LegourmetFarming_03_76";
                rotSprite = "LegourmetFarming_03_75";
                destroySprite = "LegourmetFarming_03_77";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_green_fruit";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_68",
                "LegourmetFarming_03_69",
                "LegourmetFarming_03_70",
                "LegourmetFarming_03_71",
                "LegourmetFarming_03_72",
                "LegourmetFarming_03_73",
                "LegourmetFarming_03_74",
                "LegourmetFarming_03_75"
            },

            icon = "media/textures/Item_Naturalavocado.png",
            farmName = "Avocado",
            oldFarmName = "Avocado",
        },

        ["BananaSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 3;
                texture = "LegourmetFarming_03_39";
                waterLvl = 85;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.NaturalBanana";
                seedName = "legourmetfarming.BananaSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growBanana";
                drySprite = "LegourmetFarming_03_55";
                rotSprite = "LegourmetFarming_03_40";
                destroySprite = "LegourmetFarming_03_55";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_33",
                "LegourmetFarming_03_34",
                "LegourmetFarming_03_35",
                "LegourmetFarming_03_36",
                "LegourmetFarming_03_37",
                "LegourmetFarming_03_38",
                "LegourmetFarming_03_39",
                "LegourmetFarming_03_40"
            },

            icon = "Item_Banana",
            farmName = "Banana",
            oldFarmName = "Banana",
        },

        ["BeanSeed"] = {
            seedData = {
                requiredskill = 3;
                seedsRequired = 5;
                sticksRequired = 7;
                sheetropeRequired = 6;
                plantType = 2;
                texture = "LegourmetFarming_01_5";
                waterLvl = 70;
                timeToGrow = ZombRand(54, 68);
                minVeg = 4;
                maxVeg = 5;
                minVegAutorized = 6;
                maxVegAutorized = 10;
                vegetableName = "Base.Beans";
                seedName = "legourmetfarming.BeanSeed";
                growCode = "farming_vegetableconf.growBean";
                drySprite = "LegourmetFarming_02_35";
                rotSprite = "LegourmetFarming_01_7";
                destroySprite = "LegourmetFarming_02_34";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_01_0",
                "LegourmetFarming_01_1",
                "LegourmetFarming_01_2",
                "LegourmetFarming_01_3",
                "LegourmetFarming_01_4",
                "LegourmetFarming_01_5",
                "LegourmetFarming_01_6",
                "LegourmetFarming_01_7"
            },

            icon = "media/textures/Item_LgBeans.png",
            farmName = "Bean",
            oldFarmName = "Bean",
        },

        ["BeanSeedBag"] = {
            itemName = "legourmetfarming.BeanBagSeed"
        },
        
        ["BroccoliSeed"] = {
            seedData = {
                requiredskill = 0;
                waterLvl = 70;
                seedsRequired = 4;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "vegetation_farming_01_30";
                timeToGrow = ZombRand(103, 117);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 6;
                maxVegAutorized = 8;
                vegetableName = "Base.Broccoli";
                seedName = "farming.BroccoliSeed";
                growCode = "farming_vegetableconf.growBroccoli";
                seedPerVeg = ZombRand(1,3);
                rotSprite = "vegetation_farming_01_23";
            },

            spriteData = {
                "vegetation_farming_01_24",
                "vegetation_farming_01_25",
                "vegetation_farming_01_26",
                "vegetation_farming_01_27",
                "vegetation_farming_01_28",
                "vegetation_farming_01_30",
                "vegetation_farming_01_29",
                "vegetation_farming_01_31"
            },

            icon = "Item_Broccoli",
            farmName = "Broccoli",
            oldFarmName = "Broccoli",
        },

        ["CabbageSeed"] = {
            seedData = {
                requiredskill = 2;
                seedsRequired = 6;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "vegetation_farming_01_21";
                waterLvl = 85;
                timeToGrow = ZombRand(46, 52);
                vegetableName = "farming.Cabbage";
                seedName = "farming.CabbageSeed";
                seedPerVeg = ZombRand(1,3);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 9;
                growCode = "farming_vegetableconf.growCabbage";
                rotSprite = "vegetation_farming_01_31";
            },

            spriteData = {
                "vegetation_farming_01_16",
                "vegetation_farming_01_17",
                "vegetation_farming_01_18",
                "vegetation_farming_01_19",
                "vegetation_farming_01_20",
                "vegetation_farming_01_22",
                "vegetation_farming_01_21",
                "vegetation_farming_01_23"
            },

            icon = "Item_TZ_CabbageLettuce",
            farmName = "Cabbages",
            oldFarmName = "Cabbages",
        },

        ["CarrotSeed"] = {
            seedData = {
                requiredskill = 0;
                seedsRequired = 6;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "vegetation_farming_01_38";
                waterLvl = 35;
                waterLvlMax = 85;
                timeToGrow = ZombRand(50,55);
                minVeg = 3;
                maxVeg = 6;
                minVegAutorized = 10;
                maxVegAutorized = 15;
                vegetableName = "Base.Carrots";
                seedName = "farming.CarrotSeed";
                growCode = "farming_vegetableconf.growCarrots";
                seedPerVeg = ZombRand(1,3);
                rotSprite = "vegetation_farming_01_13";
            },

            spriteData = {
                "vegetation_farming_01_32",
                "vegetation_farming_01_33",
                "vegetation_farming_01_34",
                "vegetation_farming_01_35",
                "vegetation_farming_01_36",
                "vegetation_farming_01_37",
                "vegetation_farming_01_38",
                "vegetation_farming_01_39"
            },

            icon = "Item_Carrots",
            farmName = "Carrots",
            oldFarmName = "Carrots",
        },

        ["CherrySeed"] = {
            seedData = {
                requiredskill = 7;
                seedsRequired = 10;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "LegourmetFarming_03_47";
                waterLvl = 85;
                timeToGrow = ZombRand(412, 524);
                minVeg = 8;
                maxVeg = 10;
                minVegAutorized = 12;
                maxVegAutorized = 14;
                vegetableName = "legourmetfarming.NaturalCherry";
                seedName = "legourmetfarming.CherrySeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growCherry";
                drySprite = "LegourmetFarming_03_56";
                rotSprite = "LegourmetFarming_03_48";
                destroySprite = "LegourmetFarming_03_57";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_41",
                "LegourmetFarming_03_42",
                "LegourmetFarming_03_43",
                "LegourmetFarming_03_44",
                "LegourmetFarming_03_45",
                "LegourmetFarming_03_46",
                "LegourmetFarming_03_47",
                "LegourmetFarming_03_48"
            },

            icon = "Item_Cherry",
            farmName = "Cherry",
            oldFarmName = "Cherry",
        },

        ["ChiliSeed"] = {
            seedData = {
                requiredskill = 3;
                seedsRequired = 5;
                sticksRequired = 4;
                sheetropeRequired = 6;
                plantType = 2;
                texture = "LegourmetFarming_02_76";
                waterLvl = 70;
                timeToGrow = ZombRand(54, 68);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Chili";
                seedName = "legourmetfarming.ChiliSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growChili";
                drySprite = "vegetation_farming_01_6";
                rotSprite = "LegourmetFarming_02_77";
                destroySprite = "vegetation_farming_01_14";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_green_fruit";
            },

            spriteData = {
                "LegourmetFarming_02_60",
                "LegourmetFarming_02_61",
                "LegourmetFarming_02_62",
                "LegourmetFarming_02_63",
                "LegourmetFarming_02_64",
                "LegourmetFarming_02_65",
                "LegourmetFarming_02_66",
                "LegourmetFarming_02_67"
            },

            icon = "media/textures/Item_Chili.png",
            farmName = "Chili",
            oldFarmName = "Chili",
        },

        ["ChiliSeedBag"] = {
            itemName = "legourmetfarming.ChiliBagSeed"
        },

        ["CoffeeSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 5;
                sticksRequired = 1;
                sheetropeRequired = 3;
                plantType = 2;
                texture = "LegourmetFarming_02_66";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103);
                minVeg = 4;
                maxVeg = 5;
                minVegAutorized = 6;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.CafeSeed";
                seedName = "legourmetfarming.CafeSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growCoffee";
                drySprite = "LegourmetFarming_02_68";
                rotSprite = "LegourmetFarming_02_67";
                destroySprite = "LegourmetFarming_02_69";
                phaseName5 = "Farming_green_fruit";
            },

            spriteData = {
                "LegourmetFarming_02_60",
                "LegourmetFarming_02_61",
                "LegourmetFarming_02_62",
                "LegourmetFarming_02_63",
                "LegourmetFarming_02_64",
                "LegourmetFarming_02_65",
                "LegourmetFarming_02_66",
                "LegourmetFarming_02_67"
            },

            icon = "media/textures/Item_Cafeseeds.png",
            farmName = "Coffee",
            oldFarmName = "Coffee",
        },

        ["CoffeeSeedBag"] = {
            itemName = "Base.CoffeeBag"
        },

        ["CornSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 6;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "vegetation_farming_01_78";
                waterLvl = 65;
                waterLvlMax = 85;
                timeToGrow = ZombRand(56, 62);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Corn";
                seedName = "legourmetfarming.CornSeed";
                growCode = "farming_vegetableconf.growCorn";
                seedPerVeg = ZombRand(1,3);
                drySprite = "vegetation_farming_01_4";
                rotSprite = "vegetation_farming_01_79";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "vegetation_farming_01_72",
                "vegetation_farming_01_73",
                "vegetation_farming_01_74",
                "vegetation_farming_01_75",
                "vegetation_farming_01_76",
                "vegetation_farming_01_77",
                "vegetation_farming_01_78",
                "vegetation_farming_01_79"
            },

            icon = "Item_Corn",
            farmName = "Corn",
            oldFarmName = "Corn",
        },

        ["CornSeedBag"] = {
            itemName = "legourmetfarming.CornBagSeed"
        },

        ["EggplantSeed"] = {
            seedData = {
                requiredskill = 4;
                seedsRequired = 5;
                sticksRequired = 3;
                sheetropeRequired = 7;
                plantType = 2;
                texture = "LegourmetFarming_01_62";
                waterLvl = 70;
                timeToGrow = ZombRand(54, 68);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Eggplant";
                seedName = "legourmetfarming.EggplantSeed";
                growCode = "farming_vegetableconf.growEggplant";
                seedPerVeg = ZombRand(1,3);
                drySprite = "LegourmetFarming_02_39";
                rotSprite = "LegourmetFarming_01_63";
                destroySprite = "LegourmetFarming_02_38";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_01_56",
                "LegourmetFarming_01_57",
                "LegourmetFarming_01_58",
                "LegourmetFarming_01_59",
                "LegourmetFarming_01_60",
                "LegourmetFarming_01_61",
                "LegourmetFarming_01_62",
                "LegourmetFarming_01_63"
            },

            icon = "Item_Eggplant",
            farmName = "Eggplant",
            oldFarmName = "Eggplant",
         },

        ["EggplantSeedBag"] = {
            itemName = "legourmetfarming.EggplantBagSeed"
        },

         ["GrapeSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 5;
                sticksRequired = 2;
                sheetropeRequired = 3;
                plantType = 2;
                texture = "LegourmetFarming_01_54";
                waterLvl = 70;
                timeToGrow = ZombRand(54, 68);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Grapes";
                seedName = "legourmetfarming.GrapeSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growGrape";
                drySprite = "LegourmetFarming_02_36";
                rotSprite = "LegourmetFarming_01_55";
                destroySprite = "LegourmetFarming_02_37";
                phaseName5 = "Farming_Young";
            },

            spriteData = {
                "LegourmetFarming_01_48",
                "LegourmetFarming_01_49",
                "LegourmetFarming_01_50",
                "LegourmetFarming_01_51",
                "LegourmetFarming_01_52",
                "LegourmetFarming_01_53",
                "LegourmetFarming_01_54",
                "LegourmetFarming_01_55"
            },

            icon = "Item_Grapes",
            farmName = "Grape",
            oldFarmName = "Grape",
        },

        ["GrapeSeedBag"] = {
            itemName = "legourmetfarming.GrapeBagSeed"
        },

        ["GrapefruitSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 3;
                texture = "LegourmetFarming_04_62";
                waterLvl = 85;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "Base.Grapefruit";
                seedName = "legourmetfarming.GrapeFruitSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growGrape";
                drySprite = "LegourmetFarming_03_51";
                rotSprite = "LegourmetFarming_04_63";
                destroySprite = "LegourmetFarming_03_52";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_04_56",
                "LegourmetFarming_04_57",
                "LegourmetFarming_04_58",
                "LegourmetFarming_04_59",
                "LegourmetFarming_04_60",
                "LegourmetFarming_04_61",
                "LegourmetFarming_04_62",
                "LegourmetFarming_04_63"
            },

            icon = "Item_Grapefruit",
            farmName = "GrapeFruit",
            oldFarmName = "GrapeFruit",
        },

         ["HabaneroSeed"] = {
            seedData = {
               requiredskill = 3;
               seedsRequired = 5;
               sticksRequired = 4;
               sheetropeRequired = 6;
               plantType = 2;
               texture = "LegourmetFarming_04_30";
               waterLvl = 70;
               timeToGrow = ZombRand(54, 68);
               minVeg = 2;
               maxVeg = 4;
               minVegAutorized = 5;
               maxVegAutorized = 8;
               vegetableName = "Base.PepperHabanero";
               seedName = "legourmetfarming.HabaneroSeed";
               seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growHabanero";
                drySprite = "vegetation_farming_01_6";
                rotSprite = "LegourmetFarming_04_31";
                destroySprite = "vegetation_farming_01_14";
                phasename4 = "Farming_In_bloom";
                phaseName5 = "Farming_green_fruit";
            },

            spriteData = {
                "LegourmetFarming_04_24",
                "LegourmetFarming_04_25",
                "LegourmetFarming_04_26",
                "LegourmetFarming_04_27",
                "LegourmetFarming_04_28",
                "LegourmetFarming_04_29",
                "LegourmetFarming_04_30",
                "LegourmetFarming_04_31"
            },

            icon = "Item_PepperHabanero",
            farmName = "Habanero",
            oldFarmName = "Habanero",
        },

        ["HabaneroSeedBag"] = {
            itemName = "legourmetfarming.HabaneroBagSeed"
        },

         ["JalapenoSeed"] = {
            seedData = {
                requiredskill = 3;
                seedsRequired = 5;
                sticksRequired = 4;
                sheetropeRequired = 6;
                plantType = 2;
                texture = "LegourmetFarming_04_38";
                waterLvl = 70;
                timeToGrow = ZombRand(54, 68);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.PepperJalapeno";
                seedName = "legourmetfarming.JalapenoSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growJalapeno";
                drySprite = "vegetation_farming_01_6";
                rotSprite = "LegourmetFarming_04_39";
                destroySprite = "vegetation_farming_01_14";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_green_fruit";
            },

            spriteData = {
                "LegourmetFarming_04_32",
                "LegourmetFarming_04_33",
                "LegourmetFarming_04_34",
                "LegourmetFarming_04_35",
                "LegourmetFarming_04_36",
                "LegourmetFarming_04_37",
                "LegourmetFarming_04_38",
                "LegourmetFarming_04_39"
            },

            icon = "Item_PepperJalapeno",
            farmName = "Jalapeno",
            oldFarmName = "Jalapeno",
        },

        ["JalapenoSeedBag"] = {
            itemName = "legourmetfarming.JalapenoBagSeed"
        },

         ["LeekSeed"] = {
            seedData = {
                requiredskill = 0;
                seedsRequired = 6;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_02_13";
                waterLvl = 85;
                timeToGrow = ZombRand(46, 52);
                vegetableName = "Base.Leek";
                seedName = "legourmetfarming.LeekSeed";
                growCode = "farming_vegetableconf.growLeek";
                seedPerVeg = ZombRand(1,3);
                minVeg = 3;
                maxVeg = 6;
                minVegAutorized = 10;
                maxVegAutorized = 15;
                drySprite = "LegourmetFarming_02_15";
                rotSprite = "LegourmetFarming_02_15";
            },

            spriteData = {
                "LegourmetFarming_02_8",
                "LegourmetFarming_02_9",
                "LegourmetFarming_02_10",
                "LegourmetFarming_02_11",
                "LegourmetFarming_02_12",
                "LegourmetFarming_02_14",
                "LegourmetFarming_02_13",
                "LegourmetFarming_02_15"
            },

            icon = "Item_Leek",
            farmName = "Leek",
            oldFarmName = "Leek",
        },

        ["LeekSeedBag"] = {
            itemName = "legourmetfarming.LeekBagSeed"
        },

        ["LemonSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "LegourmetFarming_03_7";
                waterLvl = 85;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.NaturalLemon";
                seedName = "legourmetfarming.LemonSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growLemon";
                drySprite = "LegourmetFarming_03_49";
                rotSprite = "LegourmetFarming_03_8";
                destroySprite = "LegourmetFarming_03_50";
                phaseName5 = "Farming_green_fruit";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_1",
                "LegourmetFarming_03_2",
                "LegourmetFarming_03_3",
                "LegourmetFarming_03_4",
                "LegourmetFarming_03_5",
                "LegourmetFarming_03_6",
                "LegourmetFarming_03_7",
                "LegourmetFarming_03_8"
            },

            icon = "media/textures/Item_Naturallemon.png",
            farmName = "Lemon",
            oldFarmName = "Lemon",
        },

        ["LettuceSeed"] = {
            seedData = {
                requiredskill = 3;
                seedsRequired = 9;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_02_22";
                waterLvl = 85;
                timeToGrow = ZombRand(46, 52);
                vegetableName = "Base.Lettuce";
                seedName = "legourmetfarming.LettuceSeed";
                growCode = "farming_vegetableconf.growLettuce";
                seedPerVeg = ZombRand(1,3);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                drySprite = "LegourmetFarming_02_23";
                rotSprite = "LegourmetFarming_02_23";
            },

            spriteData = {
                "LegourmetFarming_02_16",
                "LegourmetFarming_02_17",
                "LegourmetFarming_02_18",
                "LegourmetFarming_02_19",
                "LegourmetFarming_02_20",
                "LegourmetFarming_02_21",
                "LegourmetFarming_02_22",
                "LegourmetFarming_02_23"
            },

            icon = "Item_Lettuce",
            farmName = "Lettuce",
            oldFarmName = "Lettuce",
        },

        ["LettuceSeedBag"] = {
            itemName = "legourmetfarming.LettuceBagSeed"
        },

        ["LimeSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 3;
                texture = "LegourmetFarming_03_66";
                waterLvl = 85;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.NaturalLime";
                seedName = "legourmetfarming.LimeSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growLime";
                drySprite = "LegourmetFarming_03_56";
                rotSprite = "LegourmetFarming_03_67";
                destroySprite = "LegourmetFarming_03_57";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_60",
                "LegourmetFarming_03_61",
                "LegourmetFarming_03_62",
                "LegourmetFarming_03_63",
                "LegourmetFarming_03_64",
                "LegourmetFarming_03_65",
                "LegourmetFarming_03_66",
                "LegourmetFarming_03_67"
            },

            icon = "media/textures/Item_Naturallime.png",
            farmName = "Lime",
            oldFarmName = "Lime",
        },

        ["MangoSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "LegourmetFarming_04_54";
                waterLvl = 85;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "Base.Mango";
                seedName = "legourmetfarming.MangoSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growMango";
                drySprite = "LegourmetFarming_03_53";
                rotSprite = "LegourmetFarming_04_55";
                destroySprite = "LegourmetFarming_03_54";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_04_48",
                "LegourmetFarming_04_49",
                "LegourmetFarming_04_50",
                "LegourmetFarming_04_51",
                "LegourmetFarming_04_52",
                "LegourmetFarming_04_53",
                "LegourmetFarming_04_54",
                "LegourmetFarming_04_55"
            },

            icon = "Item_Mango",
            farmName = "Mango",
            oldFarmName = "Mango",
        },

        ["OnionSeed"] = {
            seedData = {
                requiredskill = 0;
                seedsRequired = 6;
               --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_02_6";
                waterLvl = 65;
                timeToGrow = ZombRand(89, 103);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Onion";
                seedName = "legourmetfarming.OnionSeed";
                growCode = "farming_vegetableconf.growOnion";
                seedPerVeg = ZombRand(1,3);
                drySprite = "LegourmetFarming_02_7";
                rotSprite = "LegourmetFarming_02_7";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_02_0",
                "LegourmetFarming_02_1",
                "LegourmetFarming_02_2",
                "LegourmetFarming_02_3",
                "LegourmetFarming_02_4",
                "LegourmetFarming_02_6",
                "LegourmetFarming_02_5",
                "LegourmetFarming_02_7"
            },

            icon = "Item_Onion",
            farmName = "Onion",
            oldFarmName = "Onion",
        },

        ["OnionSeedBag"] = {
            itemName = "legourmetfarming.OnionBagSeed"
        },

        ["OrangeSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "LegourmetFarming_03_15";
                waterLvl = 75;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.NaturalOrange";
                seedName = "legourmetfarming.OrangeSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growOrange";
                drySprite = "LegourmetFarming_03_51";
                rotSprite = "LegourmetFarming_03_16";
                destroySprite = "LegourmetFarming_03_52";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_9",
                "LegourmetFarming_03_10",
                "LegourmetFarming_03_11",
                "LegourmetFarming_03_12",
                "LegourmetFarming_03_13",
                "LegourmetFarming_03_14",
                "LegourmetFarming_03_15",
                "LegourmetFarming_03_16"
            },

            icon = "Item_Orange",
            farmName = "Orange",
            oldFarmName = "Orange",
        },

        ["PeaSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 5;
                sticksRequired = 2;
                sheetropeRequired = 3;
                plantType = 2;
                texture = "LegourmetFarming_01_37";
                waterLvl = 70;
                timeToGrow = ZombRand(54, 68);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Peas2";
                seedName = "legourmetfarming.PeaSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growPea";
                drySprite = "LegourmetFarming_02_32";
                rotSprite = "LegourmetFarming_01_39";
                destroySprite = "LegourmetFarming_02_33";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_01_32",
                "LegourmetFarming_01_33",
                "LegourmetFarming_01_34",
                "LegourmetFarming_01_35",
                "LegourmetFarming_01_36",
                "LegourmetFarming_01_37",
                "LegourmetFarming_01_38",
                "LegourmetFarming_01_39"
            },

            icon = "media/textures/Item_Peas2.png",
            farmName = "Pea",
            oldFarmName = "Pea",
        },

        ["PeaSeedBag"] = {
            itemName = "legourmetfarming.PeaBagSeed"
        },

        ["PeachSeed"] = {
            seedData = {
                requiredskill = 7;
                seedSkill = 7;
                seedsRequired = 10;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 3;
                texture = "LegourmetFarming_03_31";
                waterLvl = 80;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.NaturalPeach";
                seedName = "legourmetfarming.PeachSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growPeach";
                drySprite = "LegourmetFarming_03_53";
                rotSprite = "LegourmetFarming_03_32";
                destroySprite = "LegourmetFarming_03_54";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_03_25",
                "LegourmetFarming_03_26",
                "LegourmetFarming_03_27",
                "LegourmetFarming_03_28",
                "LegourmetFarming_03_29",
                "LegourmetFarming_03_30",
                "LegourmetFarming_03_31",
                "LegourmetFarming_03_32"
            },

            icon = "Item_Peach",
            farmName = "Peach",
            oldFarmName = "Peach",
        },

        ["PeanutSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 4;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_02_29";
                waterLvl = 50;
                waterLvlMax = 85;
                timeToGrow = ZombRand(54, 68);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Peanuts";
                seedName = "legourmetfarming.PeanutSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growPeanut";
                drySprite = "LegourmetFarming_02_31";
                rotSprite = "LegourmetFarming_02_31";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_02_24",
                "LegourmetFarming_02_25",
                "LegourmetFarming_02_26",
                "LegourmetFarming_02_27",
                "LegourmetFarming_02_28",
                "LegourmetFarming_02_29",
                "LegourmetFarming_02_30",
                "LegourmetFarming_02_31"
            },

            icon = "Item_Peanut",
            farmName = "Peanut",
            oldFarmName = "Peanut",
        },

        ["PeanutSeedBag"] = {
            itemName = "legourmetfarming.PeanutBagSeed"
        },

        ["PearSeed"] = {
            seedData = {
                requiredskill = 7;
                seedsRequired = 10;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 3;
                texture = "LegourmetFarming_04_46";
                waterLvl = 75;
                timeToGrow = ZombRand(412, 524);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 10;
                vegetableName = "Base.Pear";
                seedName = "legourmetfarming.PearSeed";
                seedPerVeg = 1;
                growCode = "farming_vegetableconf.growPear";
                drySprite = "LegourmetFarming_03_53";
                rotSprite = "LegourmetFarming_04_47";
                destroySprite = "LegourmetFarming_03_54";
                phaseName5 = "Farming_Young";
                phaseName6 = "Farming_Ready_for_Harvest";
                retainOnHarvest = 5;
                retainOnRot = 5;
            },

            spriteData = {
                "LegourmetFarming_04_40",
                "LegourmetFarming_04_41",
                "LegourmetFarming_04_42",
                "LegourmetFarming_04_43",
                "LegourmetFarming_04_44",
                "LegourmetFarming_04_45",
                "LegourmetFarming_04_46",
                "LegourmetFarming_04_47"
            },

            icon = "Item_Pear",
            farmName = "Pear",
            oldFarmName = "Pear",
        },

        ["PepperSeed"] = {
            seedData = {
                requiredskill = 3;
                seedsRequired = 5;
                sticksRequired = 2;
                sheetropeRequired = 3;
                plantType = 2;
                texture = "LegourmetFarming_01_46";
                waterLvl = 70;
                timeToGrow = ZombRand(54, 68);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.BellPepper";
                seedName = "legourmetfarming.BellPepperSeed";
                growCode = "farming_vegetableconf.growBellPepper";
                seedPerVeg = ZombRand(1,3);
                drySprite = "LegourmetFarming_02_32";
                rotSprite = "LegourmetFarming_01_47";
                destroySprite = "LegourmetFarming_02_33";
            },

            spriteData = {
                "LegourmetFarming_01_40",
                "LegourmetFarming_01_41",
                "LegourmetFarming_01_42",
                "LegourmetFarming_01_43",
                "LegourmetFarming_01_44",
                "LegourmetFarming_01_45",
                "LegourmetFarming_01_46",
                "LegourmetFarming_01_47"
            },

            icon = "Item_BellPepper",
            farmName = "Bell Pepper",
            oldFarmName = "BellPepper",
        },

        ["PepperSeedBag"] = {
            itemName = "legourmetfarming.BellPepperBagSeed"
        },

        ["PineappleSeed"] = {
            seedData = {
                requiredskill = 3;
                seedSkill = 7;
                seedsRequired = 1;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "LegourmetFarming_02_58";
                waterLvl = 75;
                waterLvlMax = 85;
                timeToGrow = ZombRand(56, 62);
                minVeg = 1;
                maxVeg = 1;
                minVegAutorized = 1;
                maxVegAutorized = 1;
                vegetableName = "legourmetfarming.NaturalPineapple";
                seedName = "legourmetfarming.PineappleSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growPineapple";
                drySprite = "LegourmetFarming_03_58";
                rotSprite = "LegourmetFarming_02_59";
                destroySprite = "LegourmetFarming_03_59";
                phaseName5 = "Farming_Young";
            },

            spriteData = {
                "LegourmetFarming_02_52",
                "LegourmetFarming_02_53",
                "LegourmetFarming_02_54",
                "LegourmetFarming_02_55",
                "LegourmetFarming_02_56",
                "LegourmetFarming_02_57",
                "LegourmetFarming_02_58",
                "LegourmetFarming_02_59"
            },

            icon = "Item_Pineapple",
            farmName = "Pineapple",
            oldFarmName = "Pineapple",
        },

        ["PineappleSeedBag"] = {
            itemName = "legourmetfarming.PineappleBagSeed"
        },

        ["PotatoSeed"] = {
            seedData = {
                requiredskill = 1;
                seedsRequired = 4;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "vegetation_farming_01_46";
                waterLvl = 65;
                timeToGrow = ZombRand(89, 103);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 9;
                vegetableName = "farming.Potato";
                seedName = "farming.PotatoSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growPotato";
                rotSprite = "vegetation_farming_01_47";
            },

            spriteData = {
                "vegetation_farming_01_40",
                "vegetation_farming_01_41",
                "vegetation_farming_01_42",
                "vegetation_farming_01_43",
                "vegetation_farming_01_44",
                "vegetation_farming_01_46",
                "vegetation_farming_01_45",
                "vegetation_farming_01_47"
            },

            icon = "Item_TZ_Potato",
            farmName = "Potatoes",
            oldFarmName = "Potatoes",
        },

        ["PumpkinSeed"] = {
            seedData = {
                requiredskill = 7;
                seedsRequired = 6;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_01_14";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103);
                minVeg = 1;
                maxVeg = 2;
                minVegAutorized = 4;
                maxVegAutorized = 5;
                vegetableName = "Base.Pumpkin";
                seedName = "legourmetfarming.PumpkinSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growPumpkin";
                drySprite = "LegourmetFarming_02_40";
                rotSprite = "LegourmetFarming_01_15";
                destroySprite = "LegourmetFarming_02_41";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Young";
            },

            spriteData = {
                "LegourmetFarming_01_8",
                "LegourmetFarming_01_9",
                "LegourmetFarming_01_10",
                "LegourmetFarming_01_11",
                "LegourmetFarming_01_12",
                "LegourmetFarming_01_13",
                "LegourmetFarming_01_14",
                "LegourmetFarming_01_15"
            },

            icon = "Item_Pumpkin",
            farmName = "Pumpkin",
            oldFarmName = "Pumpkin",
        },

        ["PumpkinSeedBag"] = {
            itemName = "legourmetfarming.PumpkinBagSeed"
        },

        ["RadishSeed"] = {
            seedData = {
                requiredskill = 0;
                seedsRequired = 9;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "vegetation_farming_01_54";
                waterLvl = 45;
                waterLvlMax = 85;
                timeToGrow = ZombRand(56, 62);
                minVeg = 4;
                maxVeg = 9;
                minVegAutorized = 11;
                maxVegAutorized = 15;
                vegetableName = "farming.RedRadish";
                seedName = "farming.RedRadishSeed";
                growCode = "farming_vegetableconf.growRedRadish";
                seedPerVeg = ZombRand(1,3);
                rotSprite = "vegetation_farming_01_39";
            },

            spriteData = {
                "vegetation_farming_01_48",
                "vegetation_farming_01_49",
                "vegetation_farming_01_50",
                "vegetation_farming_01_51",
                "vegetation_farming_01_52",
                "vegetation_farming_01_54",
                "vegetation_farming_01_53",
                "vegetation_farming_01_55"
            },

            icon = "Item_TZ_LRRadish",
            farmName = "Radishes",
            oldFarmName = "Radishes",
        },

        ["RiceSeed"] = {
            seedData = {
                requiredskill = 6;
                seedsRequired = 6;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_02_47";
                waterLvl = 75;
                waterLvlMax = 95;
                timeToGrow = ZombRand(54, 62);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 7;
                maxVegAutorized = 9;
                vegetableName = "Base.RicePlant";
                seedName = "legourmetfarming.RiceSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growRice";
                drySprite = "LegourmetFarming_02_51";
                rotSprite = "LegourmetFarming_02_49";
                destroySprite = "LegourmetFarming_02_50";
            },

            spriteData = {
                "LegourmetFarming_02_42",
                "LegourmetFarming_02_43",
                "LegourmetFarming_02_44",
                "LegourmetFarming_02_45",
                "LegourmetFarming_02_46",
                "LegourmetFarming_02_47",
                "LegourmetFarming_02_48",
                "LegourmetFarming_02_49"
            },

            icon = "media/textures/Item_Riceplant.png",
            farmName = "Rice",
            oldFarmName = "Rice",
        },

        ["RiceSeedBag"] = {
            itemName = "legourmetfarming.RiceBagSeed"
        },

        ["StrawberrySeed"] = {
            seedData = {
                requiredskill = 2;
                seedsRequired = 6;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "vegetation_farming_01_62";
                waterLvl = 85;
                timeToGrow = ZombRand(103, 131);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 14;
                vegetableName = "farming.Strewberrie";
                seedName = "farming.StrewberrieSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growStrewberries";
                rotSprite = "vegetation_farming_01_63";
                phaseName5 = "Farming_In_bloom";
                retainOnHarvest = 1;
            },

            spriteData = {
                "vegetation_farming_01_56",
                "vegetation_farming_01_57",
                "vegetation_farming_01_58",
                "vegetation_farming_01_59",
                "vegetation_farming_01_60",
                "vegetation_farming_01_61",
                "vegetation_farming_01_62",
                "vegetation_farming_01_63"
            },

            icon = "Item_TZ_Strewberry",
            farmName = "Strawberry plant",
            oldFarmName = "Strawberry plant",
        },

        ["SugarcaneSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 8;
                sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;
                texture = "LegourmetFarming_04_6";
                waterLvl = 75;
                waterLvlMax = 95;
                timeToGrow = ZombRand(54, 62);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 7;
                maxVegAutorized = 9;
                vegetableName = "Base.Sugarcane";
                seedName = "legourmetfarming.SugarcaneSeed";
                seedPerVeg = ZombRand(1,9);
                growCode = "farming_vegetableconf.growSugarcane";
                drySprite = "vegetation_farming_01_4";
                rotSprite = "LegourmetFarming_04_7";
                destroySprite = "vegetation_farming_01_4";
            },

            spriteData = {
                "LegourmetFarming_04_0",
                "LegourmetFarming_04_1",
                "LegourmetFarming_04_2",
                "LegourmetFarming_04_3",
                "LegourmetFarming_04_4",
                "LegourmetFarming_04_5",
                "LegourmetFarming_04_6",
                "LegourmetFarming_04_7"
            },

            icon = "media/textures/Item_Sugarcane.png",
            farmName = "Sugarcane",
            oldFarmName = "Sugarcane",
        },

        ["SugarcaneSeedBag"] = {
            itemName = "legourmetfarming.SugarcaneBagSeed"
        },

        ["SunflowerSeed"] = {
            seedData = {
               requiredskill = 5;
               seedsRequired = 8;
               sticksRequired = 0;
               sheetropeRequired = 0;
               plantType = 1;
               texture = "LegourmetFarming_04_14";
               waterLvl = 75;
               waterLvlMax = 95;
               timeToGrow = ZombRand(54, 62);
               minVeg = 4;
               maxVeg = 8;
               minVegAutorized = 4;
               maxVegAutorized = 8;
               vegetableName = "Base.SunFlower";
               seedName = "legourmetfarming.SunFlowerSeed";
               seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growSunflower";
                drySprite = "vegetation_farming_01_4";
                rotSprite = "LegourmetFarming_04_15";
                destroySprite = "vegetation_farming_01_4";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_04_8",
                "LegourmetFarming_04_9",
                "LegourmetFarming_04_10",
                "LegourmetFarming_04_11",
                "LegourmetFarming_04_12",
                "LegourmetFarming_04_13",
                "LegourmetFarming_04_14",
                "LegourmetFarming_04_15"
            },

            icon = "media/textures/Item_Sunflower.png",
            farmName = "Sunflower",
            oldFarmName = "Sunflower",
        },

        ["SunflowerSeedBag"] = {
            itemName = "legourmetfarming.SunFlowerBagSeed"
        },

        ["TobaccoSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 10;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_04_22";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103);
                minVeg = 6;
                maxVeg = 8;
                minVegAutorized = 9;
                maxVegAutorized = 10;
                vegetableName = "legourmetfarming.Tobacco";
                seedName = "legourmetfarming.TobaccoSeed";
                seedPerVeg = ZombRand(1,3);
                growCode ="farming_vegetableconf.growTobacco";
                drySprite = "vegetation_farming_01_4";
                rotSprite = "LegourmetFarming_04_23";
                destroySprite = "vegetation_farming_01_4";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "tabac_00",
                "tabac_01",
                "tabac_02",
                "tabac_03",
                "tabac_04",
                "tabac_05",
                "tabac_06",
                "tabac_07"
            },

            icon = "media/textures/Item_Tobacco.png",
            farmName = "Tobacco",
            oldFarmName = "Tobacco",
        },

        ["TobaccoSeedBag"] = {
            itemName = "legourmetfarming.TobaccoBagSeed"
        },

        ["TomatoSeed"] = {
            seedData = {
                requiredskill = 3;
                seedsRequired = 5;
                sticksRequired = 4;
                sheetropeRequired = 6;
                plantType = 2;
                texture = "vegetation_farming_01_70";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 6;
                maxVegAutorized = 10;
                vegetableName = "farming.Tomato";
                seedName = "farming.TomatoSeed";
                seedPerVeg = ZombRand(1,3);
                growCode = "farming_vegetableconf.growTomato";
                drySprite = "vegetation_farming_01_6";
                rotSprite = "vegetation_farming_01_71";
                destroySprite = "vegetation_farming_01_14";
                phaseName5 = "Farming_Young";
            },

            spriteData = {
                "vegetation_farming_01_64",
                "vegetation_farming_01_65",
                "vegetation_farming_01_66",
                "vegetation_farming_01_67",
                "vegetation_farming_01_68",
                "vegetation_farming_01_69",
                "vegetation_farming_01_70",
                "vegetation_farming_01_71"
            },

            icon = "Item_TZ_Tomato",
            farmName = "Tomato",
            oldFarmName = "Tomato",
        },

        ["WatermelonSeed"] = {
            seedData = {
                requiredskill = 7;
                seedsRequired = 4;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_01_30";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 6;
                vegetableName = "Base.Watermelon";
                seedName = "legourmetfarming.WatermelonSeed";
                growCode = "farming_vegetableconf.growWatermelon";
                seedPerVeg = ZombRand(1,3);
                drySprite = "LegourmetFarming_02_40";
                rotSprite = "LegourmetFarming_01_31";
                destroySprite = "LegourmetFarming_02_41";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Young";
            },

            spriteData = {
                "LegourmetFarming_01_24",
                "LegourmetFarming_01_25",
                "LegourmetFarming_01_26",
                "LegourmetFarming_01_27",
                "LegourmetFarming_01_28",
                "LegourmetFarming_01_29",
                "LegourmetFarming_01_30",
                "LegourmetFarming_01_31"
            },

            icon = "vegIcon/item_Watermelon.png",
            farmName = "Watermelon",
            oldFarmName = "Watermelon",
        },

        ["WatermelonSeedBag"] = {
            itemName = "legourmetfarming.WatermelonbagSeed"
        },

        ["WheatSeed"] = {
            seedData = {
                requiredskill = 5;
                seedsRequired = 20;
               --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_01_70";
                waterLvl = 75;
                waterLvlMax = 95;
                timeToGrow = ZombRand(54, 62);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 7;
                maxVegAutorized = 9;
                vegetableName = "Base.Wheat";
                seedName = "legourmetfarming.WheatSeed";
                growCode = "farming_vegetableconf.growWheat";
                seedPerVeg = ZombRand(1,3);
                drySprite = "LegourmetFarming_01_72";
                rotSprite = "LegourmetFarming_01_71";
                destroySprite = "LegourmetFarming_01_72";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_01_64",
                "LegourmetFarming_01_65",
                "LegourmetFarming_01_66",
                "LegourmetFarming_01_67",
                "LegourmetFarming_01_68",
                "LegourmetFarming_01_69",
                "LegourmetFarming_01_70",
                "LegourmetFarming_01_71"
            },

            icon = "Item_Wheat.png",
            farmName = "Wheat",
            oldFarmName = "Wheat",
        },

        ["WheatSeedBag"] = {
            itemName = "legourmetfarming.WheatBagSeed"
        },

        ["ZucchiniSeed"] = {
            seedData = {
                requiredskill = 0;
                seedsRequired = 6;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;
                plantType = 1;]]
                texture = "LegourmetFarming_01_22";
                waterLvl = 65;
                waterLvlMax = 85;
                timeToGrow = ZombRand(56, 62);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 8;
                vegetableName = "Base.Zucchini";
                seedName = "legourmetfarming.ZucchiniSeed";
                growCode = "farming_vegetableconf.growZucchini";
                seedPerVeg = ZombRand(1,3);
                drySprite = "LegourmetFarming_01_23";
                rotSprite = "LegourmetFarming_01_23";
                phaseName5 = "Farming_In_bloom";
            },

            spriteData = {
                "LegourmetFarming_01_16",
                "LegourmetFarming_01_17",
                "LegourmetFarming_01_18",
                "LegourmetFarming_01_19",
                "LegourmetFarming_01_20",
                "LegourmetFarming_01_21",
                "LegourmetFarming_01_22",
                "LegourmetFarming_01_23"
            },

            icon = "Item_Zucchini",
            farmName = "Zucchini",
            oldFarmName = "Zucchini",
        },

        ["ZucchiniSeedBag"] = {
            itemName = "legourmetfarming.ZucchiniBagSeed"
        },
    },

    ["J"] = {
        ["CannabisSeed"] = {
            seedData = {
                seedsRequired = 1;
                texture = "canna_05";
                waterLvl = 60;
                timeToGrow = ZombRand(89, 112);
                vegetableName = "Greenfire.FreshUnCanna";
                seedName = "Greenfire.CannabisSeed";
                growCode ="GreenfireVegetableconf.growCannabis";
                seedPerVeg = ZombRand(4, 6);
                minVeg = 1;
                maxVeg = 3;
                minVegAutorized = 2;
                maxVegAutorized = 5;
                requiredskill = 0;
            },

            spriteData = {
                "canna_00",
                "canna_01",
                "canna_02",
                "canna_03",
                "canna_04",
                "canna_05",
                "canna_06",
                "canna_07"
            },

            icon = "media/textures/Item_CannabisBase.png",
            farmName = "Cannabis",
            oldFarmName = "Cannabis",
        },

        ["CannabisSeedBag"] = {
            itemName = "Greenfire.CannabisBagSeed"
        },

        ["TobaccoSeed"] = {
            seedData = {
                seedsRequired = 2;
                texture = "tabac_05";
                waterLvl = 60;
                timeToGrow = ZombRand(195, 206);
                vegetableName = "Greenfire.FreshBTobacco";
                seedName = "Greenfire.TobaccoSeed";
                growCode ="GreenfireVegetableconf.growTobacco";
                seedPerVeg = ZombRand(12, 18);
                minVeg = 1;
                maxVeg = 1;
                minVegAutorized = 1;
                maxVegAutorized = 1;
            },

            spriteData = {
                "tabac_00",
                "tabac_01",
                "tabac_02",
                "tabac_03",
                "tabac_04",
                "tabac_05",
                "tabac_06",
                "tabac_07"
            },

            icon = "media/textures/Item_Tobacco.png",
            farmName = "Tobacco",
            oldFarmName = "Tobacco",
        },

        ["TobaccoSeedBag"] = {
            itemName = "Greenfire.TobaccoBagSeed"
        },
    },

    ["X"] = {
        ["AppleSeed"] = {
            seedData = {
                seedsRequired = 1;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "xn_apple_07";
                waterLvl = 65;
                timeToGrow = ZombRand(89,103);
                minVeg = 10;
                maxVeg = 15;
                minVegAutorized = 10;
                maxVegAutorized = 15;
                vegetableName = "Base.Apple";
                oldItemName = "Base.Log";
                seedName = "XNTree.XNSaplingApple";
                seedPerVeg = 0;
                growCode = "XNTrees.growTrees";
                rotSprite = "xn_apple_08";

                textPrefix = "Farming_Tree-XNSapling";
                phaseName3 = "Farming_Fully_grown";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Ready_for_Harvest";
                phaseName6 = "Farming_Receding";
                phaseName7 = "Farming_xnOld";

                retainOnHarvest = 3;
                lastRetainPhase = 7;
            },

            spriteData = {
                "xn_apple_01",
                "xn_apple_02",
                "xn_apple_03",
                "xn_apple_04",
                "xn_apple_05",
                "xn_apple_06",
                "xn_apple_07",
                "xn_apple_08",
            },

            preventSpriteOverride = true;
            icon = "Item_Apple",
            farmName = "Apple",
            oldFarmName = "XNSaplingApple",
        },

        ["BananaSeed"] = {
            seedData = {
                seedsRequired = 1;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "xn_banana_07";
                waterLvl = 65;
                timeToGrow = ZombRand(89,103);
                minVeg = 10;
                maxVeg = 15;
                minVegAutorized = 10;
                maxVegAutorized = 15;
                vegetableName = "Base.Banana";
                oldItemName = "Base.Log";
                seedName = "XNTree.XNSaplingBanana";
                seedPerVeg = 0;
                growCode = "XNTrees.growTrees";
                rotSprite = "xn_apple_08";

                textPrefix = "Farming_Tree-XNSapling";
                phaseName3 = "Farming_Fully_grown";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Ready_for_Harvest";
                phaseName6 = "Farming_Receding";
                phaseName7 = "Farming_xnOld";

                retainOnHarvest = 3;
                lastRetainPhase = 7;
            },

            spriteData = {
                "xn_apple_01",
                "xn_apple_02",
                "xn_apple_03",
                "xn_apple_04",
                "xn_apple_05",
                "xn_banana_06",
                "xn_banana_07",
                "xn_apple_08",
            },

            preventSpriteOverride = true;
            icon = "Item_Banana",
            farmName = "Banana",
            oldFarmName = "XNSaplingBanana",
        },

        ["CherrySeed"] = {
            seedData = {
                seedsRequired = 1;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "xn_cherry_07";
                waterLvl = 65;
                timeToGrow = ZombRand(89,103);
                minVeg = 28;
                maxVeg = 42;
                minVegAutorized = 28;
                maxVegAutorized = 42;
                vegetableName = "Base.Cherry";
                oldItemName = "Base.Log";
                seedName = "XNTree.XNSaplingCherry";
                seedPerVeg = 0;
                growCode = "XNTrees.growTrees";
                rotSprite = "xn_apple_08";

                textPrefix = "Farming_Tree-XNSapling";
                phaseName3 = "Farming_Fully_grown";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Ready_for_Harvest";
                phaseName6 = "Farming_Receding";
                phaseName7 = "Farming_xnOld";

                retainOnHarvest = 3;
                lastRetainPhase = 7;
            },

            spriteData = {
                "xn_apple_01",
                "xn_apple_02",
                "xn_apple_03",
                "xn_apple_04",
                "xn_apple_05",
                "xn_cherry_06",
                "xn_cherry_07",
                "xn_apple_08",
            },

            preventSpriteOverride = true;
            icon = "Item_Cherry",
            farmName = "Cherry",
            oldFarmName = "XNSaplingCherry",
        },

        ["LemonSeed"] = {
            seedData = {
                seedsRequired = 1;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "xn_lemon_07";
                waterLvl = 65;
                timeToGrow = ZombRand(89,103);
                minVeg = 12;
                maxVeg = 18;
                minVegAutorized = 12;
                maxVegAutorized = 18;
                vegetableName = "Base.Lemon";
                oldItemName = "Base.Log";
                seedName = "XNTree.XNSaplingLemon";
                seedPerVeg = 0;
                growCode = "XNTrees.growTrees";
                rotSprite = "xn_apple_08";

                textPrefix = "Farming_Tree-XNSapling";
                phaseName3 = "Farming_Fully_grown";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Ready_for_Harvest";
                phaseName6 = "Farming_Receding";
                phaseName7 = "Farming_xnOld";

                retainOnHarvest = 3;
                lastRetainPhase = 7;
            },

            spriteData = {
                "xn_apple_01",
                "xn_apple_02",
                "xn_apple_03",
                "xn_apple_04",
                "xn_apple_05",
                "xn_lemon_06",
                "xn_lemon_07",
                "xn_apple_08",
            },

            preventSpriteOverride = true;
            icon = "Item_Lemon",
            farmName = "Lemon",
            oldFarmName = "XNSaplingLemon",
        },

        ["OrangeSeed"] = {
            seedData = {
                seedsRequired = 1;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "xn_orange_07";
                waterLvl = 65;
                timeToGrow = ZombRand(89,103);
                minVeg = 12;
                maxVeg = 18;
                minVegAutorized = 12;
                maxVegAutorized = 18;
                vegetableName = "Base.Orange";
                oldItemName = "Base.Twigs";
                seedName = "XNTree.XNSaplingOrange";
                seedPerVeg = 0;
                growCode = "XNTrees.growOrange";
                rotSprite = "xn_orange_09";

                textPrefix = "Farming_Tree-XNSapling";
                phaseName3 = "Farming_Fully_grown";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Ready_for_Harvest";
                phaseName6 = "Farming_Receding";
                phaseName7 = "Farming_xnOld";

                retainOnHarvest = 3;
                lastRetainPhase = 7;
            },

            spriteData = {
                "xn_orange_01",
                "xn_orange_02",
                "xn_orange_03",
                "xn_orange_04",
                "xn_orange_05",
                "xn_orange_06",
                "xn_orange_07",
                "xn_orange_07",
                "xn_orange_09",
            },

            preventSpriteOverride = true;
            icon = "Item_Orange",
            farmName = "Orange",
            oldFarmName = "XNSaplingOrange",
        },

        ["PeachSeed"] = {
            seedData = {
                seedsRequired = 1;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "xn_peach_07";
                waterLvl = 65;
                timeToGrow = ZombRand(89,103);
                minVeg = 12;
                maxVeg = 18;
                minVegAutorized = 12;
                maxVegAutorized = 18;
                vegetableName = "Base.Peach";
                oldItemName = "Base.Log";
                seedName = "XNTree.XNSaplingPeach";
                seedPerVeg = 0;
                growCode = "XNTrees.growTrees";
                rotSprite = "xn_orange_09";

                textPrefix = "Farming_Tree-XNSapling";
                phaseName3 = "Farming_Fully_grown";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Ready_for_Harvest";
                phaseName6 = "Farming_Receding";
                phaseName7 = "Farming_xnOld";

                retainOnHarvest = 3;
                lastRetainPhase = 7;
            },

            spriteData = {
                "xn_apple_01",
                "xn_apple_02",
                "xn_apple_03",
                "xn_apple_04",
                "xn_apple_05",
                "xn_peach_06",
                "xn_peach_07",
                "xn_apple_08",
            },

            preventSpriteOverride = true;
            icon = "Item_Peach",
            farmName = "Peach",
            oldFarmName = "XNSaplingPeach",
        },

        ["PineappleSeed"] = {
            seedData = {
                seedsRequired = 1;
                --[[sticksRequired = 0;
                sheetropeRequired = 0;]]
                plantType = 3;
                texture = "xn_pineapple_08";
                waterLvl = 55;
                timeToGrow = ZombRand(79,93);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 6;
                maxVegAutorized = 8;
                vegetableName = "Base.Pineapple";
                seedName = "XNTree.XNSaplingPineapple";
                seedPerVeg = 1;
                growCode = "XNTrees.growPineapple";
                rotSprite = "xn_pineapple_09";
                waterConsumption = 2;

                textPrefix = "Farming_Tree-XNSapling";
                phaseName4 = "Farming_Fully_grown";
                phaseName5 = "Farming_In_bloom";
                phaseName6 = "Farming_Ready_for_Harvest";
                phaseName7 = "Farming_Seed-bearing";
            },

            spriteData = {
                "xn_pineapple_01",
                "xn_pineapple_02",
                "xn_pineapple_03",
                "xn_pineapple_04",
                "xn_pineapple_05",
                "xn_pineapple_06",
                "xn_pineapple_07",
                "xn_pineapple_08",
                "xn_pineapple_09",
            },

            preventSpriteOverride = true;
            icon = "Item_Pineapple",
            farmName = "Pineapple",
            oldFarmName = "XNSaplingPineapple",
        },
    },

    ["C"] = {
        ["CoffeeSeed"] = {
            seedData = {
                --requiredskill = 5;
                seedsRequired = 5;
                --[[sticksRequired = 1;
                sheetropeRequired = 3;]]
                plantType = 3;
                texture = "coffee_tree_06";
                waterLvl = 85;
                timeToGrow = ZombRand(298,303);
                minVeg = 28;
                maxVeg = 42;
                minVegAutorized = 28;
                maxVegAutorized = 42;
                vegetableName = "Base.CoffeeFruit";
                seedName = "Base.CoffeeFruit";
                seedPerVeg = 0;
                growCode = "FCTrees.growCoffee";
                rotSprite = "coffee_tree_03";

                textPrefix = "Farming_Tree-";
                phaseName1 = "Farming_Young";
                phaseName2 = "Farming_Young";
                phaseName3 = "Farming_Fully_grown";
                phaseName4 = "Farming_In_bloom";
                phaseName5 = "Farming_Ready_to_harvest";
                phaseName6 = "Farming_Ready_to_harvest";
                oldItemName = "Base.Log";

                onPlantUpdateCode = "FCTrees.onCoffeePlantUpdate";
                monthRestriction = true;
                windThreshold = 0.15;
                minTempThreshold = 10;
                maxTempThreshold = 40;
                immuneToDisease = true;
                retainOnHarvest = 3;
            },

            spriteData = {
                "coffee_tree_01",
                "coffee_tree_02",
                "coffee_tree_03",
                "coffee_tree_04",
                "coffee_tree_05",
                "coffee_tree_06",
                "coffee_tree_06",
                "coffee_tree_03",
            },

            icon = "Item_Cherry",
            farmName = "CoffeeFruit",
            oldFarmName = "CoffeeFruit",
        },

        ["CoffeeSeedBag"] = {
            itemName = "Base.CoffeeBagSeed"
        },
    },

    ["V"] = {
        ["BroccoliSeed"] = {
            seedData = {
                waterLvl = 70;
                seedsRequired = 6;
                texture = "vegetation_farming_01_30";
                timeToGrow = ZombRand(103, 117);
                minVeg = 2;
                maxVeg = 4;
                minVegAutorized = 6;
                maxVegAutorized = 8;
                vegetableName = "Base.Broccoli";
                seedName = "farming.BroccoliSeed";
                seedPerVeg = 3;
                growCode = "farming_vegetableconf.growBroccoli";
                rotSprite = "vegetation_farming_01_23";
            },

            spriteData = {
                "vegetation_farming_01_24",
                "vegetation_farming_01_25",
                "vegetation_farming_01_26",
                "vegetation_farming_01_27",
                "vegetation_farming_01_28",
                "vegetation_farming_01_30",
                "vegetation_farming_01_29",
                "vegetation_farming_01_31"
            },

            icon = "Item_Broccoli",
            farmName = "Broccoli",
            oldFarmName = "Broccoli",
        },

        ["BroccoliSeedBag"] = {
            itemName = "farming.BroccoliBagSeed"
        },

        ["CabbageSeed"] = {
            seedData = {
                seedsRequired = 9;
                texture = "vegetation_farming_01_21";
                waterLvl = 85;
                timeToGrow = ZombRand(46, 52);
                vegetableName = "farming.Cabbage";
                seedName = "farming.CabbageSeed";
                seedPerVeg = 3;
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 9;
                maxVegAutorized = 11;
                growCode = "farming_vegetableconf.growCabbage";
                rotSprite = "vegetation_farming_01_31";
            },

            spriteData = {
                "vegetation_farming_01_16",
                "vegetation_farming_01_17",
                "vegetation_farming_01_18",
                "vegetation_farming_01_19",
                "vegetation_farming_01_20",
                "vegetation_farming_01_22",
                "vegetation_farming_01_21",
                "vegetation_farming_01_23"
            },

            icon = "Item_TZ_CabbageLettuce",
            farmName = "Cabbages",
            oldFarmName = "Cabbages",
        },

        ["CabbageSeedBag"] = {
            itemName = "farming.CabbageBagSeed"
        },

        ["CarrotSeed"] = {
            seedData = {
                seedsRequired = 12;
                texture = "vegetation_farming_01_38";
                waterLvl = 35;
                waterLvlMax = 85;
                timeToGrow = ZombRand(50,55);
                minVeg = 3;
                maxVeg = 6;
                minVegAutorized = 10;
                maxVegAutorized = 15;
                vegetableName = "Base.Carrots";
                seedName = "farming.CarrotSeed";
                seedPerVeg = 3;
                growCode = "farming_vegetableconf.growCarrots";
                rotSprite = "vegetation_farming_01_13";
            },

            spriteData = {
                "vegetation_farming_01_32",
                "vegetation_farming_01_33",
                "vegetation_farming_01_34",
                "vegetation_farming_01_35",
                "vegetation_farming_01_36",
                "vegetation_farming_01_37",
                "vegetation_farming_01_38",
                "vegetation_farming_01_39"
            },

            icon = "Item_Carrots",
            farmName = "Carrots",
            oldFarmName = "Carrots",
        },

        ["CarrotSeedBag"] = {
            itemName = "farming.CarrotBagSeed"
        },

        ["PotatoSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_46";
                waterLvl = 65;
                timeToGrow = ZombRand(89, 103);
                minVeg = 3;
                maxVeg = 4;
                minVegAutorized = 5;
                maxVegAutorized = 9;
                vegetableName = "farming.Potato";
                seedName = "farming.PotatoSeed";
                seedPerVeg = 3;
                growCode = "farming_vegetableconf.growPotato";
                rotSprite = "vegetation_farming_01_47";
            },

            spriteData = {
                "vegetation_farming_01_40",
                "vegetation_farming_01_41",
                "vegetation_farming_01_42",
                "vegetation_farming_01_43",
                "vegetation_farming_01_44",
                "vegetation_farming_01_46",
                "vegetation_farming_01_45",
                "vegetation_farming_01_47"
            },

            icon = "Item_TZ_Potato",
            farmName = "Potatoes",
            oldFarmName = "Potatoes",
        },

        ["PotatoSeedBag"] = {
            itemName = "farming.PotatoBagSeed"
        },

        ["RadishSeed"] = {
            seedData = {
                seedsRequired = 6;
                texture = "vegetation_farming_01_54";
                waterLvl = 45;
                waterLvlMax = 85;
                timeToGrow = ZombRand(56, 62);
                minVeg = 4;
                maxVeg = 9;
                minVegAutorized = 11;
                maxVegAutorized = 15;
                vegetableName = "farming.RedRadish";
                seedName = "farming.RedRadishSeed";
                seedPerVeg = 4;
                growCode = "farming_vegetableconf.growRedRadish";
                rotSprite = "vegetation_farming_01_39";
            },

            spriteData = {
                "vegetation_farming_01_48",
                "vegetation_farming_01_49",
                "vegetation_farming_01_50",
                "vegetation_farming_01_51",
                "vegetation_farming_01_52",
                "vegetation_farming_01_54",
                "vegetation_farming_01_53",
                "vegetation_farming_01_55"
            },

            icon = "Item_TZ_LRRadish",
            farmName = "Radishes",
            oldFarmName = "Radishes",
        },

        ["RadishSeedBag"] = {
            itemName = "farming.RedRadishBagSeed"
        },

        ["StrawberrySeed"] = {
            seedData = {
                seedsRequired = 12;
                texture = "vegetation_farming_01_62";
                waterLvl = 85;
                timeToGrow = ZombRand(103, 131);
                minVeg = 4;
                maxVeg = 6;
                minVegAutorized = 8;
                maxVegAutorized = 14;
                vegetableName = "farming.Strewberrie";
                seedName = "farming.StrewberrieSeed";
                seedPerVeg = 3;
                growCode = "farming_vegetableconf.growStrewberries";
                rotSprite = "vegetation_farming_01_63";
                retainOnHarvest = 1;
            },

            spriteData = {
                "vegetation_farming_01_56",
                "vegetation_farming_01_57",
                "vegetation_farming_01_58",
                "vegetation_farming_01_59",
                "vegetation_farming_01_60",
                "vegetation_farming_01_61",
                "vegetation_farming_01_62",
                "vegetation_farming_01_63"
            },

            icon = "Item_TZ_Strewberry",
            farmName = "Strawberry plant",
            oldFarmName = "Strawberry plant",
        },

        ["StrawberrySeedBag"] = {
            itemName = "farming.StrewberrieBagSeed"
        },

        ["TomatoSeed"] = {
            seedData = {
                seedsRequired = 4;
                texture = "vegetation_farming_01_70";
                waterLvl = 75;
                timeToGrow = ZombRand(89, 103);
                minVeg = 4;
                maxVeg = 5;
                minVegAutorized = 6;
                maxVegAutorized = 10;
                vegetableName = "farming.Tomato";
                seedName = "farming.TomatoSeed";
                seedPerVeg = 2;
                growCode = "farming_vegetableconf.growTomato";
                drySprite = "vegetation_farming_01_14";
                rotSprite = "vegetation_farming_01_71";
                destroySprite = "vegetation_farming_01_14";
            },

            spriteData = {
                "vegetation_farming_01_64",
                "vegetation_farming_01_65",
                "vegetation_farming_01_66",
                "vegetation_farming_01_67",
                "vegetation_farming_01_68",
                "vegetation_farming_01_69",
                "vegetation_farming_01_70",
                "vegetation_farming_01_71"
            },

            icon = "Item_TZ_Tomato",
            farmName = "Tomato",
            oldFarmName = "Tomato",
        },

        ["TomatoSeedBag"] = {
            itemName = "farming.TomatoBagSeed"
        },
    }
}

--[[MoFilchers.gourmetNoSeeds = {
    ["legourmetfarming.NaturalPineapple"] = true;
    ["legourmetfarming.NaturalLemon"] = true;
    ["legourmetfarming.NaturalOrange"] = true;
    ["legourmetfarming.NaturalApple"] = true;
    ["legourmetfarming.NaturalPeach"] = true;
    ["legourmetfarming.NaturalBanana"] = true;
    ["legourmetfarming.NaturalCherry"] = true;
    ["legourmetfarming.NaturalLime"] = true;
    ["legourmetfarming.NaturalAvocado"] = true;
    ["Base.Mango"] = true;
    ["Base.Grapefruit"] = true;
}]]

-- Thanks Udderly <3
function MoFilchers.split(s, sep)
    if not sep then
        sep = "%s"
    end

    local t = {}
    for str in string.gmatch(s, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end


function MoFilchers.getIndexOf(list, item)
    for i = 1, #list do
        local value = list[i]
        if value == item then
            return i
        end
    end

    return -1
end

function MoFilchers.getConversion(item)
    local value = MoFilchers.itemConversions[item]
    if value then
        return value
    end

    for key, val in pairs(MoFilchers.itemConversions) do
        if val == item then
            return key
        end
    end
end

function MoFilchers.getHighestModWithItem(item)
    for _, mod in ipairs(MoFilchers.modPriorities) do
        local modMap = MoFilchers.modMapping[mod]
        if modMap and MoFilchers[modMap] then -- Checks to make sure it's a valid mapping and that it's currently enabled.
            local modList = MoFilchers.itemConversions[mod]
            if modList then
                if modList[item] then
                    return mod
                end
            end
        end
    end

    return nil
end

function MoFilchers.getNewFarmName(plantFarmName)
    for _, mod in ipairs(MoFilchers.modPriorities) do
        local modMap = MoFilchers.modMapping[mod]
        if modMap and MoFilchers[modMap] then -- Checks to make sure it's a valid mapping and that it's currently enabled.
            local modList = MoFilchers.itemConversions[mod]
            if modList then
                for _, itemData in pairs(modList) do
                    local newFarmName = itemData.farmName
                    local oldFarmName = itemData.oldFarmName
                    if newFarmName and oldFarmName and oldFarmName == plantFarmName then
                        return newFarmName
                    end
                end
            end
        end
    end

    return nil
end

function MoFilchers.patchItem(list, oldItems, newItem)
    for _, i in pairs(oldItems) do
        local index = MoFilchers.getIndexOf(list, i)
        if index > -1 then
            local rarityIndex = index + 1
            if rarityIndex <= #list then
                local rarity = list[rarityIndex]
                if type(rarity) == "number" then
                    if MoFilchers.replaceSeeds then
                        list[index] = newItem
                    else
                        table.remove(list, rarityIndex)
                        table.remove(list, index)
                    end
                end
            end
        end
    end
end

function MoFilchers.patchItemsInList(list)
    for _, item in pairs(MoFilchers.allItems) do
        local mod = MoFilchers.getHighestModWithItem(item)
        if mod then
            local itemsToPatch = {}
            for modID, values in pairs(MoFilchers.itemConversions) do
                if modID ~= mod then
                    local oldItem = values[item]
                    if oldItem then
                        if oldItem.seedData then
                            table.insert(itemsToPatch, oldItem.seedData.seedName)
                        else
                            table.insert(itemsToPatch, oldItem.itemName)
                        end
                    end
                end
            end

            MoFilchers.patchItem(list, itemsToPatch, item)
        end
    end
end

-- https://stackoverflow.com/questions/20325332/how-to-check-if-two-tablesobjects-have-the-same-value-in-lua Thanks stackoverflow <3
--[[function MoFilchers.tableIsEqual(list1, list2, ignore_mt)
    local ty1 = type(list1)
    local ty2 = type(list2)
    if ty1 ~= ty2 then return false end
    -- non-table types can be directly compared
    if ty1 ~= 'table' and ty2 ~= 'table' then return list1 == list2 end
    -- as well as tables which have the metamethod __eq
    local mt = getmetatable(list1)
    if not ignore_mt and mt and mt.__eq then return list1 == list2 end

    for k1,v1 in pairs(list1) do
        local v2 = list2[k1]
        if v2 == nil or not MoFilchers.tableIsEqual(v1,v2) then return false end
    end

    for k2,v2 in pairs(list2) do
        local v1 = list1[k2]
        if v1 == nil or not MoFilchers.tableIsEqual(v1,v2) then return false end
    end
    return true
end]]

MoFilchers.dataCache = {}
function MoFilchers.getItemCodeFromData(data)
    if type(data) == "table" then
        local dataSeedName = data.seedName
        local cacheCheck = MoFilchers.dataCache[dataSeedName]
        if cacheCheck then
            return cacheCheck
        end

        for _, modData in pairs(MoFilchers.itemConversions) do
            for itemCode, itemData in pairs(modData) do
                --[[print("Data seed name: " .. tostring(data.seedName))
                print("Comparison seed name: ".. tostring(itemData.seedData.seedName))]]
                local seedData = itemData.seedData

                --[[print(dataSeedName)
                print(seedData.seedName)]]
                if dataSeedName and seedData and dataSeedName == seedData.seedName then -- Least expensive comparison I can think of.
                    --print("Same item. GO!")
                    MoFilchers.dataCache[dataSeedName] = itemCode
                    return itemCode
                end
                --[[if MoFilchers.tableIsEqual(itemData.seedData, data) then -- This was also expensive lol -- Can't rely on regular memory location checks because of client/server boundary. Sad!
                    print("Match found. Saving to cache.")
                    MoFilchers.dataCache[data.seedName] = itemCode
                    return itemCode
                end]]
            end
        end
    end
end

function MoFilchers.getCodeFromItem(item)
    local dataItemName = item
    if type(item) ~= "string" then
        dataItemName = item:getFullType() or item:getFullName()
    end
    
    local cacheCheck = MoFilchers.dataCache[dataItemName]
    if cacheCheck then
        return cacheCheck
    end

    for _, modData in pairs(MoFilchers.itemConversions) do
        for itemCode, itemData in pairs(modData) do
            local seedData = itemData.seedData
            local itemName = seedData and seedData.seedName or itemData.itemName
            if dataItemName == itemName then -- Least expensive comparison I can think of.
                --print("Same item. GO!")
                MoFilchers.dataCache[dataItemName] = itemCode
                return itemCode
            end
        end
    end
end

function MoFilchers.getItemsWithCode(code)
    local items = {}
    for _, modData in pairs(MoFilchers.itemConversions) do
        for itemCode, itemData in pairs(modData) do
            if itemCode == code then
                table.insert(items, itemData.itemName)
            end
        end
    end

    return items
end

function MoFilchers.getNumberOfItemsInInvWithCode(plrObj, seedCode)
    local numOfItems = 0
    if seedCode then
        for _, modData in pairs(MoFilchers.itemConversions) do
            local itemData = modData[seedCode]
            if itemData and itemData.seedData then
                numOfItems = numOfItems + plrObj:getInventory():getCountTypeRecurse(itemData.seedData.seedName)
            end
        end
    end

    return numOfItems
end

function MoFilchers.getItemsInInvWithCode(plrObj, seedCode, seedsRequired)
    local items = nil
    if seedCode then
        --print(seedCode)
        for _, modData in pairs(MoFilchers.itemConversions) do
            local itemData = modData[seedCode]
            if itemData and itemData.seedData then
                local newItems = plrObj:getInventory():getSomeTypeRecurse(itemData.seedData.seedName, seedsRequired)
                if not items then
                    items = newItems
                else
                    for i = 0, newItems:size()-1 do
                        items:add(newItems:get(i))
                    end
                end
            end
        end
    end

    return items
end

--[[function MoFilchers.getSeedDataFromItem()
    local itemCode = MoFilchers.getCodeFromItem(luaObject.typeOfSeed)
    if itemCode then -- We got a hit!
        local modID = MoFilchers.getHighestModWithItem(itemCode)
        if modID then
            local newData = MoFilchers.itemConversions[modID].seedData
            return newData
        end
    end
end]]

function MoFilchers.getUpdatedTypeOfSeed(plant)
    local highestActiveMod = MoFilchers.getHighestModWithItem(plant.typeOfSeed)
    local itemCode = MoFilchers.getCodeFromItem(plant.typeOfSeed)
    if highestActiveMod and itemCode then -- We got a hit!
        local modID = MoFilchers.getHighestModWithItem(itemCode)
        if modID then
            local newData = MoFilchers.itemConversions[modID][itemCode].seedData
            if newData then
                return newData.seedName
            end
        end
    end
end