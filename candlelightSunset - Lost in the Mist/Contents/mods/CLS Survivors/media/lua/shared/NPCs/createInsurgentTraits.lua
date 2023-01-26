require "NPCs/MainCreationMethods"

--REMOVEAL OF VANILLA PROFESSIONS
ProfessionFramework.RemoveDefaultProfessions = true

local function initInsurgentTraits()

	--TRAITS SETUP
    local generatorknowledge = TraitFactory.addTrait("GeneratorKnowledge", getText("UI_trait_GeneratorKnowledge"), 0, getText("UI_trait_GeneratorKnowledgeDesc"), true, false);
	generatorknowledge:getFreeRecipes():add("Generator");

    local roughlanding = TraitFactory.addTrait("RoughLanding", getText("UI_trait_RoughLanding"), 0, getText("UI_trait_RoughLandingDesc"), true, false);
	
	local vaccinespecialist = TraitFactory.addTrait("VaccineSpecialist", getText("UI_trait_VaccineSpecialist"), 1, getText("UI_trait_VaccineSpecialistDesc"), false, false);
	vaccinespecialist:addXPBoost(Perks.VaccineResearch, 7);
	vaccinespecialist:addXPBoost(Perks.Doctor, 6);
	vaccinespecialist:addXPBoost(Perks.Nimble, 2);
	vaccinespecialist:getFreeRecipes():add("LabAssembleChemistrySet");
	vaccinespecialist:getFreeRecipes():add("ChmCollectInfectedSaliva");
	vaccinespecialist:getFreeRecipes():add("ChmCollectInfectedSaliva");
	vaccinespecialist:getFreeRecipes():add("ChmResearchSaliva");
	vaccinespecialist:getFreeRecipes():add("ChmResearchBlood");
	vaccinespecialist:getFreeRecipes():add("ChmTakeBloodForAnalysis");
	vaccinespecialist:getFreeRecipes():add("ChmGetBloodTest");
	vaccinespecialist:getFreeRecipes():add("ChmGetBloodTestTwo");
	vaccinespecialist:getFreeRecipes():add("ChmCollectInfectedBlood");
	vaccinespecialist:getFreeRecipes():add("ChmSterilizeTestTube");
	vaccinespecialist:getFreeRecipes():add("ChmSterilizeFlask");
	vaccinespecialist:getFreeRecipes():add("ChmSterilizeLabSyringeReusable");
	vaccinespecialist:getFreeRecipes():add("ChmIsolateVirusFromSaliva");
	vaccinespecialist:getFreeRecipes():add("ChmResearchVirus");
	vaccinespecialist:getFreeRecipes():add("ChmMixFlaskOfSodiumHypochlorite");
	vaccinespecialist:getFreeRecipes():add("ChmMixFlaskOfSodiumHypochlorite2");
	vaccinespecialist:getFreeRecipes():add("ChmMixFlaskOfAmmoniumSulfate");
	vaccinespecialist:getFreeRecipes():add("ChmMixFlaskOfAmmoniumSulfate2");
	vaccinespecialist:getFreeRecipes():add("ChmMixFlaskOfHydrogenPeroxide");
	vaccinespecialist:getFreeRecipes():add("ChmMixFlaskOfHydrogenPeroxide2");

	local deadeye = TraitFactory.addTrait("Deadeye", getText("UI_trait_Deadeye"), 1, getText("UI_trait_DeadeyeDesc"), false, false);
	deadeye:addXPBoost(Perks.Aiming, 8);
	deadeye:addXPBoost(Perks.Reloading, 10);
	deadeye:addXPBoost(Perks.Strength, 2);
	deadeye:addXPBoost(Perks.Fitness, 2);
    
	local coprsman = TraitFactory.addTrait("Corpsman", getText("UI_trait_Corpsman"), 1, getText("UI_trait_CorpsmanDesc"), false, false);
	coprsman:addXPBoost(Perks.Doctor, 10);
	coprsman:addXPBoost(Perks.Tailoring, 4);
	coprsman:addXPBoost(Perks.Lightfoot, 5);
    
	local scavenger = TraitFactory.addTrait("Scavenger", getText("UI_trait_Scavenger"), 1, getText("UI_trait_ScavengerDesc"), false, false);
	scavenger:addXPBoost(Perks.PlantScavenging, 6);
	scavenger:addXPBoost(Perks.Fishing, 4);
	scavenger:addXPBoost(Perks.Lightfoot, 5);
	scavenger:addXPBoost(Perks.Trapping, 5);
    
	local culinarian = TraitFactory.addTrait("Culinarian", getText("UI_trait_Culinarian"), 1, getText("UI_trait_CulinarianDesc"), false, false);
	culinarian:addXPBoost(Perks.Cooking, 10);
	culinarian:addXPBoost(Perks.Farming, 4);
	culinarian:addXPBoost(Perks.Trapping, 2);
    
	local agriculturalist = TraitFactory.addTrait("Agriculturalist", getText("UI_trait_Agriculturalist"), 1, getText("UI_trait_AgriculturalistDesc"), false, false);
	agriculturalist:addXPBoost(Perks.Farming, 10);
	agriculturalist:addXPBoost(Perks.PlantScavenging, 4);
	agriculturalist:addXPBoost(Perks.Trapping, 2);
    
	local constructionist = TraitFactory.addTrait("Constructionist", getText("UI_trait_Constructionist"), 1, getText("UI_trait_ConstructionistDesc"), false, false);
	constructionist:addXPBoost(Perks.Woodwork, 10);
	constructionist:addXPBoost(Perks.Blunt, 5);
	constructionist:addXPBoost(Perks.Strength, 4);
	constructionist:addXPBoost(Perks.Fitness, 2);
    
	local burglar = TraitFactory.addTrait("Burglar", getText("UI_prof_Burglar"), 1, getText("UI_trait_BurglarDesc"), false, false);
	burglar:addXPBoost(Perks.Lightfoot, 5);
	burglar:addXPBoost(Perks.Sneak, 4);
	burglar:addXPBoost(Perks.Nimble, 4);
    
	local mechanist = TraitFactory.addTrait("Mechanist", getText("UI_trait_Mechanist"), 1, getText("UI_trait_MechanistDesc"), false, false);
	mechanist:addXPBoost(Perks.Mechanics, 9);
	mechanist:addXPBoost(Perks.MetalWelding, 5);
	mechanist:addXPBoost(Perks.Electricity, 4);
	mechanist:getFreeRecipes():add("Basic Mechanics");
	mechanist:getFreeRecipes():add("Intermediate Mechanics");
    
	local ironsmith = TraitFactory.addTrait("IronSmith", getText("UI_trait_IronSmith"), 1, getText("UI_trait_IronSmithDesc"), false, false);
	ironsmith:addXPBoost(Perks.MetalWelding, 8);
	ironsmith:addXPBoost(Perks.Mechanics, 5);
	ironsmith:addXPBoost(Perks.Electricity, 4);
    
	local tailorman = TraitFactory.addTrait("TailorMan", getText("UI_trait_TailorMan"), 1, getText("UI_trait_TailorManDesc"), false, false);
	tailorman:addXPBoost(Perks.Tailoring, 7);
	tailorman:addXPBoost(Perks.Maintenance, 4);
	tailorman:addXPBoost(Perks.Doctor, 4);
    
	local axeman = TraitFactory.addTrait("AxemanNew", getText("UI_trait_AxemanNew"), 1, getText("UI_trait_AxemanNewDesc"), false, false);
	axeman:addXPBoost(Perks.Axe, 5);
    
	local bruiser = TraitFactory.addTrait("Bruiser", getText("UI_trait_Bruiser"), 1, getText("UI_trait_BruiserDesc"), false, false);
	bruiser:addXPBoost(Perks.SmallBlunt, 5);
    
	local breaker = TraitFactory.addTrait("Breaker", getText("UI_trait_Breaker"), 1, getText("UI_trait_BreakerDesc"), false, false);
	breaker:addXPBoost(Perks.Blunt, 5);
    
	local slasher = TraitFactory.addTrait("Slasher", getText("UI_trait_Slasher"), 1, getText("UI_trait_SlasherDesc"), false, false);
	slasher:addXPBoost(Perks.LongBlade, 5);
    
	local stabber = TraitFactory.addTrait("Stabber", getText("UI_trait_Stabber"), 1, getText("UI_trait_StabberDesc"), false, false);
	stabber:addXPBoost(Perks.SmallBlade, 5);
    
	local spearmancombat = TraitFactory.addTrait("Spearmancombat", getText("UI_trait_Spearmancombat"), 1, getText("UI_trait_SpearmancombatDesc"), false, false);
	spearmancombat:addXPBoost(Perks.Spear, 5);
    
	local soldier = TraitFactory.addTrait("Soldier", getText("UI_trait_Soldier"), 1, getText("UI_trait_SoldierDesc"), false, false);
	soldier:addXPBoost(Perks.Aiming, 4);
	soldier:addXPBoost(Perks.Reloading, 4);
    
	local carpenterplus = TraitFactory.addTrait("Carpenterplus", getText("UI_trait_Carpenterplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	carpenterplus:addXPBoost(Perks.Woodwork, 3);
    
	local metalworkerplus = TraitFactory.addTrait("Metalworkerplus", getText("UI_trait_Metalworkerplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	metalworkerplus:addXPBoost(Perks.MetalWelding, 3);
    
	local mechanicplus = TraitFactory.addTrait("Mechanicplus", getText("UI_trait_Mechanicplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	mechanicplus:addXPBoost(Perks.Mechanics, 3);
    
	local farmerplus = TraitFactory.addTrait("Farmerplus", getText("UI_trait_Farmerplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	farmerplus:addXPBoost(Perks.Farming, 3);
    
	local foragerplus = TraitFactory.addTrait("Foragerplus", getText("UI_trait_Foragerplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	foragerplus:addXPBoost(Perks.PlantScavenging, 3);
    
	local trapperplus = TraitFactory.addTrait("Trapperplus", getText("UI_trait_Trapperplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	trapperplus:addXPBoost(Perks.Trapping, 3);
    
	local cookplus = TraitFactory.addTrait("Cookplus", getText("UI_trait_Cookplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	cookplus:addXPBoost(Perks.Cooking, 3);
    
	local electricianplus = TraitFactory.addTrait("Electricianplus", getText("UI_trait_Electricianplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	electricianplus:addXPBoost(Perks.Electricity, 3);
    
	local medicplus = TraitFactory.addTrait("Medicplus", getText("UI_trait_Medicplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	medicplus:addXPBoost(Perks.Doctor, 3);
    
	local tailorplus = TraitFactory.addTrait("Tailorplus", getText("UI_trait_Tailorplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	tailorplus:addXPBoost(Perks.Tailoring, 3);
    
	local researcherplus = TraitFactory.addTrait("Researcherplus", getText("UI_trait_Researcherplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	researcherplus:addXPBoost(Perks.VaccineResearch, 3);
    
	local fishermanplus = TraitFactory.addTrait("Fishermanplus", getText("UI_trait_Fishermanplus"), 1, getText("UI_trait_SkillplusDesc"), false, false);
	fishermanplus:addXPBoost(Perks.Fishing, 3);

	local prepguard = TraitFactory.addTrait("Prepguard", getText("UI_trait_Prepguard"), 1, getText("UI_trait_Prepared"), false, false);

	local prepfood = TraitFactory.addTrait("Prepfood", getText("UI_trait_Prepfood"), 1, getText("UI_trait_Prepared"), false, false);

	local prepmedic = TraitFactory.addTrait("Prepmedic", getText("UI_trait_Prepmedic"), 1, getText("UI_trait_Prepared"), false, false);

	local prepslayer = TraitFactory.addTrait("Prepslayer", getText("UI_trait_Prepslayer"), 1, getText("UI_trait_Prepared"), false, false);

	local prepworker = TraitFactory.addTrait("Prepworker", getText("UI_trait_Prepworker"), 1, getText("UI_trait_Prepared"), false, false);

	local universityelectrician2 = TraitFactory.addTrait("UniversityElectrician2", getText("UI_trait_UniversityElectrician2"), 0, getText("UI_trait_UniversityElectrician2Desc"), true, false);

	--TRAITS MUTUAL EXCLUSION
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Deadeye");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Corpsman");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Scavenger");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Culinarian");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Agriculturalist");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Constructionist");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Burglar");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "Mechanist");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "IronSmith");
	TraitFactory.setMutualExclusive("VaccineSpecialist", "TailorMan");
	TraitFactory.setMutualExclusive("Deadeye", "Corpsman");
	TraitFactory.setMutualExclusive("Deadeye", "Scavenger");
	TraitFactory.setMutualExclusive("Deadeye", "Culinarian");
	TraitFactory.setMutualExclusive("Deadeye", "Agriculturalist");
	TraitFactory.setMutualExclusive("Deadeye", "Constructionist");
	TraitFactory.setMutualExclusive("Deadeye", "Burglar");
	TraitFactory.setMutualExclusive("Deadeye", "Mechanist");
	TraitFactory.setMutualExclusive("Deadeye", "IronSmith");
	TraitFactory.setMutualExclusive("Deadeye", "TailorMan");
	TraitFactory.setMutualExclusive("Corpsman", "Scavenger");
	TraitFactory.setMutualExclusive("Corpsman", "Culinarian");
	TraitFactory.setMutualExclusive("Corpsman", "Agriculturalist");
	TraitFactory.setMutualExclusive("Corpsman", "Constructionist");
	TraitFactory.setMutualExclusive("Corpsman", "Burglar");
	TraitFactory.setMutualExclusive("Corpsman", "Mechanist");
	TraitFactory.setMutualExclusive("Corpsman", "IronSmith");
	TraitFactory.setMutualExclusive("Corpsman", "TailorMan");
	TraitFactory.setMutualExclusive("Scavenger", "Culinarian");
	TraitFactory.setMutualExclusive("Scavenger", "Agriculturalist");
	TraitFactory.setMutualExclusive("Scavenger", "Constructionist");
	TraitFactory.setMutualExclusive("Scavenger", "Burglar");
	TraitFactory.setMutualExclusive("Scavenger", "Mechanist");
	TraitFactory.setMutualExclusive("Scavenger", "IronSmith");
	TraitFactory.setMutualExclusive("Scavenger", "TailorMan");
	TraitFactory.setMutualExclusive("Culinarian", "Agriculturalist");
	TraitFactory.setMutualExclusive("Culinarian", "Constructionist");
	TraitFactory.setMutualExclusive("Culinarian", "Burglar");
	TraitFactory.setMutualExclusive("Culinarian", "Mechanist");
	TraitFactory.setMutualExclusive("Culinarian", "IronSmith");
	TraitFactory.setMutualExclusive("Culinarian", "TailorMan");
	TraitFactory.setMutualExclusive("Agriculturalist", "Constructionist");
	TraitFactory.setMutualExclusive("Agriculturalist", "Burglar");
	TraitFactory.setMutualExclusive("Agriculturalist", "Mechanist");
	TraitFactory.setMutualExclusive("Agriculturalist", "IronSmith");
	TraitFactory.setMutualExclusive("Agriculturalist", "TailorMan");
	TraitFactory.setMutualExclusive("Constructionist", "Burglar");
	TraitFactory.setMutualExclusive("Constructionist", "Mechanist");
	TraitFactory.setMutualExclusive("Constructionist", "IronSmith");
	TraitFactory.setMutualExclusive("Constructionist", "TailorMan");
	TraitFactory.setMutualExclusive("Burglar", "Mechanist");
	TraitFactory.setMutualExclusive("Burglar", "IronSmith");
	TraitFactory.setMutualExclusive("Burglar", "TailorMan");
	TraitFactory.setMutualExclusive("Mechanist", "IronSmith");
	TraitFactory.setMutualExclusive("Mechanist", "TailorMan");
	TraitFactory.setMutualExclusive("IronSmith", "TailorMan");
	TraitFactory.setMutualExclusive("AxemanNew", "Bruiser");
	TraitFactory.setMutualExclusive("AxemanNew", "Breaker");
	TraitFactory.setMutualExclusive("AxemanNew", "Slasher");
	TraitFactory.setMutualExclusive("AxemanNew", "Stabber");
	TraitFactory.setMutualExclusive("AxemanNew", "Spearmancombat");
	TraitFactory.setMutualExclusive("AxemanNew", "Soldier");
	TraitFactory.setMutualExclusive("Bruiser", "Breaker");
	TraitFactory.setMutualExclusive("Bruiser", "Slasher");
	TraitFactory.setMutualExclusive("Bruiser", "Stabber");
	TraitFactory.setMutualExclusive("Bruiser", "Spearmancombat");
	TraitFactory.setMutualExclusive("Bruiser", "Soldier");
	TraitFactory.setMutualExclusive("Breaker", "Slasher");
	TraitFactory.setMutualExclusive("Breaker", "Stabber");
	TraitFactory.setMutualExclusive("Breaker", "Spearmancombat");
	TraitFactory.setMutualExclusive("Breaker", "Soldier");
	TraitFactory.setMutualExclusive("Slasher", "Stabber");
	TraitFactory.setMutualExclusive("Slasher", "Spearmancombat");
	TraitFactory.setMutualExclusive("Slasher", "Soldier");
	TraitFactory.setMutualExclusive("Stabber", "Spearmancombat");
	TraitFactory.setMutualExclusive("Stabber", "Soldier");
	TraitFactory.setMutualExclusive("Spearmancombat", "Soldier");
	TraitFactory.setMutualExclusive("Carpenterplus", "Metalworkerplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Mechanicplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Farmerplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Foragerplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Trapperplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Cookplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Electricianplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Medicplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Carpenterplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Mechanicplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Farmerplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Foragerplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Trapperplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Cookplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Electricianplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Medicplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Metalworkerplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Farmerplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Foragerplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Trapperplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Cookplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Electricianplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Medicplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Mechanicplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Foragerplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Trapperplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Cookplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Electricianplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Medicplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Farmerplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Foragerplus", "Trapperplus");
	TraitFactory.setMutualExclusive("Foragerplus", "Cookplus");
	TraitFactory.setMutualExclusive("Foragerplus", "Electricianplus");
	TraitFactory.setMutualExclusive("Foragerplus", "Medicplus");
	TraitFactory.setMutualExclusive("Foragerplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Foragerplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Foragerplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Trapperplus", "Cookplus");
	TraitFactory.setMutualExclusive("Trapperplus", "Electricianplus");
	TraitFactory.setMutualExclusive("Trapperplus", "Medicplus");
	TraitFactory.setMutualExclusive("Trapperplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Trapperplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Trapperplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Cookplus", "Electricianplus");
	TraitFactory.setMutualExclusive("Cookplus", "Medicplus");
	TraitFactory.setMutualExclusive("Cookplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Cookplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Cookplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Electricianplus", "Medicplus");
	TraitFactory.setMutualExclusive("Electricianplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Electricianplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Electricianplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Medicplus", "Tailorplus");
	TraitFactory.setMutualExclusive("Medicplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Medicplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Tailorplus", "Researcherplus");
	TraitFactory.setMutualExclusive("Tailorplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Researcherplus", "Fishermanplus");
	TraitFactory.setMutualExclusive("Prepguard", "Prepfood");
	TraitFactory.setMutualExclusive("Prepguard", "Prepmedic");
	TraitFactory.setMutualExclusive("Prepguard", "Prepslayer");
	TraitFactory.setMutualExclusive("Prepguard", "Prepworker");
	TraitFactory.setMutualExclusive("Prepfood", "Prepmedic");
	TraitFactory.setMutualExclusive("Prepfood", "Prepslayer");
	TraitFactory.setMutualExclusive("Prepfood", "Prepworker");
	TraitFactory.setMutualExclusive("Prepmedic", "Prepslayer");
	TraitFactory.setMutualExclusive("Prepmedic", "Prepworker");
	TraitFactory.setMutualExclusive("Prepslayer", "Prepworker");

	--TRAITS EXCLUSIVENESS TO PROFESSION
    local generatorknowledge = profExclTrait:new();
    generatorknowledge.traitName = "GeneratorKnowledge";
    table.insert(generatorknowledge.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, generatorknowledge);

    local vaccinespecialist = profExclTrait:new();
    vaccinespecialist.traitName = "VaccineSpecialist";
    table.insert(vaccinespecialist.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, vaccinespecialist);

    local deadeye = profExclTrait:new();
    deadeye.traitName = "Deadeye";
    table.insert(deadeye.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, deadeye);

    local coprsman = profExclTrait:new();
    coprsman.traitName = "Corpsman";
    table.insert(coprsman.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, coprsman);

    local scavenger = profExclTrait:new();
    scavenger.traitName = "Scavenger";
    table.insert(scavenger.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, scavenger);

    local culinarian = profExclTrait:new();
    culinarian.traitName = "Culinarian";
    table.insert(culinarian.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, culinarian);

    local agriculturalist = profExclTrait:new();
    agriculturalist.traitName = "Agriculturalist";
    table.insert(agriculturalist.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, agriculturalist);

    local constructionist = profExclTrait:new();
    constructionist.traitName = "Constructionist";
    table.insert(constructionist.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, constructionist);

    local burglar = profExclTrait:new();
    burglar.traitName = "Burglar";
    table.insert(burglar.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, burglar);

    local mechanist = profExclTrait:new();
    mechanist.traitName = "Mechanist";
    table.insert(mechanist.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, mechanist);

    local ironsmith = profExclTrait:new();
    ironsmith.traitName = "IronSmith";
    table.insert(ironsmith.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, ironsmith);

    local tailorman = profExclTrait:new();
    tailorman.traitName = "TailorMan";
    table.insert(tailorman.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, tailorman);

    local axeman = profExclTrait:new();
    axeman.traitName = "AxemanNew";
    table.insert(axeman.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, axeman);

    local bruiser = profExclTrait:new();
    bruiser.traitName = "Bruiser";
    table.insert(bruiser.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, bruiser);

    local breaker = profExclTrait:new();
    breaker.traitName = "Breaker";
    table.insert(breaker.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, breaker);

    local slasher = profExclTrait:new();
    slasher.traitName = "Slasher";
    table.insert(slasher.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, slasher);

    local stabber = profExclTrait:new();
    stabber.traitName = "Stabber";
    table.insert(stabber.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, stabber);

    local spearmancombat = profExclTrait:new();
    spearmancombat.traitName = "Spearmancombat";
    table.insert(spearmancombat.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, spearmancombat);

    local soldier = profExclTrait:new();
    soldier.traitName = "Soldier";
    table.insert(soldier.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, soldier);

    local roughlanding = profExclTrait:new();
    roughlanding.traitName = "RoughLanding";
    table.insert(roughlanding.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, roughlanding);

    local carpenterplus = profExclTrait:new();
    carpenterplus.traitName = "Carpenterplus";
    table.insert(carpenterplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, carpenterplus);

    local metalworkerplus = profExclTrait:new();
    metalworkerplus.traitName = "Metalworkerplus";
    table.insert(metalworkerplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, metalworkerplus);

    local mechanicplus = profExclTrait:new();
    mechanicplus.traitName = "Mechanicplus";
    table.insert(mechanicplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, mechanicplus);

    local farmerplus = profExclTrait:new();
    farmerplus.traitName = "Farmerplus";
    table.insert(farmerplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, farmerplus);

    local foragerplus = profExclTrait:new();
    foragerplus.traitName = "Foragerplus";
    table.insert(foragerplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, foragerplus);

    local trapperplus = profExclTrait:new();
    trapperplus.traitName = "Trapperplus";
    table.insert(trapperplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, trapperplus);

    local cookplus = profExclTrait:new();
    cookplus.traitName = "Cookplus";
    table.insert(cookplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, cookplus);

    local electricianplus = profExclTrait:new();
    electricianplus.traitName = "Electricianplus";
    table.insert(electricianplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, electricianplus);

    local medicplus = profExclTrait:new();
    medicplus.traitName = "Medicplus";
    table.insert(medicplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, medicplus);

    local tailorplus = profExclTrait:new();
    tailorplus.traitName = "Tailorplus";
    table.insert(tailorplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, tailorplus);

    local researcherplus = profExclTrait:new();
    researcherplus.traitName = "Researcherplus";
    table.insert(researcherplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, researcherplus);

    local fishermanplus = profExclTrait:new();
    fishermanplus.traitName = "Fishermanplus";
    table.insert(fishermanplus.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, fishermanplus);

	local prepguard = profExclTrait:new();
    prepguard.traitName = "Prepguard";
    table.insert(prepguard.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, prepguard);

	local prepfood = profExclTrait:new();
    prepfood.traitName = "Prepfood";
    table.insert(prepfood.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, prepfood);

	local prepmedic = profExclTrait:new();
    prepmedic.traitName = "Prepmedic";
    table.insert(prepmedic.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, prepmedic);

	local prepslayer = profExclTrait:new();
    prepslayer.traitName = "Prepslayer";
    table.insert(prepslayer.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, prepslayer);

	local prepworker = profExclTrait:new();
    prepworker.traitName = "Prepworker";
    table.insert(prepworker.exclusiveProf, "insurgent");
    table.insert(profExlusiveTraitsList, prepworker);
end

--PROFESSION SETUP
local function initInsurgentProfs()
    local insurgent = ProfessionFactory.addProfession("insurgent", getText("UI_prof_insurgent"), "profession_insurgent", 4);
    insurgent:addFreeTrait("Desensitized");
    insurgent:addFreeTrait("RoughLanding");
    insurgent:addFreeTrait("GeneratorKnowledge");
    insurgent:addXPBoost(Perks.Fitness, 1);	
    insurgent:addXPBoost(Perks.Strength, 1);		

	local profsList = ProfessionFactory.getProfessions()
    for i = 1, profsList:size() do
        local profession = profsList:get(i - 1);
        BaseGameCharacterDetails.SetProfessionDescription(profession);
        print("Loaded Profesion: " .. profession:getName());
    end
end

local original_traits = BaseGameCharacterDetails.DoTraits
BaseGameCharacterDetails.DoTraits = function()
    original_traits()
    initInsurgentTraits()
end

local original_profs = BaseGameCharacterDetails.DoProfessions
BaseGameCharacterDetails.DoProfessions = function()
    original_profs()
    initInsurgentProfs()
end

Events.OnGameBoot.Remove(original_profs);
Events.OnGameBoot.Remove(original_traits);
Events.OnGameBoot.Add(BaseGameCharacterDetails.DoTraits);
Events.OnGameBoot.Add(BaseGameCharacterDetails.DoProfessions);
