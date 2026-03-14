local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/ScriptsForMyModes/refs/heads/main/OLDSpawner"))()

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

    sound.Name = "deergodspawn"

    sound.Volume = 4

    sound.PlaybackSpeed = 1

   sound:Play()

end

CustomGitSound("https://github.com/Anctarus7105/Custom-Sounds/raw/main/Following.mp3?raw=true", 1, "deergodspawn")

local entity = Creator.createEntity({
    CustomName = "Deer God", -- Custom name of your entity
    Model = "rbxassetid://11393625763",
    Speed = 25, -- Percentage, 100 = default Rush speed
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
            Image1 = "rbxassetid://11394027278", -- Image1 url
            Image2 = "rbxassetid://11395249153", -- Image2 url
            Shake = false,
            Sound1 = { 
               10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(48, 25, 52), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 1,
            },
        },
    },
CustomDialog = {"You died to whom you call The Deer God", "Closets Wont work! So try running", "Its form is incomprehensible to a human upclose...", "..-so avoid Eye Contact"},  -- Custom death message (can be as long as you want)
})

---====== Load achievement giver ======---
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "Last Chance To Look Away",
    Desc = "Why are you running?",
    Reason = "Survive the rare Entity called Dear God",
    Image = "rbxassetid://2129311966"
})
------------------------

-- Run the created entity
Creator.runEntity(entity)
