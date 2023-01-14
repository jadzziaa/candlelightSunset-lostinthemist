function Trip_Weapon(wielder, target, weapon, damage)
    if not weapon then return end
    if not weapon:getType() == "taser" then return end
    target:setBumpType("stagger")
    target:setBumpFall(true)
    target:setBumpFallType("pushedFront")
    victim:setAvoidDamage(true)
end

Events.OnWeaponHitCharacter.Add(Trip_Weapon)
if not instanceof(target,"IsoPlayer")) then return end