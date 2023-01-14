if getCore():getVersion() == "41.50 - IWBUMS" then
	require 'XpSystem/ISUI/extraskills'

	--table.insert(extraskills.PerkCat, "Others"); To add a new category
	--extraskills.PerkList["Others"] = {}; Add new skills to this category in this table
	--extraskills.PerkName["Others"] = "ContextMenu_Others"; text entry for the category's name

	--To add your skill in an existing category change "Misc" for the internal name i.e. "Crafting" or "Survivalist"
	table.insert(extraskills.PerkList["Crafting"], "VaccineResearch");

	extraskills.skills["VaccineResearch"] = {};
	extraskills.skills["VaccineResearch"].name = "ContextMenu_VaccineResearch_Skill";
	extraskills.skills["VaccineResearch"].level = 0; --Starting level
	extraskills.skills["VaccineResearch"].xp = 0;    --Starting XP
	extraskills.skills["VaccineResearch"].boost = 0.5;
	extraskills.skills["VaccineResearch"].multiplier = 0; --Standard multiplier for skills
end

