local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/ScriptsForMyModes/refs/heads/main/OLDSpawner"))()

local entity = Creator.createEntity({
    CustomName = "Question", -- Custom name of your entity
    Model = "https://github.com/PABMAXICHAC/doors-monsters-models/raw/main/theentityinquestion.rbxm",
    Speed = 295, -- Percentage, 100 = default Rush speed
    DelayTime = 0, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        1.3, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 10,
        WaitTime = 0.4,
    },
    CamShake = {
        true, -- Enabled
        {8, 40, 0.3, 3}, -- Shake values (don't change if you don't know)
        1, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "", -- Image1 url
            Image2 = "", -- Image2 url
            Shake = false,
            Sound1 = { 
               11400679305, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 1,
            },
        },
    },
CustomDialog = {""},  -- Custom death message (can be as long as you want)
})

------------------------

-- Run the created entity
Creator.runEntity(entity)
