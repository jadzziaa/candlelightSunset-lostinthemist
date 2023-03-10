-- by albion#0123
-- seriously, thanks Albion!
local Overrides = {}
--Overrides.tickrate = 150 -- i think this is the same as EveryOneMinute on 1 hour days; you should consider making this a sandbox option

Overrides.zonesGeneric = {
    Rosewood = {x1=7865,x2=9350,y1=11250,y2=13500}, -- important: x2 must be greater than x1, y2 must be greater than y1
    Louisville = {x1=11900,x2=14800,y1=900,y2=2300},
    Jefferson = {x1=11900,x2=14800,y1=2301,y2=6300},
}

Overrides.zonesPolice = { -- separate zones so that we don't have unnecessary loops, since police use a lot more
    Rosewood = Overrides.zonesGeneric.Rosewood,
    Riverside = {x1=3400,x2=7500,y1=5150,y2=6800},
    Muldraugh = {x1=9800,x2=11300,y1=8800,y2=11150},
    WestPoint = {x1=10700,x2=12200,y1=6500,y2=7300},
    JeffersonSD = {{x1=12891,x2=14800,y1=2200,y2=2690},
                   {x1=13771,x2=14800,y1=2691,y2=3440},
                   {x1=13041,x2=14800,y1=3441,y2=6300},},
    JeffersonPD = {{x1=12901,x2=13770,y1=2691,y2=3440},
                   {x1=12901,x2=13040,y1=2691,y2=3865},},
    LouisvillePD = {x1=11900,x2=12900,y1=900,y2=3890},
    KSP = {{x1=12901,x2=14800,y1=900,y2=2199},
           {x1=12200,x2=13040,y1=3891,y2=6700},
           {x1=3500,x2=4800,y1=7100,y2=10900}},
}

function Overrides.getZone(x,y,zones)
    zones = zones or Overrides.zonesGeneric
    for zoneName,zone in pairs(zones) do
        if type(zone[1]) == 'table' then
            for _,subZone in ipairs(zone) do
                if x >= subZone.x1 and x <= subZone.x2 and y >= subZone.y1 and y <= subZone.y2 then
                    return zoneName
                end
            end
        else
            if x >= zone.x1 and x <= zone.x2 and y >= zone.y1 and y <= zone.y2 then
                return zoneName
            end
        end
    end
    return 'Meade' -- default value if we don't find a valid zone
end

function Overrides.setSandboxVariables()
    Overrides.tickrate = SandboxVars.STR.TickrateOverrides
    if getActivatedMods():contains('RavenCreek') then
        Overrides.zonesGeneric.RavenCreek = {x1=3000,x2=5500,y1=11001,y2=13500}
        Overrides.zonesPolice.RavenCreek = Overrides.zonesGeneric.RavenCreek
    else
        Overrides.zonesGeneric.RavenCreek = nil
    end
end
Events.OnInitGlobalModData.Add(Overrides.setSandboxVariables)

return Overrides