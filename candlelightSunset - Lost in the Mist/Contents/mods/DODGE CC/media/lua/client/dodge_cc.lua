local function info()

	ISCarMechanicsOverlay.CarList["Base.DodgeCC"] = {imgPrefix = "sportscar_", x=10,y=0};
	ISCarMechanicsOverlay.CarList["Base.DodgeCCP"] = {imgPrefix = "sportscar_", x=10,y=0};

end

--AQ-TEAM.EU--
Events.OnInitWorld.Add(info);