    game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(255, 0, 0)
game.Lighting.MainColorCorrection.Contrast = 1
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(50),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()

function GitAud(soundgit,filename)

    SoundName=tostring(SoundName)

    local url=soundgit

    local FileName = filename

    writefile(FileName..".mp3", game:HttpGet(url))

    return (getcustomasset or getsynasset)(FileName..".mp3")

end

function CustomGitSound(soundlink, vol, filename)

    local sound = Instance.new("Sound")

    sound.SoundId = GitAud(soundlink, filename)

    sound.Parent = workspace

    sound.Name = "whitespawn"

    sound.Volume = 10

    sound.PlaybackSpeed = 1

   sound:Play()

end

CustomGitSound("https://github.com/Anctarus7105/Custom-Sounds/raw/main/WH1T3_Impossible_mode_Arrival_sound%20(online-audio-converter.com).mp3?raw=true", 1, "whitespawn")

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/ScriptsForMyModes/refs/heads/main/OLDSpawner"))()

local entity = Creator.createEntity({
    CustomName = "Wh1t3", -- Custom name of your entity
    Model = 16735149732,
    Speed = 165, -- Percentage, 100 = default Rush speed
    DelayTime = 5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        false, -- Enabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
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
            Image1 = "", -- Image1 url
            Image2 = "", -- Image2 url
            Shake = false,
            Sound1 = { 
               snd id, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                snd id, -- SoundId
                { Volume = 0 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(0, 0, 255), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 1,
            },
        },
    },
CustomDialog = {H̷̡̡̧̻̼̺̖̫̰̥͚̳͎̣͓͕̼̜̆͐ͅ0̷͇̦̬̟̱̣̠̼̻̱̩̲͇̥̪̙͎̩̈́̌́̈́̓̀̿̍͜Ẃ̵̛̛̏͑̔̏̿͊͐̆̋̈͐̐͘͜"},  -- Custom death message (can be as long as you want)
})

------------------------

-- Run the created entity
Creator.runEntity(entity)
