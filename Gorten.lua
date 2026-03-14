local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/ScriptsForMyModes/refs/heads/main/OLDSpawner"))()

game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(255, 0, 0)
game.Lighting.MainColorCorrection.Contrast = 1
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(80),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()

local entity = Creator.createEntity({
    CustomName = "Gorten", -- Custom name of your entity
    Model = "rbxassetid://12358439363",
    Speed = 900, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
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
            Image1 = "https://www.roblox.com/library/11862656491", -- Image1 url
            Image2 = "https://www.roblox.com/library/11862656491", -- Image2 url
            Shake = false,
            Sound1 = { 
               0, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                5567523008, -- SoundId
                { Volume = 0 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(6, 38, 135), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
CustomDialog = {"You died to Who you call Gorten", "He has a unique sound of leaves, He is fast and quick.", "hide immediately when this happens."},  -- Custom death message (can be as long as you want)
})

------------------------

-- Run the created entity
Creator.runEntity(entity)
