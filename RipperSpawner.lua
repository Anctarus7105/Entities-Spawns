---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(255, 0, 0)
game.Lighting.MainColorCorrection.Contrast = 1
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(80),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()

local entity = spawner.Create({
	Entity = {
		Name = "Ripper",
		Asset = "rbxassetid://12262768551",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 0
		},
		Shatter = true,
		Repair = false
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 50,
		Values = {1.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 100,
		Delay = 2,
		Reversed = false
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 1,
		Delay = 2
	},
	Damage = {
		Enabled = true,
		Range = 40,
		Amount = 125
	},
	Crucifixion = {
		Enabled = true,
		Range = 400,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"You died who you call Ripper...", "You can tell his presence by the lights and his scream.", "Hide when does this!", ""},
		Cause = "Ripper"
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
    print("Entity has spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
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

CustomGitSound("https://github.com/Kotyara19k-Doorsspawner/Random-files/raw/main/Y2meta.app%20-%20Ripper%20Has%20Moving%20Sound%20(320%20kbps).mp3", 1, "rippermoving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime == true then
        print("Entity has entered room: ".. room.Name.. " for the first time")
    else
        print("Entity has entered room: ".. room.Name.. " again")
    end
end)

entity:SetCallback("OnLookAt", function(lineOfSight)
	if lineOfSight == true then
		print("Player is looking at entity")
	else
		print("Player view is obstructed by something")
	end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound == true then
        print("Entity has started rebounding")
	else
        print("Entity has finished rebounding")
	end
end)

entity:SetCallback("OnDespawning", function()
    print("Entity is despawning")
end)

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Custom-Badges/refs/heads/main/Hardcore%20Mode/Ripper.lua"))()

	else
		
local Scream = Instance.new("Sound")	
Scream.Parent = Workspace
Scream.SoundId = "rbxassetid://1837829565"
Scream.Volume = 9.9
Scream.Looped = false
Scream.Pitch = 1
Scream:Play()
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
	if newHealth == 0 then
		print("Entity has killed the player")
	else
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
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Crucifixed Ripper")
end)

]]--

---====== Run entity ======---

entity:Run()
