require "VFETweaker";
-- VFETweaker used with the permission of Bikini, aka Mr Crabby Pants, aka The Crab Man. It is his code. thank you sir.

-- Allow attachments for GWP added weapons

Events.OnGameStart.Add(function()

-- Scopes/CQB
VFETweaks:addToMountOn("Base.x2Scope", {
    "GWP.PSG1", 
    "GWP.Model44",
    "GWP.HKG3",
    "GWP.Mini30",
    "GWP.Marlin1894Custom357",
    "GWP.Marlin1894Custom38"
    });
    
VFETweaks:addToMountOn("Base.x4Scope", {
    "GWP.PSG1", 
    "GWP.Model44",
    "GWP.HKG3",
    "GWP.Winchester1894",
    "GWP.BigBoy45ACP",
    "GWP.Mini30",
    "GWP.Marlin1894Custom357", 
    "GWP.Marlin1894Custom38"  
    });

VFETweaks:addToMountOn("Base.x8Scope", {
    "GWP.PSG1",
    "GWP.Mini30"    
    });

VFETweaks:addToMountOn("Base.RedDot", {
    "GWP.Model44",
    "GWP.HKG3",
    "GWP.Mini30",
    "GWP.Marlin1894Custom357",
    "GWP.Marlin1894Custom38",
    "GWP.M1carbine9mm"    
    });    


-- Parts

VFETweaks:addToMountOn("Base.Sling", {
    "GWP.PSG1", 
    "GWP.Model44",
    "GWP.HKG3",
    "GWP.Winchester1894",
    "GWP.BigBoy45ACP",
    "GWP.R870Police",
    "GWP.DeLisleCarbine",
    "GWP.Mini30",
    "GWP.Marlin1894Custom357",
    "GWP.Marlin1894Custom38",
    "GWP.M1carbine9mm",
    "GWP.NorincoMak90"
    });
    
VFETweaks:addToMountOn("Base.RecoilPad", {
    "GWP.PSG1", 
    "GWP.HKG3",
    "GWP.Mini30",
    "GWP.Marlin1894Custom357",
    "GWP.Marlin1894Custom38",
    "GWP.M1carbine9mm"    
    });

VFETweaks:addToMountOn("Base.Bipod", {
    "GWP.PSG1"  
    });
    
VFETweaks:addToMountOn("Base.Laser", {
    "GWP.PSG1", 
    "GWP.HKG3"    
    });  

VFETweaks:addToMountOn("Base.ShellHolder", {
    "GWP.R870Police",
    "GWP.Winchester1887"     
    });    
 

VFETweaks:addToMountOn("Base.ChokeTubeFull", {
    "GWP.R870Police"  
    }); 

VFETweaks:addToMountOn("Base.ChokeTubeImproved", {
    "GWP.R870Police"  
    }); 

VFETweaks:addToMountOn("Base.AmmoStraps", {
    "GWP.Winchester1894",
    "GWP.BigBoy45ACP", 
    "GWP.Model44",
    "GWP.Marlin1894Custom357",
    "GWP.Marlin1894Custom38"
    });      
end);    