local moodleThresholds =  {}
local stressGenMultipliers =  {}
local baseStressIncrease = nil

local function split(s, sep) --I just copied this from UdderlyEvelyn because I don't understand pattern matching
    if sep == nil then
        sep = "%s"
    end
    local t={}
    for str in string.gmatch(s, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end

local function DGA_Failsafe_Defaults()
    stressGenMultipliers["Hungry"] = 8
    stressGenMultipliers["Thirst"] = 8
    stressGenMultipliers["Bleeding"] = 20
    stressGenMultipliers["Pain"] = 5
    stressGenMultipliers["Injured"] = 8
    stressGenMultipliers["Sick"] = 2
    stressGenMultipliers["Drunk"] = -10
    stressGenMultipliers["Hypothermia"] = 1
    stressGenMultipliers["Hyperthermia"] = 1
    stressGenMultipliers["FoodEaten"] = -2
    stressGenMultipliers["Wet"] = 1
    stressGenMultipliers["Panic"] = 8

    moodleThresholds["Hungry"] = 2
    moodleThresholds["Thirst"] = 2
    moodleThresholds["Bleeding"] = 1
    moodleThresholds["Pain"] = 1
    moodleThresholds["Injured"] = 2
    moodleThresholds["Sick"] = 2
    moodleThresholds["Drunk"] = 1
    moodleThresholds["Hypothermia"] = 2
    moodleThresholds["Hyperthermia"] = 2
    moodleThresholds["FoodEaten"] = 1
    moodleThresholds["Wet"] = 2
    moodleThresholds["Panic"] = 2
end

local function DGA_Init()
    baseStressIncrease = 0.00003 * getGameTime():getMultiplier() * getGameTime():getDeltaMinutesPerDay()
    local sandboxSettings = SandboxVars.DaikonGeneralAnxiety.MoodleList
    if sandboxSettings ~= nil then
        for i, item in ipairs(split(sandboxSettings,";")) do --This gives an array of strings that should be like "Moodle=Lvl:Mult"

            if string.find(item, "=") and string.find(item, ":") then
                local keyAndValues = split(item,"=") --An array that should have "Moodle" at 1, then "Lvl:Mult" at 2

                local values = split(keyAndValues[2],":") --An array that should have "Lvl" at 1, then "Mult" at 2

                if isDebugEnabled() then
                    print("Item:",item)
                    print("Key:",keyAndValues[1],"Values:",keyAndValues[2])
                    print("Value 1:",values[1],"Value 2:",values[2])
                end
                moodleThresholds[keyAndValues[1]] = tonumber(values[1])
                stressGenMultipliers[keyAndValues[1]] = tonumber(values[2])
            end
        end
        print("SETUP COMPLETE, STANDARD")
    else
        DGA_Failsafe_Defaults()
        print("SETUP COMPLETE, FAILSAFE")
    end
    if isDebugEnabled() then
        for k in pairs(moodleThresholds) do
            print(k,moodleThresholds[k],stressGenMultipliers[k])
        end
    end
end


---@param player IsoPlayer
local function DGA_extraAnxiety(player)
    ---@type Stats
    local stats = player:getStats()
    ---@type Moodles
    local moodles = player:getMoodles()

    local totalStressMult = 0
    for k in pairs(moodleThresholds) do
        local moodleLevel = moodles:getMoodleLevel(MoodleType[k])
        if moodleThresholds[k] <= moodleLevel then
            totalStressMult = totalStressMult + stressGenMultipliers[k] * (moodleLevel- moodleThresholds[k])
        end
    end

	if totalStressMult ~= 0 then
		stats:setStress(math.min(math.max(stats:getStress()+totalStressMult*baseStressIncrease,0),1))
	end

end

Events.OnInitGlobalModData.Add(DGA_Init)
Events.OnPlayerUpdate.Add(DGA_extraAnxiety)