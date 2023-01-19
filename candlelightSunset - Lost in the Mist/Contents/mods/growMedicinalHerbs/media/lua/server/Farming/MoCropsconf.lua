require "Farming/farming_vegetableconf"

GrowMedicalHerbsconf = {};

-- CommonMallow
-- Need 6 seeds
-- Water lvl over 65
-- Need 4 weeks to grow (112h per phase)
GrowMedicalHerbsconf.growNewCrop = function(planting, nextGrowing, updateNbOfGrow)
	local nbOfGrow = planting.nbOfGrow;

	local water = farming_vegetableconf.calcWater(planting.waterNeeded, planting.waterLvl);
	local diseaseLvl = farming_vegetableconf.calcDisease(planting.mildewLvl);
	if(nbOfGrow <= 0) then -- young
		nbOfGrow = 0;
		planting.nbOfGrow = 0;

		planting = growNext(planting, farming_vegetableconf.getSpriteName(planting), farming_vegetableconf.getObjectName(planting), nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);

		planting.waterNeeded = 60;
	elseif (nbOfGrow <= 4) then -- young
		if(water >= 0 and diseaseLvl >= 0) then

			planting = growNext(planting, farming_vegetableconf.getSpriteName(planting), farming_vegetableconf.getObjectName(planting), nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);

			planting.waterNeeded = farming_vegetableconf.props[planting.typeOfSeed].waterLvl;
		else
			badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow);
		end
	elseif (nbOfGrow == 5) then -- mature
		if(water >= 0 and diseaseLvl >= 0) then
			planting.nextGrowing = calcNextGrowing(nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);
			planting:setObjectName(farming_vegetableconf.getObjectName(planting))
			planting:setSpriteName(farming_vegetableconf.getSpriteName(planting))
			planting.hasVegetable = true;
		else
			badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow);
		end
	elseif (nbOfGrow == 6) then -- mature with seed
		if(water >= 0 and diseaseLvl >= 0) then
			planting.nextGrowing = calcNextGrowing(nextGrowing, 168);
			planting:setObjectName(farming_vegetableconf.getObjectName(planting))
			planting:setSpriteName(farming_vegetableconf.getSpriteName(planting))
			planting.hasVegetable = true;
			planting.hasSeed = true;
		else
			badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow);
		end
	elseif (planting.state ~= "rotten") then -- rotten
		planting:rottenThis()
	end
	return planting;
end



--Icons
farming_vegetableconf.icons["Comfrey"] = "media/textures/vegIcon/Comfrey.png";
farming_vegetableconf.icons["CommonMallow"] = "media/textures/vegIcon/CommonMallow.png";
farming_vegetableconf.icons["Corn"] = "media/textures/vegIcon/item_Corn.png";
farming_vegetableconf.icons["Ginseng"] = "media/textures/vegIcon/Ginseng.png";
farming_vegetableconf.icons["Plantain"] = "media/textures/vegIcon/Plantain.png";
farming_vegetableconf.icons["LemonGrass"] = "media/textures/vegIcon/LemonGrass.png";
farming_vegetableconf.icons["WildGarlic"] = "media/textures/vegIcon/WildGarlic.png";
farming_vegetableconf.icons["Watermelon"] = "media/textures/vegIcon/item_Watermelon.png";
farming_vegetableconf.icons["BlackSage"] = "media/textures/vegIcon/BlackSage.png";

-- Comfrey
farming_vegetableconf.props["Comfrey"] = {};
farming_vegetableconf.props["Comfrey"].seedsRequired = 4;
farming_vegetableconf.props["Comfrey"].texture = "vegetation_farming_01_71";
farming_vegetableconf.props["Comfrey"].waterLvl = 75;
farming_vegetableconf.props["Comfrey"].timeToGrow = ZombRand(89, 103); -- 56, 62
farming_vegetableconf.props["Comfrey"].vegetableName = "Base.Comfrey";
farming_vegetableconf.props["Comfrey"].seedName = "GMH.Comfreyseed";
farming_vegetableconf.props["Comfrey"].growCode = "GrowMedicalHerbsconf.growNewCrop";
farming_vegetableconf.props["Comfrey"].seedPerVeg = 2;
farming_vegetableconf.props["Comfrey"].minVeg = 4;
farming_vegetableconf.props["Comfrey"].maxVeg = 5;
farming_vegetableconf.props["Comfrey"].minVegAutorized = 6;
farming_vegetableconf.props["Comfrey"].maxVegAutorized = 10;

farming_vegetableconf.sprite["Comfrey"] = {
	"vegetation_farming_01_64",
	"vegetation_farming_01_65",
	"vegetation_farming_01_66",
	"vegetation_farming_01_67",
	"vegetation_farming_01_68",
	"vegetation_farming_01_69",
	"vegetation_farming_01_70",
	"vegetation_farming_01_71"
}

