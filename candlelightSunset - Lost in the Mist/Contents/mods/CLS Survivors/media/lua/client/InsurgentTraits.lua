--Huge credit to Spyjack for the original code and his original Insurgent concept in Facility-7

--Also huge credit to Azakaela and AuthenticPeach from code inspiration from their existing mods. 

--Also credit to Hayley, she smells.


require('NPCs/MainCreationMethods');
require('OptionScreens/CharacterCreationProfession');
require('XpSystem/XpUpdate');
require"ISUI/ISPanel"
require"ISUI/ISButton"
require"ISUI/ISInventoryPane"
require"ISUI/ISResizeWidget"
require"ISUI/ISMouseDrag"

require"defines"

--Used to call base functions
local oldOnSelectProf = CharacterCreationProfession.onSelectProf
local oldProfCreate = CharacterCreationProfession.create
local oldAddTrait = CharacterCreationProfession.addTrait
local oldRemoveTrait = CharacterCreationProfession.removeTrait
local oldProfList = CharacterCreationProfession.populateProfessionList
local oldGetSurroundingZs = IsoGameCharacter.getSurroundingAttackingZombies

--Global Variables
dontAddXp = false;
profExlusiveTraitsList = {};
specOpsExcusiveProfs = {"insurgent"};
deathResistLines = {};
deathNoResistLines = {};
profsListIsDirty = true;
suspende = false;

local function tableContains(t, e)
    for _, value in pairs(t) do
        if value == e then
            return true
        end
    end
    return false
end

local function tableContainsTrait(t, e)
    for _, value in pairs(t) do
        if value.item:getLabel() == e then
            print("Found value in table, returning " .. value.item:getLabel())
            return true
        end
    end
    return false
end

local function addXPNoMultiplier(_player, _perk, _amount)
    local perk = _perk;
    local amount = _amount;
    local player = _player;
    skipxpadd = true;
    player:getXp():AddXPNoMultiplier(perk, amount);
end

--Profession "profName" has a list of exclusive traits exclTraits
profExclTrait = {};

function profExclTrait:new()
    trt = {}
    setmetatable(trt, self)
    self.__index = self
    trt.traitName = "NONE" 
    trt.exclusiveProf = {}
    return trt
end

--If errors, check "ToadTraitBodyDamage"
local function initInsurgentTraitData(_player)
    local player = _player;
    local playerdata = player:getModData();
    local dam = 15;
	
    --player:getModData().hasSpawnProtection = false;
    playerdata.willResistDeath = true;
    playerdata.undyingCooldown = 0;
	
    --Berserker combat stats
    playerdata.comboHits = 0;
    playerdata.comboKills = 0;
    playerdata.killedLastHour = false;
    playerdata.frenzyTimer = 0;


    if player:HasTrait("RoughLanding") then
        suspende = true;
        local bodydamage = player:getBodyDamage();
        local itterations = ZombRand(2) + 1;
        local doburns = true;
        for i = 0, itterations do
            local randompart = ZombRand(0, 16);
            local bodypart = bodydamage:getBodyPart(BodyPartType.FromIndex(randompart));
            local injuries = ZombRand(0, 5);
            local skip = false;
            if bodypart:HasInjury() then
                itterations = itterations - 1;
                skip = true;
            end
            if skip == false then
                if injuries <= 1 then
                    bodypart:AddDamage(dam);
                    bodypart:setScratched(true, true);
                elseif injuries == 2 then
                    bodypart:AddDamage(dam);
                    bodypart:setScratched(true, true);
                elseif injuries == 3 then
                    bodypart:AddDamage(dam);
                    bodypart:setCut(true, true);
                elseif injuries >= 4 then
                    bodypart:AddDamage(dam);
                    bodypart:setDeepWounded(true);
				end
			end
		end		
        bodydamage:setInfected(false);
        bodydamage:setInfectionLevel(0);
	end
    playerdata.ToadTraitBodyDamage = nil;
    suspende = false;
    player:getBodyDamage():Update();
    playerdata.fLastHP = nil;
	end
	

