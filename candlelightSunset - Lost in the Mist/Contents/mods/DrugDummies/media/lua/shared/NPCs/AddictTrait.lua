DrugDummiesBaseGameCharacterDetails = {}

DrugDummiesBaseGameCharacterDetails.DoTraits = function()
    local drugaddict = TraitFactory.addTrait("DrugAddict", getText("UI_trait_DrugAddict"), -10, getText("UI_trait_DrugAddictDesc"), false, false);
end--function

Events.OnGameBoot.Add(DrugDummiesBaseGameCharacterDetails.DoTraits);