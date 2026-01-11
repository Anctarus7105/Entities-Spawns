---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(189, 255, 122)
game.Lighting.MainColorCorrection.Contrast = 1
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(2.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(80),{TintColor = Color3.fromRGB(255, 255, 0)})
TW:Play()

local entity = spawner.Create({
	Entity = {
		Name = "Surge",
		Asset = "https://github.com/Anctarus7105/Random-Files/raw/main/surge.rbxm",
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
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 55,
		Values = {1.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 105,
		Delay = 2,
		Reversed = false
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 3,
		Delay = 0.7
	},
	Damage = {
		Enabled = true,
		Range = 40,
		Amount = 125
	},
	Crucifixion = {
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"", "", "", ""},
		Cause = "Surge"
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
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

    sound.Name = "deezerspawn"

    sound.Volume = 10

    sound.PlaybackSpeed = 1

   sound:Play()

end

CustomGitSound("https://github.com/Anctarus7105/Custom-Sounds/raw/main/BusherError.mp3", 1, "surgespawn")
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
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
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
	if newHealth == 0 then
		print("Entity has killed the player")
	else
		print("Entity has damaged the player")
	end
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Custom crucifixion callback")
end)

]]--

---====== Run entity ======---

entity:Run()
