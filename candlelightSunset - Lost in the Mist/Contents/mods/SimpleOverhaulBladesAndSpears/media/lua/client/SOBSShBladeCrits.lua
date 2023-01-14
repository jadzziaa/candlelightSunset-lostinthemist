-----------------------------------------------------
--  Stab Short Blade Critical Hit by Star and Hea  --
--   Using this code in your mods is not allowed   --
--	     Simple Overhaul: Blades and Spears        --
--              Steam Workshop 2022                --
-----------------------------------------------------

local _weapon = nil
local ShBladeDamageBonus
local ShBladeCritDmgBonus
--local ShBladeCritChanceBonus
--ocal ShBladeRangeBonus
local ShortBladeLvl

local function checkjawstabmodcheck()
	if getActivatedMods():contains("JawStab_Buff") == true then	
		jawstabmodcheck = 1;
		else jawstabmodcheck = 0; 
	end
end
Events.OnGameStart.Add(checkjawstabmodcheck);

function checkshbladelevel()
	local player = getPlayer();
	if player == nil then
		return
	end
	ShortBladeLvl = player:getPerkLevel(Perks.SmallBlade);
	if ShortBladeLvl >= 7 and ShortBladeLvl <= 10 then
		ShBladeDamageBonus = 1.1
		ShBladeCritDmgBonus = 1.3			
--		ShBladeCritChanceBonus = 0
--		ShBladeRangeBonus = 0		
	elseif ShortBladeLvl >= 3 and ShortBladeLvl <= 6 then
		ShBladeDamageBonus = 1.05
		ShBladeCritDmgBonus = 1.15				
--		ShBladeCritChanceBonus = 0
--		ShBladeRangeBonus = 0
	else -- below level 3
		ShBladeDamageBonus = 1
		ShBladeCritDmgBonus = 1.0			
--		ShBladeCritChanceBonus = 0
--		ShBladeRangeBonus = 0
	end
end
Events.OnGameStart.Add(checkshbladelevel);
Events.LevelPerk.Add(checkshbladelevel);
Events.OnCreatePlayer.Add(checkshbladelevel);
Events.OnCreateLivingCharacter.Add(checkshbladelevel);

local function SetWeaponAddedDamage(set_mindamage, set_maxdamage) -- , add_maxrange
	if not _weapon then
		return
	end
	if not _weapon:isEquipped() then
--		print('WARN: not equipped')
	end
--	print('MinDam MaxDam MaxRan',set_mindamage,' ',set_maxdamage) -- ,' ',add_maxrange
	local txt = _weapon:getScriptItem() 
	local txt_mindamage, txt_maxdamage, txt_maxrange = txt:getMinDamage(), txt:getMaxDamage(), txt:getMaxRange()
	if set_mindamage then 
		_weapon:setMinDamage(set_mindamage) 
		_weapon:setMaxDamage(set_maxdamage) 
--		_weapon:setMaxRange(txt_maxrange + add_maxrange) 
	else 
		_weapon:setMinDamage(txt_mindamage) 
		_weapon:setMaxDamage(txt_maxdamage) 
--		_weapon:setMaxRange(txt_maxrange) 
		_weapon = nil
	end
end

local function OnWeaponSwingHitPoint(player, weapon)
	local anim = weapon:getSwingAnim()
--	print("OnWeaponSwingHitPoint ", anim)
	if anim ~= "Stab" then
		return
	end
	if jawstabmodcheck == 1 then
		player:Say("SOBS: Deactivate Jaw Stab Buff mod!");
	end	
	_weapon = weapon	
	local txt = _weapon:getScriptItem()
	local txt_mindamage, txt_maxdamage, txt_maxrange = txt:getMinDamage(), txt:getMaxDamage(), txt:getMaxRange()
	local WeaponCritChance = weapon:getCriticalChance();
	local WeaponCritDmgMultiplier = weapon:getCritDmgMultiplier();
	local CritProcRoll = ZombRand(100);
	local ShBladeCritPerLvl = ShortBladeLvl * 3;
	if WeaponCritChance >= 1 then 
		ActualCritChance = ShBladeCritPerLvl + (WeaponCritChance * 0.5)
	else
		ActualCritChance = 0
	end
	local MinDamageCritHit = (txt_mindamage * ShBladeDamageBonus) * (WeaponCritDmgMultiplier * ShBladeCritDmgBonus)
	local MaxDamageCritHit = (txt_maxdamage * ShBladeDamageBonus) * (WeaponCritDmgMultiplier * ShBladeCritDmgBonus)
	local MinDamageHit = txt_mindamage * ShBladeDamageBonus
	local MaxDamageHit = txt_maxdamage * ShBladeDamageBonus
	if CritProcRoll <= ActualCritChance then
		SetWeaponAddedDamage(MinDamageCritHit, MaxDamageCritHit) -- , ShBladeRangeBonus
--		print("Crit!")
--		player:Say("!!!");	
	else
		SetWeaponAddedDamage(MinDamageHit, MaxDamageHit) -- , ShBladeRangeBonus
	end
--	print("ActualCritChance: " ..  ActualCritChance)	
--	print("ShBladeCritChanceBonus: " ..  ShBladeCritChanceBonus)	
--	print("ShBladeCritDmgBonus: " ..  (WeaponCritDmgMultiplier * ShBladeCritDmgBonus))		
--	print("ShBladeDamageBonus: " ..  ShBladeDamageBonus)	
--	print("getMaxRange: " ..  weapon:getMaxRange())	
end

Events.OnWeaponSwingHitPoint.Add(OnWeaponSwingHitPoint)

local function ResetDamage()
	SetWeaponAddedDamage()
end

Events.OnWeaponHitCharacter.Add(ResetDamage)
Events.OnPlayerAttackFinished.Add(ResetDamage)
Events.EveryOneMinute.Add(ResetDamage)
Events.OnEquipPrimary.Add(ResetDamage)