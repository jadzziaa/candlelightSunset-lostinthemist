if XNTrees then
	--[[XNTrees.growTrees = function(planting, nextGrowing, updateNbOfGrow)
		local nbOfGrow = planting.nbOfGrow;
		local water = farming_vegetableconf.calcWater(planting.waterNeeded, planting.waterLvl);
		local diseaseLvl = farming_vegetableconf.calcDisease(planting.mildewLvl);
		if(nbOfGrow <= 0) then -- initial
			nbOfGrow = 0;
			planting.nbOfGrow = 0;
			planting = growNext(planting, farming_vegetableconf.getSpriteName(planting), farming_vegetableconf.getObjectName(planting), nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);
			planting.waterNeeded = 80;
		elseif (nbOfGrow <= 2) then -- young
			planting.waterNeeded = farming_vegetableconf.props[planting.typeOfSeed].waterLvl;
			XNTrees.growNext(planting,nextGrowing);
		elseif (nbOfGrow == 3) then -- mature
			XNTrees.growNext(planting,nextGrowing);
	
		elseif (nbOfGrow == 4) then -- mature blooming
			XNTrees.growNext(planting,nextGrowing);
	
		elseif (nbOfGrow == 5) then -- mature with fruits
			if XNTrees.growNext(planting,nextGrowing) then
				planting.hasVegetable = true;
			end
		elseif (nbOfGrow == 6) then -- mature with fruits full grown
			if XNTrees.growNext(planting,nextGrowing) then
				planting.hasVegetable = true; -- Redudnant, but safe.
			end
		elseif (nbOfGrow == 7) then -- old
			if XNTrees.growNext(planting,nextGrowing) then
				planting.hasVegetable = true; -- Still redundant, but also safe.
				planting.retainOnHarvest = nil;
				planting.isOld = true;
			end
		elseif (planting.state ~= "rotten") then -- rotten
			planting:rottenThis()
		end
	
		return planting;
	end

	XNTrees.growOrange = function(planting, nextGrowing, updateNbOfGrow)
		local nbOfGrow = planting.nbOfGrow;
		local water = farming_vegetableconf.calcWater(planting.waterNeeded, planting.waterLvl);
		local diseaseLvl = farming_vegetableconf.calcDisease(planting.mildewLvl);
		if(nbOfGrow <= 0) then -- initial
			nbOfGrow = 0;
			planting.nbOfGrow = 0;
			planting = growNext(planting, farming_vegetableconf.getSpriteName(planting), farming_vegetableconf.getObjectName(planting), nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);
			planting.waterNeeded = 80;
		elseif (nbOfGrow <= 2) then -- sprout
			if XNTrees.growNext(planting,nextGrowing) then
				planting.waterNeeded = farming_vegetableconf.props[planting.typeOfSeed].waterLvl;
			end
		elseif (nbOfGrow == 3) then -- mature
			XNTrees.growNext(planting,nextGrowing);
		elseif (nbOfGrow == 4) then -- mature blooming
			XNTrees.growNext(planting,nextGrowing);
		elseif (nbOfGrow == 5) then -- mature with initial fruits
			XNTrees.growNext(planting,nextGrowing);
		elseif (nbOfGrow == 6 ) then
			 if XNTrees.growNext(planting,nextGrowing) then
				planting.hasVegetable = true;
			end
		elseif nbOfGrow == 7 then -- mature with fruits full grown
			if XNTrees.growNext(planting,nextGrowing,2) then
				planting.hasVegetable = true;
			end
		elseif (nbOfGrow == 8) then -- old
			if XNTrees.growNext(planting,nextGrowing,3) then
				planting.hasVegetable = true;
				planting.retainOnHarvest = nil;
				planting.isOld = true
			end
		elseif (planting.state ~= "rotten") then -- rotten
			planting:rottenThis()
		end
	
		return planting;
	end

	XNTrees.growPineapple = function(planting, nextGrowing, updateNbOfGrow)
		local nbOfGrow = planting.nbOfGrow;
		local water = farming_vegetableconf.calcWater(planting.waterNeeded, planting.waterLvl);
		local diseaseLvl = farming_vegetableconf.calcDisease(planting.mildewLvl);
		if(nbOfGrow <= 0) then -- initial
			nbOfGrow = 0;
			planting.nbOfGrow = 0;
			planting = growNext(planting, farming_vegetableconf.getSpriteName(planting), farming_vegetableconf.getObjectName(planting), nextGrowing, farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);
			planting.waterNeeded = 80;
		elseif (nbOfGrow <= 2) then -- sprout
			if XNTrees.growNext(planting,nextGrowing) then
				planting.waterNeeded = farming_vegetableconf.props[planting.typeOfSeed].waterLvl;
			end
		elseif (nbOfGrow <= 4) then -- young
			XNTrees.growNext(planting,nextGrowing);
		elseif (nbOfGrow == 5) then -- mature
			XNTrees.growNext(planting,nextGrowing);
		elseif (nbOfGrow == 6) then -- mature blooming
			if XNTrees.growNext(planting,nextGrowing) then
				planting.hasVegetable = true;
			end
		elseif (nbOfGrow == 7) then -- mature with fruits full grown
			if XNTrees.growNext(planting,nextGrowing) then
				planting.hasVegetable = true;
				planting.hasSeed = true;
			end
		elseif (planting.state ~= "rotten") then -- rotten
			planting:rottenThis()
		end
	
		return planting;
	end

	
	XNTrees.growNext = function(planting,nextGrowing,modifier)
		modifier = modifier or 1;
		local water = farming_vegetableconf.calcWater(planting.waterNeeded, planting.waterLvl);
		local diseaseLvl = farming_vegetableconf.calcDisease(planting.mildewLvl);
		if(water >= 0 and diseaseLvl >= 0) then
			planting.nextGrowing = calcNextGrowing(nextGrowing, modifier * farming_vegetableconf.props[planting.typeOfSeed].timeToGrow + water + diseaseLvl);
			planting:setObjectName(farming_vegetableconf.getObjectName(planting))
			planting:setSpriteName(farming_vegetableconf.getSpriteName(planting))
			return true;
		end

		badPlant(water, nil, diseaseLvl, planting, nextGrowing, updateNbOfGrow);
		return false;
	end]]

	function XNTrees.getTreeObjectName(plant)
		return farming_vegetableconf.getObjectName(plant)
	end

	function XNTrees.getTreeSpriteName(plant)
		return farming_vegetableconf.getSpriteName(plant)
	end
end