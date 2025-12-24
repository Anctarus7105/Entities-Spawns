---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
	Entity = {
		Name = "Him",
		Asset = "https://github.com/VeaselGod/CometV4/raw/main/Models/Him.rbxm",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
			Duration = 1
		},
		Shatter = true,
		Repair = false
	},
	Earthquake = {
		Enabled = true
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {3.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 350,
		Delay = 2,
		Reversed = false
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 5,
		Max = 10,
		Delay = 1
	},
	Damage = {
		Enabled = true,
		Range = 150,
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
		Hints = {"!!!!!!!!!!!!!!!!!!!!!"},
		Cause = "Him"
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
    print("Entity has spawned")
-- Spawn Sound
local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	cue2.Name = "Him"
	cue2.SoundId = "rbxassetid://9125713501"
	cue2.Volume = 1
	cue2.PlaybackSpeed = 1
	cue2:Play()
wait(0)

	else	

-- Void Noises
local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	cue2.Name = "It"
	cue2.SoundId = "rbxassetid://1837403780"
	cue2.Volume = 1
	cue2.Looped = true
	cue2.PlaybackSpeed = 0.198
	cue2:Play()
    cue2.PlayOnRemove = true
    cue2.RollOffMode = "Linear"
    cue2.RollOffMaxDistance = 36
    cue2.RollOffMinDistance = 2
    cue2.TimePosition = 48.607
wait(0)

	else	
	
-- Equalizer Effect
Eq = Instance.new("EqualizerSoundEffect")
Eq.Parent = workspace.It
Eq.LowGain = -80
Eq.Enabled = true
Eq.Name = "Equalizer"
	
	else	
	
-- Reverb Effect
Rb = Instance.new("ReverbSoundEffect")
Rb.Parent = workspace.It
Rb.DecayTime = 2.687
Rb.Density = 1
Rb.Diffusion = 1
Rb.DryLevel = -80
Rb.Enabled = true
Rb.Name = "Reverb"
wait(0.3)
Scare:Play()
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
local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	cue2.Name = "Despawn"
	cue2.SoundId = "rbxassetid://7076365332"
	cue2.Volume = 1
	cue2.PlaybackSpeed = 1
	cue2:Play()
wait(0)

else
		
-- End It
game.Workspace.It:Destroy()
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
	if newHealth == 0 then
		print("Come back, id like to see you again...")
	else
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Jumpscares/refs/heads/main/HimScare"))()
	end
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Crucifixed Him!")
end)

]]--

---====== Run entity ======---

entity:Run()
