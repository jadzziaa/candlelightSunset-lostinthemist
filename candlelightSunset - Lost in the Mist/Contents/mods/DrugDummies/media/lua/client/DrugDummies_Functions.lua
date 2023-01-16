--Functions For Drugs

function OnSmoke_WeedBlunt(food, player)

	local dmg = player:getBodyDamage();
	local stats = player:getStats();
	
	stats:setBoredom(stats:getBoredom() - 55.5);
	stats:setFear(stats:getFear() - 0.333);
	stats:setDrunkenness(stats:getDrunkenness() + 90);
end