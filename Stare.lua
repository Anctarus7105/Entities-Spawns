local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/ScriptsForMyModes/refs/heads/main/OLDSpawner"))()

local entity = Creator.createEntity({
    CustomName = "Stare", -- Custom name of your entity
    Model = "rbxassetid://11347853954",
    Speed = 0, -- Percentage, 100 = default Rush speed
    DelayTime = 0, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        1, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://11278229112", -- Image1 url
            Image2 = "rbxassetid://11278229112", -- Image2 url
            Shake = false,
            Sound1 = { 
               9116390056, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                5029269312, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Flashing = {
                false, -- Enabled
                Color3.fromRGB(125, 249, 255), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1.5,
                Max = 1,
            },
        },
    },
CustomDialog = {"You died to whom you call Firebrand", "he is fast and has a potential of slaying you.", "hide when this happens!."},  -- Custom death message (can be as long as you want)
})

------------------------

-- Run the created entity
Creator.runEntity(entity)