local function GetUndyingLine(_onCooldown)
    if _onCooldown == true then
        local index = ZombRand(5) + 1
        if deathNoResistLines[index] == nil then return "UNDYING!" end
        return deathNoResistLines[index]
    end
    local index = ZombRand(10) + 1
    if deathResistLines[index] == nil then return "UNDYING!" end
    return deathResistLines[index]
end

local function filterProfTraits(self, profession)
    print("Attempting to filter traits")
    local addTraitToNew = false;

    --Go through exclusive traits, if the current prof is used for the trait and not in the listbox, add it, otherwise, remove it
    for i,traitToCheck in ipairs(profExlusiveTraitsList) do
        addTraitToNew = false;
        for k,prof in ipairs(traitToCheck.exclusiveProf) do
            print("checking Prof = " .. prof)
            if prof == nil then break end
            if profession == prof then
                print("profName = " .. prof)
                print("traitName = " .. traitToCheck.traitName)
                addTraitToNew = true;
                break
            else
                addTraitToNew = false;
            end
        end 
        if addTraitToNew and not tableContainsTrait(self.listboxTrait.items, TraitFactory.getTrait(traitToCheck.traitName):getLabel()) and not tableContainsTrait(self.listboxTraitSelected.items, TraitFactory.getTrait(traitToCheck.traitName):getLabel()) and TraitFactory.getTrait(traitToCheck.traitName):getCost() > 0 then
            
            local newTrait = self.listboxTrait:addItem(TraitFactory.getTrait(traitToCheck.traitName):getLabel(), TraitFactory.getTrait(traitToCheck.traitName));
            newTrait.tooltip = TraitFactory.getTrait(traitToCheck.traitName):getDescription();

        elseif not addTraitToNew and tableContainsTrait(self.listboxTrait.items, TraitFactory.getTrait(traitToCheck.traitName):getLabel()) and TraitFactory.getTrait(traitToCheck.traitName):getCost() > 0 then
            
            self.listboxTrait:removeItem(TraitFactory.getTrait(traitToCheck.traitName):getLabel());
            self.listboxTrait.selected = -1;

        elseif addTraitToNew and not tableContainsTrait(self.listboxBadTrait.items, TraitFactory.getTrait(traitToCheck.traitName):getLabel()) and not tableContainsTrait(self.listboxTraitSelected.items, TraitFactory.getTrait(traitToCheck.traitName):getLabel()) and TraitFactory.getTrait(traitToCheck.traitName):getCost() < 0 then
            
            local newTrait = self.listboxBadTrait:addItem(TraitFactory.getTrait(traitToCheck.traitName):getLabel(), TraitFactory.getTrait(traitToCheck.traitName));
            newTrait.tooltip = TraitFactory.getTrait(traitToCheck.traitName):getDescription();

        elseif not addTraitToNew and tableContainsTrait(self.listboxBadTrait.items, TraitFactory.getTrait(traitToCheck.traitName):getLabel()) and  TraitFactory.getTrait(traitToCheck.traitName):getCost() < 0 then
            
            self.listboxBadTrait:removeItem(TraitFactory.getTrait(traitToCheck.traitName):getLabel());
            self.listboxBadTrait.selected = -1;

        end
        if not addTraitToNew and tableContainsTrait(self.listboxTraitSelected.items, TraitFactory.getTrait(traitToCheck.traitName):getLabel()) and not TraitFactory.getTrait(traitToCheck.traitName):isFree() then
            
            self.listboxTraitSelected:removeItem(TraitFactory.getTrait(traitToCheck.traitName):getLabel());
            self.listboxTraitSelected.selected = -1;
            self.pointToSpend = self.pointToSpend + TraitFactory.getTrait(traitToCheck.traitName):getCost();
        end
    end
end

function CharacterCreationProfession:create()
    --Incase I need to add something
    oldProfCreate(self)
end

function CharacterCreationProfession:onSelectProf(item)
    local gm = getWorld():getGameMode()
    oldOnSelectProf(self, item) -- call the original
    -- do something custom
	print("Lets add something new!")
	print("Item is: " .. item:getType())
	local prof = self.profession:getType();
	print("Profession is: " .. prof);
    filterProfTraits(self, prof);
    CharacterCreationMain.sort(self.listboxTrait.items);
    CharacterCreationMain.invertSort(self.listboxBadTrait.items);
    CharacterCreationMain.sort(self.listboxTraitSelected.items);
