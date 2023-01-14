Ladder_SISLadder = ISBuildingObject:derive("Ladder_SISLadder")

function Ladder_SISLadder:create(x, y, z, north, sprite)
    local cell      = getWorld():getCell()
    self.sq         = cell:getGridSquare(x, y, z)
    self.javaObject = IsoThumpable.new(cell, self.sq, sprite, north, self)
    buildUtil.setInfo(self.javaObject, self)
    buildUtil.consumeMaterial(self)
    self.javaObject:setMaxHealth(self:getHealth())
    self.javaObject:setHealth(self.javaObject:getMaxHealth())
    self.javaObject:setBreakSound("BreakObject")
    self.sq:AddSpecialObject(self.javaObject)
    self.javaObject:transmitCompleteItemToServer()
    if self.withFloor then
        local wx, wy, wz
        if north then
            wx = x
            wy = y - 1
            wz = z + 1
        else
            wx = x - 1
            wy = y
            wz = z + 1
        end
        if wz >= 8 then
            return
        end
        local square = cell:getGridSquare(wx, wy, wz)
        if not square then
            square = IsoGridSquare.new(cell, nil, wx, wy, wz)
            cell:ConnectNewSquare(square, false)
        end
        if not square:TreatAsSolidFloor() then
            square:addFloor("carpentry_02_56")
        end
    end
end

function Ladder_SISLadder:removeFromGround(square)
    for i = 0, square:getSpecialObjects():size() do
        local thump = square:getSpecialObjects():get(i)
        if instanceof(thump, "IsoThumpable") then
            square:transmitRemoveItemFromSquare(thump)
        end
    end
end

function Ladder_SISLadder:new(name, sprite, northSprite, _withFloor)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o:init()
    o:setSprite(sprite)
    o:setNorthSprite(northSprite)
    o.name              = name
    o.withFloor         = _withFloor
    o.canBarricade      = false
    o.dismantable       = true
    o.blockAllTheSquare = true
    o.canBeAlwaysPlaced = true
    return o
end

function Ladder_SISLadder:getHealth()
    return 100 + buildUtil.getWoodHealth(self)
end

function Ladder_SISLadder:isValid(square)
    if not ISBuildingObject.isValid(self, square) then
        return false
    end
    if not buildUtil.canBePlace(self, square) then
        return false
    end
    if not square:TreatAsSolidFloor() then
        return false
    end
    if buildUtil.stairIsBlockingPlacement(square, true) then
        return false
    end
    return true
end

function Ladder_SISLadder:render(x, y, z, square)
    ISBuildingObject.render(self, x, y, z, square)
end
