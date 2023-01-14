-- UdderlyAttachments_0_Database.lua
-- 8/13/22 to 8/25/22 UdderlyEvelyn
print("[UdderlyAttachments] Initializing Database..")	
UA = UA or {}
UA.GunAddingFunctions = UA.GunAddingFunctions or {}
UA.AttachmentAddingFunctions = UA.AttachmentAddingFunctions or {}
UA.AssignmentFunctions = UA.AssignmentFunctions or {}

--Guns, categorized in subtables as a makeshift database..
--Hierarchy is Guns->Type->Category (Caliber/Barrel Length)->Gun
--Only Shotguns use barrel length, everything else is by caliber - these are factors by which attachments vary.
UA.Guns= 
{
	Pistols= --RedDot, Laser, GunLight, OilFilterSuppressor2
	{
		Bullets22={},
		Bullets223={},
		Bullets308={},
		Bullets38={}, 
		Bullets44={ "Base.Pistol3" }, --Pistol 3 == D-E Pistol
		Bullets45={ "Base.Pistol2" }, --Pistol 2 == M1911
		Bullets556={},
		Bullets762={},
		Bullets9={ "Base.Tec9", "Base.Pistol", "Base.Glock", "Base.P229" }, --Pistol = M9
	},
	Revolvers=
	{
		Bullets22={},
		Bullets223={},
		Bullets308={},
		Bullets38={ "Base.Revolver_Short" }, --Revolver Short == M10-5 Revolver
		Bullets44={ "Base.Revolver_Long" }, --Revolver Long == Magnum
		Bullets45={ "Base.Revolver" }, --Revolver = M625 Revolver
		Bullets556={},
		Bullets762={},
		Bullets9={},
	},
	SARs= --Bayonnet, x2Scope, x4Scope, x8Scope, IronSight, RecoilPad, RedDot, Bipod, AmmoStraps
	{
		Bullets22={ "Base.1022" }, --1022 == R1022 Rifle
		Bullets223={ "Base.Mini14", "Base.Mini14Folded" }, --Mini14 == MR223 Rifle
		Bullets308={ "Base.AssaultRifle2", "Base.HuntingRifle" }, --Assault Rifle 2 == M14 Rifle, HuntingRifle == MSR788 Rifle
		Bullets38={},
		Bullets44={},
		Bullets45={},
		Bullets556={},
		Bullets762={},
		Bullets9={},
	},
	SMGs= --RedDot, Laser
	{
		Bullets22={},
		Bullets223={},
		Bullets308={},
		Bullets38={},
		Bullets44={},
		Bullets45={},
		Bullets556={},
		Bullets762={},
		Bullets9={ "Base.MP5", "Base.MP5SD" },
	},
	Shotguns= --ChokeTubeFull, ChokeTubeImproved, ShellHolder
	{
		NoStock={ "Base.ShotgunSawnoffNoStock" }, --ShotgunSawnoffNoStock == Sawed-Off M500 Shotgun
		DoubleNoStock={},
		ShortBarrel={ "Base.ShotgunSawnoff" }, --ShotgunSawnoff == Sawn-Off M500 Shotgun
		DoubleShortBarrel={ "Base.DoubleBarrelShotgunSawnoff" },
		LongBarrel={ "Base.Shotgun" }, --Shotgun == M500 Shotgun
		DoubleLongBarrel={ "Base.DoubleBarrelShotgun" },
		Military={ "Base.Spas12", "Base.Spas12Folded" },
	},
	BoltActions= --Bayonnet, x2Scope, x4Scope, x8Scope, IronSight, RedDot, RecoilPad, Laser, OilFilterSuppressor
	{
		Bullets22 = {},
		Bullets223={ "Base.VarmintRifle" }, --Varmint Rifle == R700 Rifle
		Bullets308 = {},
		Bullets38={ "Base.LeverRifle" }, --Lever Rifle = W1866 Rifle
		Bullets44={},
		Bullets45={},
		Bullets556={},
		Bullets762={ "Base.SKS" },
		Bullets9={},
	},
	ARs= --x2Scope, x4Scope, x8Scope, IronSight, RedDot, RecoilPad, Laser, OilFilterSuppressor, Coupled556/Coupled762
	{
		Bullets22={},
		Bullets223={},
		Bullets308={},
		Bullets38={},
		Bullets44={},
		Bullets45={},
		Bullets556={ "Base.CAR15", "Base.CAR15D", "Base.AssaultRifle" }, --Assault Rifle == M16 Assault Rifle
		Bullets762={ "Base.AK47", "Base.AK47Folded" },
		Bullets9={},
	},
	LMGs= --x2Scope, x4Scope, x8Scope, IronSight, RedDot, RecoilPad, Laser, Bipod
	{
		Bullets22={},
		Bullets223={},
		Bullets308={},
		Bullets38={},
		Bullets44={},
		Bullets45={},
		Bullets556={},
		Bullets762={},
		Bullets9={},
	},
}