end

local function InsurgentBeginGame(_player)
    local player = _player;
    if player:getHoursSurvived() > 0 then return end
    if player:getDescriptor():getProfession() == "insurgent" then
        local inv = player:getInventory();
		if player:HasTrait("Prepguard") then
            inv:AddItems("Base.HolsterSimple", 1);
            inv:AddItems("Base.9mmClip", 1);
            inv:AddItems("Base.Pistol", 1);
            inv:AddItems("Base.Bullets9mmBox", 1);
            inv:AddItems("Base.RippedSheets", 2);
        end
		if player:HasTrait("Prepfood") then
            inv:AddItems("Base.TinOpener", 1);
            inv:AddItems("Base.TinnedSoup", 1);
            inv:AddItems("Base.CannedBolognese", 1);
            inv:AddItems("Base.TunaTin", 2);
            inv:AddItems("Base.Spoon", 2);
            inv:AddItems("Base.RippedSheets", 2);
        end
		if player:HasTrait("Prepmedic") then
            inv:AddItems("Base.RippedSheets", 2);
            inv:AddItems("Base.FirstAidKit", 1);
            inv:AddItems("Base.Bandaid", 2);
            inv:AddItems("Base.AlcoholBandage", 2);
            inv:AddItems("Base.Splint", 1);
            inv:AddItems("Base.SutureNeedle", 1);
            inv:AddItems("Base.SutureNeedleHolder", 1);
        end
		if player:HasTrait("Prepslayer") then
            inv:AddItems("Base.BaseballBat", 1);
            inv:AddItems("Base.Machete", 1);
            inv:AddItems("Base.ClubHammer", 1);
            inv:AddItems("Base.RippedSheets", 2);
        end
		if player:HasTrait("Prepworker") then
            inv:AddItems("Base.Hammer", 1);
            inv:AddItems("Base.HandAxe", 1);
            inv:AddItems("Base.Saw", 1);
            inv:AddItems("Base.RippedSheets", 2);
        end
		if player:HasTrait("Smoker") then
            inv:AddItems("Base.CigarettesPack", 1);
        end

        if player:HasTrait("RoughLanding") and player:isFemale() then
            getSoundManager():PlaySound("parachuteopeningroughfemale", false, 5):setVolume(2.0);
        elseif player:HasTrait("RoughLanding") and not player:isFemale() then
            getSoundManager():PlaySound("parachuteopeningrough", false, 5):setVolume(2.0);
        else									
            getSoundManager():PlaySound("parachuteopening", false, 5):setVolume(2.0);
        end						
    end
end

local function InsurgentCombatAnxietyTick()
    local player = getPlayer();
    local playerdata = player:getModData();
    local stats = player:getStats();
    if player:HasTrait("CombatAnxiety") then
        local zeds = player:getSpottedList();
        local zombieStress = 0;
        local baseStresser = 0.02;
        local sadMulti = ((player:getBodyDamage():getUnhappynessLevel() / 100) * 2) + 1;
        local panicMulti = (stats:getPanic() * 3) + 1;
        if zeds:size() > 0 then
            for i = 0, zeds:size() - 1 do
                if zeds:get(i):isZombie() then
                    local multi = 0.005;
                    if zeds:get(i):DistTo(player) <= 3 then
                        multi = 0.008;
                    end
                    zombieStress = zombieStress + multi;
                end
            end
        end
        if stats:getDrunkenness() > 0 or stats:getFatigue() < 0.15 then baseStresser = 0 end;
        stats:setStress(stats:getStress() + (baseStresser * sadMulti * panicMulti) + zombieStress);
    end
end

local function DoEmotionOverloadCheck(_player, _emoteValue, _maxEmote, _headacheRange)
    local bodydamage = _player:getBodyDamage();
    local headacheIntensity = 0;
    local newEmoteVal = _emoteValue;
    if _emoteValue > _headacheRange then
        --If the player is given a sudden influx of emotion, become overwhelmed and given a headache
       headacheIntensity = (_emoteValue - _maxEmote) * 5
       local part = _player:getBodyDamage():getBodyParts():get(8);
       part:setAdditionalPain(headacheIntensity);
       newEmoteVal = _maxEmote * 0.8
    else
        newEmoteVal = _emoteValue - 0.05;
    end
    return newEmoteVal
