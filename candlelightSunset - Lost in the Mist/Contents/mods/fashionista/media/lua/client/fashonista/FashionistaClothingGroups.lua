--[[
    Here we create the clothing "groups"
    Each group will create a dropdown in the character creation screen
    You can combine multiple body locations into a single group (this is used where groups are mutally exclusive anyways so are practically the same location)
    You can also exclude keywords from a group (this used used, for example, to remove any body armor from the "TorsoExtra" group)
]]

FashionistaClothingGroups = FashionistaClothingGroups or {
    -- Tatoos from Ellies Tattoo Parlor
    Face_Tattoo = {
        locations = { "Face_Tattoo" },
    },
    UpperBody_Tattoo = {
        locations = { "UpperBody_Tattoo" },
    },
    LowerBody_Tattoo = {
        locations = { "LowerBody_Tattoo" },
    },
    Back_Tattoo = {
        locations = { "Back_Tattoo" },
    },
    LeftArm_Tattoo = {
        locations = { "LeftArm_Tattoo" },
    },
    RightArm_Tattoo = {
        locations = { "RightArm_Tattoo" },
    },
    LeftLeg_Tattoo = {
        locations = { "LeftLeg_Tattoo" },
    },
    RightLeg_Tattoo = {
        locations = { "RightLeg_Tattoo" },
    },

    -- Headwear
    Mask = {
        locations = { "Mask", "MaskEyes" },
        excludedKeywords = { "gas mask", "welder", "welding"}
    },
    Hat = {
        locations = { "Hat" },
        excludedKeywords = { "helmet", "tactical" }
    },

    -- Shirts
    TankTop = {
        locations = { "TankTop" },
    },
    Tshirt = {
        locations = { "Tshirt" },
    },
    ShortSleeveShirt = {
        locations = { "ShortSleeveShirt" },
    },
    Shirt = {
        locations = { "Shirt" },
    },

    -- Sweater
    Sweater = {
        locations = { "Sweater", "SweaterHat" }
    },

    -- Vests e.c.t.
    TorsoExtra = {
        locations = { "TorsoExtra" },
        excludedKeywords = { "belt", "tactical", "bulletproof", "armor", "armour", "hunting", "rig", "plate" }
    },

    -- Jacket
    Jacket = {
        locations = { "Jacket", "FullSuit", "BathRobe" }
    },

    -- Dress
    Dress = {
        locations = { "Dress" }
    },

    -- Pants
    Pants = {
        locations = { "Pants", "Skirt" }
    },

    -- Socks/Shoes
    Socks = {
        locations = { "Socks" }
    },
    Shoes = {
        locations = { "Shoes" }
    },

    -- Accessories
    Neck = {
        locations = { "Neck" },
    },
    LeftEye = {
        locations = { "LeftEye" },
    },
    RightEye = {
        locations = { "RightEye" },
    },
    Eyes = {
        locations = { "Eyes" },
    },
    Scarf = {
        locations = { "Scarf" },
    },
    Hands = {
        locations = { "Hands" },
    },
    LeftWrist = {
        locations = { "LeftWrist" },
    },
    RightWrist = {
        locations = { "RightWrist" },
    },

    -- Makeup
    MakeUp_FullFace = {
        locations = { "MakeUp_FullFace" },
        excludedKeywords = { "Green Camouflage" }
    },
    MakeUp_Eyes = {
        locations = { "MakeUp_Eyes" },
    },
    MakeUp_EyesShadow = {
        locations = { "MakeUp_EyesShadow" },
    },
    MakeUp_Lips = {
        locations = { "MakeUp_Lips" },
    },

    -- Jewellery
    BellyButton = {
        locations = { "BellyButton" },
    },
    Ears = {
        locations = { "Ears" },
        excludedKeywords = { "helmet", "headset" } -- ensure no brita armor stuff shows up
    },
    EarTop = {
        locations = { "EarTop" },
        excludedKeywords = { "helmet", "headset" } -- ensure no brita armor stuff shows up
    },
    Necklace = {
        locations = { "Necklace" },
    },
    Necklace_Long = {
        locations = { "Necklace_Long" },
    },
    Right_MiddleFinger = {
        locations = { "Right_MiddleFinger" },
    },
    Right_RingFinger = {
        locations = { "Right_RingFinger" },
    },
    Left_MiddleFinger = {
        locations = { "Left_MiddleFinger" },
    },
    Left_RingFinger = {
        locations = { "Left_RingFinger" },
    },

    -- Underwear
    Underwear = {
        locations = { "Underwear" },
    },
    UnderwearBottom = {
        locations = { "UnderwearBottom" },
    },
    UnderwearTop = {
        locations = { "UnderwearTop" },
    },
    UnderwearExtra1 = {
        locations = { "UnderwearExtra1" },
    },
    UnderwearExtra2 = {
        locations = { "UnderwearExtra2" },
    },
}