-- CommonMallow
farming_vegetableconf.props["CommonMallow"] = {};
farming_vegetableconf.props["CommonMallow"].seedsRequired = 4;
farming_vegetableconf.props["CommonMallow"].texture = "vegetation_farming_01_71";
farming_vegetableconf.props["CommonMallow"].waterLvl = 75;
farming_vegetableconf.props["CommonMallow"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["CommonMallow"].vegetableName = "Base.CommonMallow";
farming_vegetableconf.props["CommonMallow"].seedName = "GMH.CommonMallowseed";
farming_vegetableconf.props["CommonMallow"].growCode = "GrowMedicalHerbsconf.growNewCrop";
farming_vegetableconf.props["CommonMallow"].seedPerVeg = 2;
farming_vegetableconf.props["CommonMallow"].minVeg = 4;
farming_vegetableconf.props["CommonMallow"].maxVeg = 5;
farming_vegetableconf.props["CommonMallow"].minVegAutorized = 6;
farming_vegetableconf.props["CommonMallow"].maxVegAutorized = 10;

farming_vegetableconf.sprite["CommonMallow"] = {
	"vegetation_farming_01_64",
	"vegetation_farming_01_65",
	"vegetation_farming_01_66",
	"vegetation_farming_01_67",
	"vegetation_farming_01_68",
	"vegetation_farming_01_69",
	"vegetation_farming_01_70",
	"vegetation_farming_01_71"
}


-- Ginseng
farming_vegetableconf.props["Ginseng"] = {};
farming_vegetableconf.props["Ginseng"].seedsRequired = 4;
farming_vegetableconf.props["Ginseng"].texture = "vegetation_farming_01_71";
farming_vegetableconf.props["Ginseng"].waterLvl = 75;
farming_vegetableconf.props["Ginseng"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["Ginseng"].vegetableName = "Base.Ginseng";
farming_vegetableconf.props["Ginseng"].seedName = "GMH.Ginsengseed";
farming_vegetableconf.props["Ginseng"].growCode = "GrowMedicalHerbsconf.growNewCrop";
farming_vegetableconf.props["Ginseng"].seedPerVeg = 2;
farming_vegetableconf.props["Ginseng"].minVeg = 4;
farming_vegetableconf.props["Ginseng"].maxVeg = 5;
farming_vegetableconf.props["Ginseng"].minVegAutorized = 6;
farming_vegetableconf.props["Ginseng"].maxVegAutorized = 10;

farming_vegetableconf.sprite["Ginseng"] = {
	"vegetation_farming_01_64",
	"vegetation_farming_01_65",
	"vegetation_farming_01_66",
	"vegetation_farming_01_67",
	"vegetation_farming_01_68",
	"vegetation_farming_01_69",
	"vegetation_farming_01_70",
	"vegetation_farming_01_71"
}

-- Plantain
farming_vegetableconf.props["Plantain"] = {};
farming_vegetableconf.props["Plantain"].seedsRequired = 7;
farming_vegetableconf.props["Plantain"].texture = "vegetation_farming_01_47";
farming_vegetableconf.props["Plantain"].waterLvl = 65;
farming_vegetableconf.props["Plantain"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["Plantain"].vegetableName = "Base.Plantain";
farming_vegetableconf.props["Plantain"].seedName = "GMH.Plantainseed";
farming_vegetableconf.props["Plantain"].growCode = "GrowMedicalHerbsconf.growNewCrop";
farming_vegetableconf.props["Plantain"].seedPerVeg = 2;
farming_vegetableconf.props["Plantain"].minVeg = 7;
farming_vegetableconf.props["Plantain"].maxVeg = 8;
farming_vegetableconf.props["Plantain"].minVegAutorized = 5;
farming_vegetableconf.props["Plantain"].maxVegAutorized = 9;

farming_vegetableconf.sprite["Plantain"] = {
	"vegetation_farming_01_40",
	"vegetation_farming_01_41",
	"vegetation_farming_01_42",
	"vegetation_farming_01_43",
	"vegetation_farming_01_44",
	"vegetation_farming_01_46",
	"vegetation_farming_01_45",
	"vegetation_farming_01_47"
}

-- LemonGrass
farming_vegetableconf.props["LemonGrass"] = {};
farming_vegetableconf.props["LemonGrass"].seedsRequired = 9;
farming_vegetableconf.props["LemonGrass"].texture = "vegetation_farming_01_23";
farming_vegetableconf.props["LemonGrass"].waterLvl = 65;
farming_vegetableconf.props["LemonGrass"].timeToGrow = ZombRand(89, 103); --45, 50
farming_vegetableconf.props["LemonGrass"].vegetableName = "Base.LemonGrass";
farming_vegetableconf.props["LemonGrass"].seedName = "GMH.LemonGrassseed";
farming_vegetableconf.props["LemonGrass"].growCode = "GrowMedicalHerbsconf.growNewCrop";
farming_vegetableconf.props["LemonGrass"].seedPerVeg = 3;
farming_vegetableconf.props["LemonGrass"].minVeg = 4;
farming_vegetableconf.props["LemonGrass"].maxVeg = 6;
farming_vegetableconf.props["LemonGrass"].minVegAutorized = 9;
farming_vegetableconf.props["LemonGrass"].maxVegAutorized = 11;

farming_vegetableconf.sprite["LemonGrass"] = {
	"vegetation_farming_01_16",
	"vegetation_farming_01_17",
	"vegetation_farming_01_18",
	"vegetation_farming_01_19",
	"vegetation_farming_01_20",
	"vegetation_farming_01_21",
	"vegetation_farming_01_22",
	"vegetation_farming_01_23"
}

-- WildGarlic
farming_vegetableconf.props["WildGarlic"] = {};
farming_vegetableconf.props["WildGarlic"].seedsRequired = 4;
farming_vegetableconf.props["WildGarlic"].texture = "vegetation_farming_01_47";
farming_vegetableconf.props["WildGarlic"].waterLvl = 65;
farming_vegetableconf.props["WildGarlic"].timeToGrow = ZombRand(89, 103); --89, 103
farming_vegetableconf.props["WildGarlic"].vegetableName = "Base.WildGarlic";
farming_vegetableconf.props["WildGarlic"].seedName = "GMH.WildGarlicseed";
farming_vegetableconf.props["WildGarlic"].growCode = "GrowMedicalHerbsconf.growNewCrop";
farming_vegetableconf.props["WildGarlic"].seedPerVeg = 2;
farming_vegetableconf.props["WildGarlic"].minVeg = 3;
farming_vegetableconf.props["WildGarlic"].maxVeg = 4;
farming_vegetableconf.props["WildGarlic"].minVegAutorized = 5;
farming_vegetableconf.props["WildGarlic"].maxVegAutorized = 9;

farming_vegetableconf.sprite["WildGarlic"] = {
	"vegetation_farming_01_40",
	"vegetation_farming_01_41",
	"vegetation_farming_01_42",
	"vegetation_farming_01_43",
	"vegetation_farming_01_44",
	"vegetation_farming_01_46",
	"vegetation_farming_01_45",
	"vegetation_farming_01_47"
}

-- BlackSage
farming_vegetableconf.props["BlackSage"] = {};
farming_vegetableconf.props["BlackSage"].seedsRequired = 6;
farming_vegetableconf.props["BlackSage"].texture = "vegetation_farming_01_63";
farming_vegetableconf.props["BlackSage"].waterLvl = 85;
farming_vegetableconf.props["BlackSage"].timeToGrow = ZombRand(89, 103); --103, 131
farming_vegetableconf.props["BlackSage"].vegetableName = "Base.BlackSage";
farming_vegetableconf.props["BlackSage"].seedName = "GMH.BlackSageseed";
farming_vegetableconf.props["BlackSage"].growCode = "GrowMedicalHerbsconf.growNewCrop";
farming_vegetableconf.props["BlackSage"].seedPerVeg = 4;
farming_vegetableconf.props["BlackSage"].minVeg = 4;
farming_vegetableconf.props["BlackSage"].maxVeg = 6;
farming_vegetableconf.props["BlackSage"].minVegAutorized = 8;
farming_vegetableconf.props["BlackSage"].maxVegAutorized = 14;

farming_vegetableconf.sprite["BlackSage"] = {
	"vegetation_farming_01_56",
	"vegetation_farming_01_57",
	"vegetation_farming_01_58",
	"vegetation_farming_01_59",
	"vegetation_farming_01_60",
	"vegetation_farming_01_61",
	"vegetation_farming_01_62",
	"vegetation_farming_01_63"
}

if ProceduralDistributions then
	farming_vegetableconf.props["Comfrey"].waterLvlMax = 100;
	farming_vegetableconf.props["CommonMallow"].waterLvlMax = 100;
	--farming_vegetableconf.props["Corn"].waterLvlMax = 100;
	farming_vegetableconf.props["Ginseng"].waterLvlMax = 100;
	farming_vegetableconf.props["Plantain"].waterLvlMax = 100;
	farming_vegetableconf.props["LemonGrass"].waterLvlMax = 100;
	farming_vegetableconf.props["WildGarlic"].waterLvlMax = 100;
	farming_vegetableconf.props["BlackSage"].waterLvlMax = 100;
end