end

local function InsurgentEmotionTick(_player, _playerdata)
    local player = _player;
    local playerdata = _playerdata;
    local stats = player:getStats();
    if player:HasTrait("Emotionless") then
        local maxEmote = 0.15
        local headacheRange = 0.75
        if stats:getStress() > maxEmote then
            stats:setStress(DoEmotionOverloadCheck(player, stats:getStress(), maxEmote, headacheRange));
        end
        if stats:getPanic() > maxEmote then
            stats:setPanic(DoEmotionOverloadCheck(player, stats:getPanic(), maxEmote, 0.9));
        end
        if player:getBodyDamage():getUnhappynessLevel() > maxEmote then
            player:getBodyDamage():setUnhappynessLevel(DoEmotionOverloadCheck(player, player:getBodyDamage():getUnhappynessLevel(), maxEmote, headacheRange))
        end
        if player:getBodyDamage():getBoredomLevel() > maxEmote then
            player:getBodyDamage():setBoredomLevel(DoEmotionOverloadCheck(player, player:getBodyDamage():getBoredomLevel(), maxEmote, headacheRange))
        end
    end
end


local function InsurgentNervesOfSteelTick()
    local player = getPlayer();
    local playerdata = player:getModData();
    local stats = player:getStats();
    if player:HasTrait("NervesOfSteel") then
        local baseStresser = 0.001;
        local sadMulti = ((player:getBodyDamage():getUnhappynessLevel() / 100) * 2) + 1;
        local panicMulti = (stats:getPanic() * 3) + 1;
        if stats:getDrunkenness() > 0 or stats:getFatigue() < 0.15 then baseStresser = 0 end;
        stats:setStress(stats:getStress() - (baseStresser * sadMulti * panicMulti));
    end
end

local function InsurgentUndyingCooldown()
    local player = getPlayer();
    local playerdata = player:getModData();
    if not playerdata.willResistDeath then
        for i = 0, player:getBodyDamage():getBodyParts():size() - 1 do
            if player:getBodyDamage():getBodyParts():get(i):getHealth() < 90 then
                return;
            elseif player:getBodyDamage():getBodyParts():get(i):bleeding() then
                return;
            end
        end
        if playerdata.undyingCooldown > 0 then
            playerdata.undyingCooldown = playerdata.undyingCooldown - 1;
        else
            playerdata.willResistDeath = true;
        end
    end
end

local function InsurgentResistDeath(_player, _playerdata)
    local player = _player;
    local playerdata = _playerdata;
    local stats = player:getStats();
    local zeds = player:getSpottedList();
    if player:HasTrait("Undying") then
        if player:getBodyDamage():getHealth() <= 10 then
            if playerdata.willResistDeath then
                for i = 0, player:getBodyDamage():getBodyParts():size() - 1 do
                    local b = player:getBodyDamage():getBodyParts():get(i);
                    b:RestoreToFullHealth();
                end
                stats:setAnger(1);
                playerdata.willResistDeath = false;
                playerdata.undyingCooldown = 3;
                if zeds:size() > 0 then
                    for i = 0, zeds:size() - 1 do
                        if zeds:get(i):isZombie() then
                            if zeds:get(i):DistTo(player) <= 1.5 then
                                zeds:get(i):knockDown(false)
                            end
                        end
                    end
                end
                if getCore():getOptionMusicVolume() ~= 0 then
                    getSoundManager():playMusic(MusicChoices.get(100));
                end
                player:Say(GetUndyingLine(false));
            else
                player:Say(GetUndyingLine(true));
            end
        end
    end
end

local function InsurgentRunNGun(_player)
    local player = _player;
    if player:HasTrait("RunNGun") and player:IsAiming() and player:isPlayerMoving() then
        if player:getPrimaryHandItem() ~= nil then
            if player:getPrimaryHandItem():getSubCategory() == "Firearm" then
                player:setBeenMovingFor(0);
            end
        end
    end
end