UA.Attachments = 
{ 
	--Things commented are the contents in VFE, we etrapolate that guns in the same type and similar should have access in any caliber.
	x2Scope={ "Base.x2Scope", 
		{
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308, --AssaultRifle2 (M14)
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, --Mini14 (MR223)
			UA.Guns.SARs.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15, CAR15D
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
		}, {}, {} },
	x4Scope={ "Base.x4Scope", 
		{			
			UA.Guns.BoltActions.Bullets22, --1022
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308, --AssaultRifle2 (M14)
			UA.Guns.BoltActions.Bullets38, --LeverRifle (W1866)
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, --Mini14 (MR223)
			UA.Guns.SARs.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,	
			--Why would you be able to mount a 2x and 8x but not a 4x? Let's expand that.
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15, CAR15D
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
		}, {}, {} }, 
	x8Scope={ "Base.x8Scope", 
		{
			UA.Guns.BoltActions.Bullets22, --1022
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308, --AssaultRifle2 (M14)
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, --Mini14 (MR223)
			UA.Guns.SARs.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556,
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
		}, {}, {} }, 
	IronSight={ "Base.IronSight", 
		{
			UA.Guns.BoltActions.Bullets22, --1022
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762,
			UA.Guns.BoltActions.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			--Almost any gun can use an iron sight, not sure why we're limiting this, so let's expand it.
			--Pistols, Revolvers, SMGs, ARs, LMGs.. Shotguns?			
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44,
			UA.Guns.Pistols.Bullets45,
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9,
			UA.Guns.Revolvers.Bullets22,
			UA.Guns.Revolvers.Bullets223,
			UA.Guns.Revolvers.Bullets308,
			UA.Guns.Revolvers.Bullets38,
			UA.Guns.Revolvers.Bullets44,
			UA.Guns.Revolvers.Bullets45,
			UA.Guns.Revolvers.Bullets556,
			UA.Guns.Revolvers.Bullets762,
			UA.Guns.Revolvers.Bullets9,			
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9,
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556,
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.DoubleShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
			UA.Guns.Shotguns.DoubleLongBarrel,
			UA.Guns.Shotguns.Military,
		}, {}, {} }, 
	RedDot={ "Base.RedDot", 
		{ 			
			UA.Guns.BoltActions.Bullets22, --1022
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308, --AssaultRifle2 (M14)
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762,
			UA.Guns.BoltActions.Bullets9,			
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, --Mini14 (MR223)
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --Pistol3 (D-E)
			UA.Guns.Pistols.Bullets45,
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9,
			UA.Guns.Revolvers.Bullets22,
			UA.Guns.Revolvers.Bullets223,
			UA.Guns.Revolvers.Bullets308,
			UA.Guns.Revolvers.Bullets38,
			UA.Guns.Revolvers.Bullets44, --Revoler_Long (Magnum)
			UA.Guns.Revolvers.Bullets45,
			UA.Guns.Revolvers.Bullets556,
			UA.Guns.Revolvers.Bullets762,
			UA.Guns.Revolvers.Bullets9,			
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9, --MP5, MP5SD
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15, CAR15D
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			--Again, almost anything can use a RedDot, and this was already more pervasive, let's extend it to the last two types.
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.DoubleShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
			UA.Guns.Shotguns.DoubleLongBarrel,
			UA.Guns.Shotguns.Military,
		}, {}, {} },
	Sling={ "Base.Sling", 
		{
			UA.Guns.BoltActions.Bullets22, --1022
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38, --LeverRifle (W1866)
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,			
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, --Mini14 (MR223)
			UA.Guns.SARs.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15, CAR15D
			UA.Guns.ARs.Bullets762, --AK47
			UA.Guns.ARs.Bullets9,
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
			UA.Guns.Shotguns.Military, --Spas12
			--This should really go on anything with potential to attach to two points comfortably that is long enough to warrant it.
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9,			
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
		}, {}, {} }, 
	ShellHolder={ "Base.ShellHolder", 
		{
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.DoubleShortBarrel,
			UA.Guns.Shotguns.LongBarrel,		
			UA.Guns.Shotguns.DoubleLongBarrel,
		}, {}, {} }, 
	AmmoStraps={ "Base.AmmoStraps", 
		{
			UA.Guns.BoltActions.Bullets22, 
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,			
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
		}, {}, {} }, 
	--Expanding the coupled mags is a thing to think about due to the existence of drum magazines - 
	--you can tape them together in most cases, but the model is two regular mags.
	--I think you can specify model overrides per gun, need to look into that before expanding this.
	Coupled556={ "Base.Coupled556", 
		{
			UA.Guns.ARs.Bullets556,
		}, {}, {} }, 
	Coupled762={ "Base.Coupled762", 
		{
			UA.Guns.ARs.Bullets762,		
		}, {}, {} },
	RecoilPad={ "Base.RecoilPad", 
		{
			UA.Guns.BoltActions.Bullets22, --1022
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308, --AssaultRifle2 (M14)
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,			
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, --Mini14 (MR223)
			UA.Guns.SARs.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16)
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			--Makes sense to extend this to shotguns and LMGs..
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
			UA.Guns.Shotguns.Military, --Spas12
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
		}, {}, {} },
	Bayonnet = { "Base.Bayonnet", 
		{
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,			
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,		
			--Makes sense to extend this to ARs since, e.g., the AK47 often had a bayonnet.
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556,
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
		}, {}, {} }, --Unmodified by VFE
	GunLight = { "Base.GunLight", 
		{ 
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --X
			UA.Guns.Pistols.Bullets45, --X
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9, --X
			--I see no reason why we can't put a light on everything.
			UA.Guns.BoltActions.Bullets22, 
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762,
			UA.Guns.BoltActions.Bullets9,			
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, 
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.Revolvers.Bullets22,
			UA.Guns.Revolvers.Bullets223,
			UA.Guns.Revolvers.Bullets308,
			UA.Guns.Revolvers.Bullets38,
			UA.Guns.Revolvers.Bullets44,
			UA.Guns.Revolvers.Bullets45,
			UA.Guns.Revolvers.Bullets556,
			UA.Guns.Revolvers.Bullets762,
			UA.Guns.Revolvers.Bullets9,			
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9,
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556,
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.DoubleShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
			UA.Guns.Shotguns.DoubleLongBarrel,
			UA.Guns.Shotguns.Military,
		}, {}, 
		--Exceptions
		{
			"Base.CAR15D", --Integrated gun light.
		} }, --Unmodified by VFE
	Bipod={ "Base.Bipod", 
		{
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223, --VarmintRifle (R700)
			UA.Guns.BoltActions.Bullets308, --HuntingRifle (MSR788)
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,			
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308, --AssaultRifle2 (M14)
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556,
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			--No reason bipods shouldn't be availabe on SARs, too.
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,	
		}, {}, {} }, 
	Laser={ "Base.Laser", 
		{ 
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223, --Mini14 (MR223)
			UA.Guns.SARs.Bullets308, --AssaultRifle2 (M14)
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --Pistol3 (D-E)
			UA.Guns.Pistols.Bullets45, --Pistol2 (M1911)
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9, --Pistol (M9), Glock	
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9, --MP5, MP5SD
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15, CAR15D
			UA.Guns.ARs.Bullets762,
			UA.Guns.ARs.Bullets9,			
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.DoubleShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
			UA.Guns.Shotguns.DoubleLongBarrel,
			UA.Guns.Shotguns.Military, --Spas12
			--No reason we can't have a laser on everything, really.
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762,
			UA.Guns.BoltActions.Bullets9,	
			UA.Guns.Revolvers.Bullets22,
			UA.Guns.Revolvers.Bullets223,
			UA.Guns.Revolvers.Bullets308,
			UA.Guns.Revolvers.Bullets38,
			UA.Guns.Revolvers.Bullets44,
			UA.Guns.Revolvers.Bullets45,
			UA.Guns.Revolvers.Bullets556,
			UA.Guns.Revolvers.Bullets762,
			UA.Guns.Revolvers.Bullets9,		
		}, {}, {} },
	ChokeTubeFull={ "Base.ChokeTubeFull", 
		{
			UA.Guns.Shotguns.ShortStock,
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
		}, {}, {} }, 
	ChokeTubeImproved={ "Base.ChokeTubeImproved", 
		{
			UA.Guns.Shotguns.ShortStock,
			UA.Guns.Shotguns.ShortBarrel,
			UA.Guns.Shotguns.LongBarrel,
		}, {}, {} },
	OilFilterSuppressor={ "Base.OilFilterSuppressor", --For Rifles
		{	
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,				
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15
			UA.Guns.ARs.Bullets762, --AK47
			UA.Guns.ARs.Bullets9,	
			--Suppressors also apply to LMGs (big ARs basically), SARs, and SMGs.
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9, 
		}, {}, 
		--Exceptions
		{
			"Base.CAR15D", --Already suppressed..
			"Base.MP5SD", --Already suppressed..
		} }, 
	OilFilterSuppressor2={ "Base.OilFilterSuppressor2", --For Pistols
		{
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --Pistol2 (M1911)
			UA.Guns.Pistols.Bullets45,
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9, --Pistol (M9)
		}, {}, {} }, 
	FiberglassStock={ "Base.FiberglassStock", 
		{}, {
			"Base.SKS",
			"Base.VarmintRifle", --R700
			"Base.HuntingRifle", --MSR788
			"Base.Shotgun", --M500
			"Base.ShotgunSawnoff", --M500 Sawed-off
			"Base.DoubleBarrelShotgun",
			"Base.DoubleBarrelShotgunSawnoff",
		}, {} },
	Silencer={ "ImprovisedSilencers.Silencer",
		{
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,				
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15
			UA.Guns.ARs.Bullets762, --AK47
			UA.Guns.ARs.Bullets9,	
			--Suppressors also apply to LMGs (big ARs basically), SARs, and SMGs.
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9, 
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --Pistol2 (M1911)
			UA.Guns.Pistols.Bullets45,
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9, --Pistol (M9)
		}, {}, {} },
	MetalPipeSilencer={ "ImprovisedSilencers.MetalPipeSilencer",
		{
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,				
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15
			UA.Guns.ARs.Bullets762, --AK47
			UA.Guns.ARs.Bullets9,	
			--Suppressors also apply to LMGs (big ARs basically), SARs, and SMGs.
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9, 
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --Pistol2 (M1911)
			UA.Guns.Pistols.Bullets45,
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9, --Pistol (M9)
		}, {}, {} },
	TorchSilencer={ "ImprovisedSilencers.TorchSilencer",
		{
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,				
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15
			UA.Guns.ARs.Bullets762, --AK47
			UA.Guns.ARs.Bullets9,	
			--Suppressors also apply to LMGs (big ARs basically), SARs, and SMGs.
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9, 
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --Pistol2 (M1911)
			UA.Guns.Pistols.Bullets45,
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9, --Pistol (M9)
		}, {}, {} },
	WaterBottleSilencer={ "ImprovisedSilencers.WaterBottleSilencer",
		{
			UA.Guns.BoltActions.Bullets22,
			UA.Guns.BoltActions.Bullets223,
			UA.Guns.BoltActions.Bullets308,
			UA.Guns.BoltActions.Bullets38,
			UA.Guns.BoltActions.Bullets44,
			UA.Guns.BoltActions.Bullets45,
			UA.Guns.BoltActions.Bullets556,
			UA.Guns.BoltActions.Bullets762, --SKS
			UA.Guns.BoltActions.Bullets9,				
			UA.Guns.ARs.Bullets22,
			UA.Guns.ARs.Bullets223,
			UA.Guns.ARs.Bullets308,
			UA.Guns.ARs.Bullets38,
			UA.Guns.ARs.Bullets44,
			UA.Guns.ARs.Bullets45,
			UA.Guns.ARs.Bullets556, --AssaultRifle (M16), CAR15
			UA.Guns.ARs.Bullets762, --AK47
			UA.Guns.ARs.Bullets9,	
			--Suppressors also apply to LMGs (big ARs basically), SARs, and SMGs.
			UA.Guns.LMGs.Bullets22, --lol
			UA.Guns.LMGs.Bullets223,
			UA.Guns.LMGs.Bullets308,
			UA.Guns.LMGs.Bullets38,
			UA.Guns.LMGs.Bullets44,
			UA.Guns.LMGs.Bullets45,
			UA.Guns.LMGs.Bullets556,
			UA.Guns.LMGs.Bullets762,
			UA.Guns.LMGs.Bullets9,
			UA.Guns.SARs.Bullets22,
			UA.Guns.SARs.Bullets223,
			UA.Guns.SARs.Bullets308,
			UA.Guns.SARs.Bullets38,
			UA.Guns.SARs.Bullets44,
			UA.Guns.SARs.Bullets45,
			UA.Guns.SARs.Bullets556,
			UA.Guns.SARs.Bullets762,
			UA.Guns.SARs.Bullets9,
			UA.Guns.SMGs.Bullets22,
			UA.Guns.SMGs.Bullets223,
			UA.Guns.SMGs.Bullets308,
			UA.Guns.SMGs.Bullets38,
			UA.Guns.SMGs.Bullets44,
			UA.Guns.SMGs.Bullets45,
			UA.Guns.SMGs.Bullets556,
			UA.Guns.SMGs.Bullets762,
			UA.Guns.SMGs.Bullets9, 
			UA.Guns.Pistols.Bullets22,
			UA.Guns.Pistols.Bullets223,
			UA.Guns.Pistols.Bullets308,
			UA.Guns.Pistols.Bullets38,
			UA.Guns.Pistols.Bullets44, --Pistol2 (M1911)
			UA.Guns.Pistols.Bullets45,
			UA.Guns.Pistols.Bullets556,
			UA.Guns.Pistols.Bullets762,
			UA.Guns.Pistols.Bullets9, --Pistol (M9)
		}, {}, {} },
}