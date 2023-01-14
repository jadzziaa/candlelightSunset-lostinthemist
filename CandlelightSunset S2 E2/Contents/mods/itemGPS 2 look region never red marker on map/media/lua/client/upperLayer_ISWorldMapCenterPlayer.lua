--require "ISUI/ISPanelJoypad"
--require "ISUI/Maps/ISMap"
--require "ISUI/Maps/ISWorldMapSymbols"

require "ISUI/Maps/ISWorldMap"

local upperLayer = {}
upperLayer.ISWorldMap = {}

upperLayer.ISWorldMap.onCenterOnPlayer = ISWorldMap.onCenterOnPlayer
function ISWorldMap:onCenterOnPlayer()
    upperLayer.ISWorldMap.onCenterOnPlayer(self)

    if not isAdmin() then
        if  BRIDE_centerPlayer == 0 then
           
            ISWorldMap_instance.mapAPI:setZoom(16) -- 15

            plyX_rand_posMAP = self.character:getX()+ZombRand(-250,250)+ ZombRand(-350,350)+ZombRand(-60,60) --100,100 90
            plyY_rand_posMAP = self.character:getY()+ZombRand(-250,250)+ ZombRand(-350,350)+ZombRand(-60,60) --80,80

            BRIDE_centerPlayer = 1
        end

        self.mapAPI:centerOn(plyX_rand_posMAP, plyY_rand_posMAP)      
    end
end

upperLayer.ISWorldMap.new = ISWorldMap.new
function ISWorldMap:new(x, y, width, height)
    local o = upperLayer.ISWorldMap.new( self, x, y, width, height)
    
    o.beep = 0
    o.showPlayers = false
    return o
end

BRIDE_centerPlayer = 0
local function DEBRIDE()
    if BRIDE_centerPlayer ~= 0 then BRIDE_centerPlayer = 0 end
end

------------------------------------------------------------------------------------------------------------------------
--Events.EveryOneMinute.Add(GPS_autorized)
--Events.EveryTenMinutes.Add(DEBRIDE)
Events.EveryHours.Add(DEBRIDE)
--Events.EveryDays.Add(transmissionEmitteur)
------------------------------------------------------------------------------------------------------------------------