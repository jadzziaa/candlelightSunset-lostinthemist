if getActivatedMods():contains("VehicleTweakerAPI") then
	require("VehicleTweaker_Core");

	if getActivatedMods():contains("Time_Accurate_Sirens") then

		TweakVehicle("Base.CarLightsPolice","lightbar", "MovieSiren");
		TweakVehicle("Base.PickUpVanLightsPolice","lightbar", "MovieSiren");

	end

	if getActivatedMods():contains("VVehicleEnhancer") and getActivatedMods():contains("Time_Accurate_Sirens") then

		TweakVehicle("Base.CarLightsSheriff","lightbar", "MovieSiren");
		TweakVehicle("Base.CarLightsStatepolice","lightbar", "MovieSiren");

	end

	if not getActivatedMods():contains("VVehicleEnhancer") then

		TweakVehicle("Base.CarLightsPolice","skin1", "Vehicles/vehicle_kentuckystate");
		TweakVehicle("Base.CarLightsPolice","skin2", "Vehicles/vehicle_meadesheriff");
		TweakVehicle("Base.CarLightsPolice","skin3", "Vehicles/vehicle_rosewoodpolice");
		TweakVehicle("Base.CarLightsPolice","skin4", "Vehicles/vehicle_westpointpolice");
		TweakVehicle("Base.CarLightsPolice","skin5", "Vehicles/vehicle_muldraughpolice");
		TweakVehicle("Base.CarLightsPolice","skin6", "Vehicles/vehicle_riversidepolice");
		TweakVehicle("Base.CarLightsPolice","skin7", "Vehicles/vehicle_louisvillepolice");
		TweakVehicle("Base.CarLightsPolice","skin8", "Vehicles/vehicle_jeffersonpolice");
		TweakVehicle("Base.CarLightsPolice","skin9", "Vehicles/vehicle_jeffersonsheriff");

		TweakVehicle("Base.PickUpVanLightsPolice","skin1", "Vehicles/vehicle_pickup_ksp");
		TweakVehicle("Base.PickUpVanLightsPolice","skin2", "Vehicles/vehicle_pickup_meadesheriff");
		TweakVehicle("Base.PickUpVanLightsPolice","skin3", "Vehicles/vehicle_pickup_rosewoodsheriff");
		TweakVehicle("Base.PickUpVanLightsPolice","skin4", "Vehicles/vehicle_pickup_westpointpolice");
		TweakVehicle("Base.PickUpVanLightsPolice","skin5", "Vehicles/vehicle_pickup_muldraughpolice");
		TweakVehicle("Base.PickUpVanLightsPolice","skin6", "Vehicles/vehicle_pickup_riversidepolice");
		TweakVehicle("Base.PickUpVanLightsPolice","skin7", "Vehicles/vehicle_pickup_louisvillepolice");
		TweakVehicle("Base.PickUpVanLightsPolice","skin8", "Vehicles/vehicle_pickup_jeffersonpolice");
		TweakVehicle("Base.PickUpVanLightsPolice","skin9", "Vehicles/vehicle_pickup_jeffersonsheriff");

		TweakVehicle("Base.VanAmbulance","skin1", "Vehicles/vehicle_van_meadecountyambulance");
		TweakVehicle("Base.VanAmbulance","skin2", "Vehicles/vehicle_van_louisvilleambulance");
		TweakVehicle("Base.VanAmbulance","skin3", "Vehicles/vehicle_van_jeffersoncountyambulance");

		TweakVehicle("Base.PickUpTruckLightsFire","skin1", "Vehicles/vehicle_pickupfireshell_rosewood");
		TweakVehicle("Base.PickUpTruckLightsFire","skin2", "Vehicles/vehicle_pickupfireshell_meade");
		TweakVehicle("Base.PickUpTruckLightsFire","skin3", "Vehicles/vehicle_pickupfireshell_louisville");

		TweakVehicle("Base.PickUpVanLightsFire","skin1", "Vehicles/vehicle_pickupfireshell_rosewood");
		TweakVehicle("Base.PickUpVanLightsFire","skin2", "Vehicles/vehicle_pickuptruckfireshell_meade");
		TweakVehicle("Base.PickUpVanLightsFire","skin3", "Vehicles/vehicle_pickupfireshell_louisville");

		TweakVehicle("Base.PickUpTruckLights","skin1", "Vehicles/vehicle_pickup_stateparkranger");
		TweakVehicle("Base.PickUpTruckLights","skin2", "Vehicles/vehicle_pickup_fishandwildlife");
		TweakVehicle("Base.PickUpTruckLights","skin3", "Vehicles/vehicle_pickup_nationalparkservice");

		TweakVehicle("Base.PickUpVanLights","skin1", "Vehicles/vehicle_pickup_stateparkranger");
		TweakVehicle("Base.PickUpVanLights","skin2", "Vehicles/vehicle_pickup_fishandwildlife");
		TweakVehicle("Base.PickUpVanLights","skin3", "Vehicles/vehicle_pickup_nationalparkservice");

		TweakVehicle("Base.CarLights","skin1", "Vehicles/vehicle_carnormal_stateparkranger");
		TweakVehicle("Base.CarLights","skin2", "Vehicles/vehicle_carnormal_fishandwildlife");
		TweakVehicle("Base.CarLights","skin3", "Vehicles/vehicle_carnormal_nationalparkservice");

		TweakVehicle("Base.StepVanMail","skin1", "Vehicles/vehicle_stepvan_uspsmailshell");

		TweakVehicle("Base.VanSpecial","skin1", "Vehicles/vehicle_van_uspsmailvan");

		if getActivatedMods():contains("RavenCreek") then

			TweakVehicle("Base.CarLightsPolice","skin10", "Vehicles/vehicle_ravencreekpolice");
			TweakVehicle("Base.PickUpVanLightsPolice","skin10", "Vehicles/vehicle_pickup_ravencreekpolice");

			TweakVehicle("Base.VanAmbulance","skin4", "Vehicles/vehicle_van_ravencreekambulance");

			TweakVehicle("Base.PickUpTruckLightsFire","skin4", "Vehicles/vehicle_pickupfireshell_ravencreek");

			TweakVehicle("Base.PickUpVanLightsFire","skin4", "Vehicles/vehicle_pickuptruckfireshell_ravencreek");

		end
	end

	if getActivatedMods():contains("FRUsedCars") then

		TweakVehicle("Base.85vicsheriff","skin1", "Vehicles/vehicle_85crownvic_kentuckystatepoliceshell");
		TweakVehicle("Base.85vicsheriff","skin2", "Vehicles/vehicle_85crownvic_meadesheriffshell");
		TweakVehicle("Base.85vicsheriff","skin3", "Vehicles/vehicle_85crownvic_rosewoodpoliceshell");
		TweakVehicle("Base.85vicsheriff","skin4", "Vehicles/vehicle_85crownvic_westpointpoliceshell");
		TweakVehicle("Base.85vicsheriff","skin5", "Vehicles/vehicle_85crownvic_muldraughpoliceshell");
		TweakVehicle("Base.85vicsheriff","skin6", "Vehicles/vehicle_85crownvic_riversidepoliceshell");
		TweakVehicle("Base.85vicsheriff","skin7", "Vehicles/vehicle_85crownvic_lousvillepoliceshell");
		TweakVehicle("Base.85vicsheriff","skin8", "Vehicles/vehicle_85crownvic_jeffersonpoliceshell");
		TweakVehicle("Base.85vicsheriff","skin9", "Vehicles/vehicle_85crownvic_jeffersonsheriffshell");

		TweakVehicle("Base.92crownvicPD","skin1", "Vehicles/vehicle_92crownvic_kentuckystatepoliceshell");
		TweakVehicle("Base.92crownvicPD","skin2", "Vehicles/vehicle_92crownvic_meadesheriffshell");
		TweakVehicle("Base.92crownvicPD","skin3", "Vehicles/vehicle_92crownvic_rosewoodpoliceshell");
		TweakVehicle("Base.92crownvicPD","skin4", "Vehicles/vehicle_92crownvic_westpoliceshell");
		TweakVehicle("Base.92crownvicPD","skin5", "Vehicles/vehicle_92crownvic_muldraughpoliceshell");
		TweakVehicle("Base.92crownvicPD","skin6", "Vehicles/vehicle_92crownvic_riversidepoliceshell");
		TweakVehicle("Base.92crownvicPD","skin7", "Vehicles/vehicle_92crownvic_louisvillepoliceshell");
		TweakVehicle("Base.92crownvicPD","skin8", "Vehicles/vehicle_92crownvic_jeffersonpoliceshell");
		TweakVehicle("Base.92crownvicPD","skin9", "Vehicles/vehicle_92crownvic_jeffersoncountysheriffshell");

		TweakVehicle("Base.91blazerpd","skin1", "Vehicles/vehicle_blazer_kspshell");
		TweakVehicle("Base.91blazerpd","skin2", "Vehicles/vehicle_blazer_meadesheriffshell");
		TweakVehicle("Base.91blazerpd","skin3", "Vehicles/vehicle_blazer_rosewoodpoliceshell");
		TweakVehicle("Base.91blazerpd","skin4", "Vehicles/vehicle_blazer_westpointpoliceshell");
		TweakVehicle("Base.91blazerpd","skin5", "Vehicles/vehicle_blazer_muldraughpoliceshell");
		TweakVehicle("Base.91blazerpd","skin6", "Vehicles/vehicle_blazer_riversidepoliceshell");
		TweakVehicle("Base.91blazerpd","skin7", "Vehicles/vehicle_blazer_louisvillepoliceshell");
		TweakVehicle("Base.91blazerpd","skin8", "Vehicles/vehicle_blazer_jeffersoncountypoliceshell");
		TweakVehicle("Base.91blazerpd","skin9", "Vehicles/vehicle_blazer_jeffersoncountysheriffshell");

		TweakVehicle("Base.87capricePD","skin1", "Vehicles/vehicle_87caprice_kspshell");
		TweakVehicle("Base.87capricePD","skin2", "Vehicles/vehicle_87caprice_meadesheriffshell");
		TweakVehicle("Base.87capricePD","skin3", "Vehicles/vehicle_87caprice_rosewoodpoliceshell");
		TweakVehicle("Base.87capricePD","skin4", "Vehicles/vehicle_87caprice_westpointpoliceshell");
		TweakVehicle("Base.87capricePD","skin5", "Vehicles/vehicle_87caprice_muldraughpoliceshell");
		TweakVehicle("Base.87capricePD","skin6", "Vehicles/vehicle_87caprice_riversidepoliceshell");
		TweakVehicle("Base.87capricePD","skin7", "Vehicles/vehicle_87caprice_louisvillepoliceshell");
		TweakVehicle("Base.87capricePD","skin8", "Vehicles/vehicle_87caprice_jeffersonpoliceshell");
		TweakVehicle("Base.87capricePD","skin9", "Vehicles/vehicle_87caprice_jeffersonsheriffshell");

		TweakVehicle("Base.80f350ambulance","skin1", "Vehicles/vehicle_80f350_meadecountymbulanceshell");
		TweakVehicle("Base.80f350ambulance","skin2", "Vehicles/vehicle_80f350_louisvilleambulanceshell");
		TweakVehicle("Base.80f350ambulance","skin3", "Vehicles/vehicle_80f350_jeffersoncountyambulanceshell");

		TweakVehicle("Base.86econolineambulance","skin1", "Vehicles/vehicle_86econoline_meadecountyambulanceshell");
		TweakVehicle("Base.86econolineambulance","skin2", "Vehicles/vehicle_86econoline_louisvilleambulanceshell");
		TweakVehicle("Base.86econolineambulance","skin3", "Vehicles/vehicle_86econoline_jeffersoncountyambulanceshell");

		TweakVehicle("Base.firepumper","skin1", "Vehicles/vehicle_firepumper_rosewood");
		TweakVehicle("Base.firepumper","skin2", "Vehicles/vehicle_firepumper_meade");
		TweakVehicle("Base.firepumper","skin3", "Vehicles/vehicle_firepumper_louisville");

		TweakVehicle("Base.87c10fire","skin1", "Vehicles/vehicle_c10_utility_rosewood_fireshell");
		TweakVehicle("Base.87c10fire","skin2", "Vehicles/vehicle_c10_utility_meade_fireshell");
		TweakVehicle("Base.87c10fire","skin3", "Vehicles/vehicle_c10_utility_louisville_fireshell");

		TweakVehicle("Base.92wranglerranger","skin1", "Vehicles/vehicle_92wrangler_stateparkrangershell");
		TweakVehicle("Base.92wranglerranger","skin2", "Vehicles/vehicle_92wrangler_fishandwidlifeshell");
		TweakVehicle("Base.92wranglerranger","skin3", "Vehicles/vehicle_92wrangler_nationalparkserviceshell");

		TweakVehicle("Base.85vicranger","skin1", "Vehicles/vehicle_85crownvic_nationalparkserviceshell");
		TweakVehicle("Base.85vicranger","skin2", "Vehicles/vehicle_85crownvic_fishandwildlifeshell");
		TweakVehicle("Base.85vicranger","skin3", "Vehicles/vehicle_85crownvic_stateparkrangershell");

		if getActivatedMods():contains("RavenCreek") then

			TweakVehicle("Base.85vicsheriff","skin10", "Vehicles/vehicle_85crownvic_ravencreekpoliceshell");
			TweakVehicle("Base.92crownvicPD","skin10", "Vehicles/vehicle_92crownvic_ravencreekpoliceshell");
			TweakVehicle("Base.91blazerpd","skin10", "Vehicles/vehicle_blazer_ravencreekpoliceshell");
			TweakVehicle("Base.87capricePD","skin10", "Vehicles/vehicle_87caprice_ravencreekpoliceshell");
			TweakVehicle("Base.87c10fire","skin4", "Vehicles/vehicle_c10_utility_ravencreek_fireshell");
			TweakVehicle("Base.firepumper","skin4", "Vehicles/vehicle_firepumper_ravencreek");
			TweakVehicle("Base.86econolineambulance","skin4", "Vehicles/vehicle_86econoline_ravencreekambulanceshell");
			TweakVehicle("Base.80f350ambulance","skin4", "Vehicles/vehicle_80f350_ravencreekmbulanceshell");

		end
	end

	if getActivatedMods():contains("VVehicleEnhancer") then

		TweakVehicle("Base.CarLightsPolice","skin1", "Vehicles/vve/vehicle_kentuckystate_vve");
		TweakVehicle("Base.CarLightsPolice","skin2", "Vehicles/vve/vehicle_meadesheriff_vve");
		TweakVehicle("Base.CarLightsPolice","skin3", "Vehicles/vve/vehicle_rosewoodpolice_vve");
		TweakVehicle("Base.CarLightsPolice","skin4", "Vehicles/vve/vehicle_westpointpolice_vve");
		TweakVehicle("Base.CarLightsPolice","skin5", "Vehicles/vve/vehicle_muldraughpolice_vve");
		TweakVehicle("Base.CarLightsPolice","skin6", "Vehicles/vve/vehicle_riversidepolice_vve");
		TweakVehicle("Base.CarLightsPolice","skin7", "Vehicles/vve/vehicle_louisvillepolice_vve");
		TweakVehicle("Base.CarLightsPolice","skin8", "Vehicles/vve/vehicle_jeffersonpolice_vve");
		TweakVehicle("Base.CarLightsPolice","skin9", "Vehicles/vve/vehicle_jeffersonsheriff_vve");

		TweakVehicle("Base.CarLightsSheriff","skin1", "Vehicles/vve/vehicle_kentuckystate_vve");
		TweakVehicle("Base.CarLightsSheriff","skin2", "Vehicles/vve/vehicle_meadesheriff_vve");
		TweakVehicle("Base.CarLightsSheriff","skin3", "Vehicles/vve/vehicle_rosewoodpolice_vve");
		TweakVehicle("Base.CarLightsSheriff","skin4", "Vehicles/vve/vehicle_westpointpolice_vve");
		TweakVehicle("Base.CarLightsSheriff","skin5", "Vehicles/vve/vehicle_muldraughpolice_vve");
		TweakVehicle("Base.CarLightsSheriff","skin6", "Vehicles/vve/vehicle_riversidepolice_vve");
		TweakVehicle("Base.CarLightsSheriff","skin7", "Vehicles/vve/vehicle_louisvillepolice_vve");
		TweakVehicle("Base.CarLightsSheriff","skin8", "Vehicles/vve/vehicle_jeffersonpolice_vve");
		TweakVehicle("Base.CarLightsSheriff","skin9", "Vehicles/vve/vehicle_jeffersonsheriff_vve");

		TweakVehicle("Base.CarLightsStatepolice","skin1", "Vehicles/vve/vehicle_kentuckystate_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin2", "Vehicles/vve/vehicle_meadesheriff_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin3", "Vehicles/vve/vehicle_rosewoodpolice_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin4", "Vehicles/vve/vehicle_westpointpolice_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin5", "Vehicles/vve/vehicle_muldraughpolice_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin6", "Vehicles/vve/vehicle_riversidepolice_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin7", "Vehicles/vve/vehicle_louisvillepolice_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin8", "Vehicles/vve/vehicle_jeffersonpolice_vve");
		TweakVehicle("Base.CarLightsStatepolice","skin9", "Vehicles/vve/vehicle_jeffersonsheriff_vve");

		TweakVehicle("Base.PickUpVanLightsPolice","skin1", "Vehicles/vve/vehicle_pickup_ksp_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin2", "Vehicles/vve/vehicle_pickup_meadesheriff_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin3", "Vehicles/vve/vehicle_pickup_rosewoodsheriff_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin4", "Vehicles/vve/vehicle_pickup_westpointpolice_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin5", "Vehicles/vve/vehicle_pickup_muldraughpolice_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin6", "Vehicles/vve/vehicle_pickup_riversidepolice_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin7", "Vehicles/vve/vehicle_pickup_louisvillepolice_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin8", "Vehicles/vve/vehicle_pickup_jeffersonpolice_vve");
		TweakVehicle("Base.PickUpVanLightsPolice","skin9", "Vehicles/vve/vehicle_pickup_jeffersonsheriff_vve");

		TweakVehicle("Base.VanAmbulance","skin1", "Vehicles/vve/vehicle_van_meadecountyambulance_vve");
		TweakVehicle("Base.VanAmbulance","skin2", "Vehicles/vve/vehicle_van_louisvilleambulance_vve");
		TweakVehicle("Base.VanAmbulance","skin3", "Vehicles/vve/vehicle_van_jeffersoncountyambulance_vve");

		TweakVehicle("Base.PickUpTruckLightsFire","skin1", "Vehicles/vve/vehicle_pickupfireshell_rosewood_vve");
		TweakVehicle("Base.PickUpTruckLightsFire","skin2", "Vehicles/vve/vehicle_pickupfireshell_meade_vve");
		TweakVehicle("Base.PickUpTruckLightsFire","skin3", "Vehicles/vve/vehicle_pickupfireshell_louisville_vve");

		TweakVehicle("Base.PickUpVanLightsFire","skin1", "Vehicles/vve/vehicle_pickupfireshell_rosewood_vve");
		TweakVehicle("Base.PickUpVanLightsFire","skin2", "Vehicles/vve/vehicle_pickupfireshell_meade_vve");
		TweakVehicle("Base.PickUpVanLightsFire","skin3", "Vehicles/vve/vehicle_pickupfireshell_louisville_vve");

		TweakVehicle("Base.CarLights","skin1", "Vehicles/vve/vehicle_carnormal_stateparkranger_vve");
		TweakVehicle("Base.CarLights","skin2", "Vehicles/vve/vehicle_carnormal_fishandwildlife_vve");
		TweakVehicle("Base.CarLights","skin3", "Vehicles/vve/vehicle_carnormal_nationalparkservice_vve");

		--TweakVehicle("Base.StepVanMail","skin1", "Vehicles/vve/vehicle_stepvan_uspsmailshell_vve");
		TweakVehicle("Base.StepVanMail","skin1", "Vehicles/vehicle_stepvan_uspsmailshell");

		TweakVehicle("Base.VanSpecial","skin1", "Vehicles/vve/vehicle_van_uspsmailvan_vve");

	end
end