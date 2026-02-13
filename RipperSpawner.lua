---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Services ======---

local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local ReSt = game:GetService("ReplicatedStorage")
local Plr = Players.LocalPlayer

---====== Lighting RED ======---

local cc = Lighting:FindFirstChild("MainColorCorrection")
if not cc then
    cc = Instance.new("ColorCorrectionEffect")
    cc.Name = "MainColorCorrection"
    cc.Parent = Lighting
end

cc.TintColor = Color3.fromRGB(255,0,0)
cc.Contrast = 1

TweenService:Create(cc, TweenInfo.new(1.5), {Contrast = 0}):Play()
TweenService:Create(cc, TweenInfo.new(6), {TintColor = Color3.fromRGB(255,255,255)}):Play()

---====== Create entity ======---

local entity = spawner.Create({
    Entity = {
        Name = "Ripper",
        Asset = "rbxassetid://12234498940",
        HeightOffset = 0
    },

    Lights = {
        Flicker = {
            Enabled = false,
            Duration = 1
        },
        Shatter = true,
        Repair = false
    },

    CameraShake = {
        Enabled = true,
        Range = 50,
        Values = {2.5, 20, 0.5, 1}
    },

    Movement = {
        Speed = 100,
        Delay = 4,
        Reversed = false
    },

    Rebounding = {
        Enabled = false
    },

    Damage = {
        Enabled = true,
        Range = 40,
        Amount = 125 -- chạm = chết
    },

    Crucifixion = {
        Enabled = false
    },

    Death = {
        Type = "Guiding",
        Hints = {"You died who you call Ripper...", "You can tell his presence by the lights and his scream.", "Hide when does this!"},
        Cause = "Ripper"
    }
})

---====== Callbacks ======---

entity:SetCallback("OnSpawned", function()
    print("[RIPPER] Spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("[RIPPER] Moving")
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

    sound.Name = "rippermoving"

    sound.Volume = 10

    sound.PlaybackSpeed = 1

   sound:Play()

end

CustomGitSound("https://github.com/Kotyara19k-Doorsspawner/Random-files/raw/main/Y2meta.app%20-%20Ripper%20Has%20Moving%20Sound%20(320%20kbps).mp3?raw=true", 1, "rippermoving")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
    if newHealth <= 0 then
        if ReSt:FindFirstChild("GameStats") then
            local stats = ReSt.GameStats:FindFirstChild("Player_"..Plr.Name)
            if stats then
                stats.Total.DeathCause.Value = "Ripper"
            end
        end
        workspace.RipeMoving:Stop()
workspace.Ripper:Destroy()

local player = game.Players.LocalPlayer

player.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
player.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
player.Character.HumanoidRootPart.Anchored = true

function GitAud(soundgit,filename)
    SoundName=tostring(SoundName)
    local url=soundgit
    local FileName = filename
    writefile(FileName..".mp3", game:HttpGet(url))
    return (getcustomasset or getsynasset)(FileName..".mp3")
end

function CustomGitSound(soundlink, vol, filename)
    local Sound = Instance.new("Sound")
    Sound.SoundId = GitAud(soundlink, filename)
    Sound.Parent = workspace
    Sound.Volume = vol
    Sound:Play()
end

CustomGitSound("https://github.com/Kotyara19k-Doorsspawner/Random-files/raw/main/Y2meta.app%20-%20Doors%20HardCore%20Mode_%201%20ripper%20part%20sound%20(320%20kbps).mp3", 1, "Ripper5Sound")
wait(1.5)
function GitAud(soundgit,filename)
    SoundName=tostring(SoundName)
    local url=soundgit
    local FileName = filename
    writefile(FileName..".mp3", game:HttpGet(url))
    return (getcustomasset or getsynasset)(FileName..".mp3")
end

function CustomGitSound(soundlink, vol, filename)
    local Sound1 = Instance.new("Sound")
    Sound1.SoundId = GitAud(soundlink, filename)
    Sound1.Parent = workspace
    Sound1.Volume = vol
    Sound1:Play()
end

CustomGitSound("https://github.com/Kotyara19k-Doorsspawner/Random-files/raw/main/Y2meta.app%20-%20Doors%20Hardcore%20Mode_%20Ripperscare%20part%202%20sound%20(320%20kbps).mp3", 1, "Ripper6Sound")
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Image = "rbxassetid://236542974"
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Visible = true
wait(0.3)
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Visible = false
wait(0.1)
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Visible = true
wait(0.2)
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Visible = true
wait(0.2)
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Visible = false
wait(0.3)
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Visible = true
wait(0.2)
game.Players.LocalPlayer.PlayerGui.MainUI.Drip.Visible = false
wait(0.20)
local player = game.Players.LocalPlayer
local humanoid = player.Character:FindFirstChild("Humanoid")
humanoid.Health = humanoid.Health - 100
game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Ripper"
local func, setupval, getinfo, typeof, getgc, next = nil, debug.setupvalue or setupvalue, debug.getinfo or getinfo, typeof, getgc, next

for i,v in next, getgc(false) do
    if typeof(v) == "function" then
        local info = getinfo(v)
        if info.currentline == 54 and info.nups == 2 and info.is_vararg == 0 then
            func = v
            break
        end
    end
end

local function DeathHint(hints, type: string)
    setupval(func, 1, hints)
    if type ~= nil then
        setupval(func, 2, type)
    end
end
	end
    end
end)

entity:SetCallback("OnDespawned", function()
    print("[RIPPER] Despawned")
---====== Load achievement giver ======---
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "Torn Apart",
    Desc = "Dont leave to early..",
    Reason = "Encounter Ripper.",
    Image = "rbxassetid://17702317077"
})
end)

---====== Run entity ======---

entity:Run()