local function InsurgentBreacherKnockdown()
    local player = getPlayer();
    local playerdata = player:getModData();
    local zeds = player:getSpottedList();
    if player:HasTrait("Breacher") and player:isLocalPlayer() then
        local knockdownChance = 25;
        if player:HasTrait("Stout") or player:HasTrait("Strong") then
            knockdownChance = knockdownChance + 25;
        end
        if player:HasTrait("Runner") then
            knockdownChance = knockdownChance + 10;
        end
        if player:isSprinting() or player:IsRunning() then
            if player:isSprinting() then
                knockdownChance = knockdownChance + 25;
            end
            if zeds:size() > 0 then
                for i = 0, zeds:size() - 1 do
                    if zeds:get(i):isZombie() then
                        if player:isSprinting() and zeds:get(i):DistTo(player) <= 1.1 then
                            if ZombRand(100) < knockdownChance then
                                zeds:get(i):knockDown(true)
                            end
                        elseif player:IsRunning() and zeds:get(i):DistTo(player) <= 0.75 then
                            if ZombRand(100) < knockdownChance then
                                zeds:get(i):knockDown(true)
                            end
                        end
                    end
                end
            end
        end
    end
end

local function InsurgentBFrenzyTick(_player, _playerdata)
    local player = _player;
    local playerdata = _playerdata;
    local stats = player:getStats();
    if player:HasTrait("BloodFrenzy") then
        if playerdata.frenzyTimer == 0 and playerdata.comboHits > 0 then
            print("Player Frenzy is Reset");
            playerdata.comboHits = 0;
        elseif playerdata.frenzyTimer > 0 then
            playerdata.frenzyTimer = playerdata.frenzyTimer - 1;
        end
    end
end

local function InsurgentBFrenzyHit(_actor, _target, _weapon, _damage)
    local player = getPlayer();
    local playerdata = player:getModData();
    local weapon = _weapon;
    local damage = _damage;
    local stats = player:getStats();
    if _actor == player and player:HasTrait("BloodFrenzy") then
        if weapon:getName() == "Bare Hands" then
            return
        end;
        local addedDamage = player:getModData().comboHits / 100;
        if playerdata.frenzyTimer <= 0 then
            if getCore():getOptionMusicVolume() ~= 0 and not getSoundManager():isPlayingMusic() then
                getSoundManager():playMusic(MusicChoices.get(100));
            end
        end
        playerdata.frenzyTimer = 500;
        if _target:isZombie() then
            _target:setHealth(_target:getHealth() - addedDamage);
        end
        if stats:getAnger() < addedDamage then
            stats:setAnger(addedDamage);
        end
        player:getModData().comboHits = player:getModData().comboHits + 1;
    end
end

local function InsurgentPlayerUpdate(_player)
    local player = _player;
    local playerdata = player:getModData();
    InsurgentResistDeath(player, playerdata);
    InsurgentBFrenzyTick(player, playerdata);
    InsurgentEmotionTick(player, playerdata);	
    InsurgentRunNGun(player);
    playerdata.hasSpawnProtection = false;
end

local function InsurgentEvery10Minutes()
    local player = getPlayer();				
    local playerdata = player:getModData();
    InsurgentCombatAnxietyTick(); 
    InsurgentNervesOfSteelTick(); 	
end

local function InitUndyingVoiceLines()
    local voiceLineCount = 10;
    for i=1, voiceLineCount do
        table.insert(deathResistLines, getText("UI_trait_UndyingLine"..i));
    end
    local voiceLineCountWeak = 10;
    for i=1, voiceLineCountWeak do
        table.insert(deathNoResistLines, getText("UI_trait_UndyingWeakLine"..i));
    end
end

Events.OnWeaponHitCharacter.Add(InsurgentBFrenzyHit);
Events.OnPlayerMove.Add(InsurgentBreacherKnockdown);
Events.OnPlayerUpdate.Add(InsurgentPlayerUpdate);
Events.OnDawn.Add(InsurgentUndyingCooldown);
Events.EveryTenMinutes.Add(InsurgentEvery10Minutes);
Events.OnNewGame.Add(initInsurgentTraitData);
Events.OnNewGame.Add(InsurgentBeginGame);
Events.OnGameBoot.Add(InitUndyingVoiceLines)