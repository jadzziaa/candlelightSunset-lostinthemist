require "Items/Distributions"

local ammocanitemspawn = {
	    ammocan = {
        rolls = 8,
        items = {
            "556Box", 4,
			"556Clip", 2,
			"SheetPaper2", 10,
            "SheetPaper2", 10,
            "SheetPaper2", 5,
            "SheetPaper2", 5,
            }
        },
        junk = {
            rolls = 1,
            items = {

        },
        fillRand = 1,
    },
}

local spicerackitemspawn = {
	    spicerack = {
        rolls = 4,
        items = {
            "Pepper", 8,
            "Salt", 8,
            "EmptyJar", 2,
            "EmptyJar", 1,
            "JarLid", 0.5,
            "JarLid", 0.5,
        },
        junk = {
            rolls = 1,
            items = {
			
            }
        },
        fillRand = 1,
    },
}

local tackleboxitemspawn = {
	    tacklebox = {
        rolls = 4,
        items = {
            "FishingTackle", 20,
            "FishingTackle", 10,
            "FishingTackle2", 20,
            "FishingTackle2", 10,
            "FishingLine", 20,
            "FishingLine", 10,
            "FishingRod", 2,
            "FishingRod", 1,
            "FishingNet", 2,
            "FishingNet", 1,
            "FishingMag1", 1,
            "FishingMag2", 1,
            "Gloves_WhiteTINT", 1,
            "HandTorch", 1,
            "HuntingKnife", 2,
            "Scissors", 2,
            "Scissors", 1,
        },
        junk = {
            rolls = 1,
            items = {
			
            }
        },
        fillRand = 1,
    },
}

table.insert(Distributions, 2, ammocanitemspawn);
table.insert(Distributions, 2, basketsewingitemspawn);
table.insert(Distributions, 2, cardboardboxitemspawn);
table.insert(Distributions, 2, spicerackitemspawn);
table.insert(Distributions, 2, tackleboxitemspawn);