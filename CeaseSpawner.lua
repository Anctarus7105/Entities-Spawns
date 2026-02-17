local spawner = loadstring(game:HttpGet("https://pastefy.app/uKozjSR2/raw"))()
local dmg
local entity = spawner.Create({
	Entity = {
		Name = "Cease",
		Asset = "rbxassetid://16950076354",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = false,
			Duration = 1
		},
		Shatter = false,
		Repair = false
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 120,
		Delay = 5,
		Reversed = false
	},
	Rebounding = {
		Enabled = false,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 1,
		Delay = 1
	},
	Damage = {
		Enabled = false,
		Range = 9999,
		Amount = 9999
	},
	Crucifixion = {
		Enabled = false,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"You Died To Cease", "Never Move", " That's all. ", " ... "},
		Cause = "Cease"
	}
})

local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
	camara.CFrame = camara.CFrame * cf
end)
camShake:Start()
camShake:Shake(CameraShaker.Presets.Earthquake)

local redtweeninfo = TweenInfo.new(8)
local redinfo = {Color = Color3.new(0, 0, 1)}

for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
	if v:IsA("Light") then
		game.TweenService:Create(v,redtweeninfo,redinfo):Play()
		if v.Parent.Name == "LightFixture" then
			game.TweenService:Create(v.Parent,redtweeninfo,redinfo):Play()
		end
	end
end

local Sielnce = Instance.new("Sound", workspace)
Sielnce.SoundId = "rbxassetid://166047422"
Sielnce:Play()
Sielnce.Volume = 3
game.Debris:AddItem(Sielnce, 2)

entity:SetCallback("OnStartMoving", function()

local hitbox = 120
dmg = game:GetService("RunService").Heartbeat:Connect(function()
local origin = entity.Model:FindFirstChildWhichIsA("BasePart").Position
local direction = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - origin).Unit
local ray = Ray.new(origin, direction * hitbox)

local result = workspace:Raycast(ray.Origin, ray.Direction)
     if result and result.Instance.Parent == game.Players.LocalPlayer.Character then
           if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
              entity.Config.Damage.Enabled = true
          end
     end
end)

end)

entity:SetCallback("OnDespawning", function()
... (осталось: 5 строк)

Cease.txt
3 кб
chú bé tê liệt ✪ OVERDOORS ✪ — 08:02
HARDCORE REWORK UPDATE ĐÃ CÓ NÚT CHẠY
loadstring(game:HttpGet("https://raw.githubusercontent.com/chubeteliet-cpu/Hardcore-rework-upt-/refs/heads/main/Hardcore-rework-update-bychubeteliet", true))()
Giờ thì có mã hóa r
﻿
local spawner = loadstring(game:HttpGet("https://pastefy.app/uKozjSR2/raw"))()
local dmg
local entity = spawner.Create({
	Entity = {
		Name = "Cease",
		Asset = "rbxassetid://16950076354",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = false,
			Duration = 1
		},
		Shatter = false,
		Repair = false
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 120,
		Delay = 5,
		Reversed = false
	},
	Rebounding = {
		Enabled = false,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 1,
		Delay = 1
	},
	Damage = {
		Enabled = false,
		Range = 9999,
		Amount = 9999
	},
	Crucifixion = {
		Enabled = false,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
		Type = "Guiding", -- "Curious"
		Hints = {"You Died To Cease", "Never Move", " That's all. ", " ... "},
		Cause = "Cease"
	}
})

local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera

local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
	camara.CFrame = camara.CFrame * cf
end)
camShake:Start()
camShake:Shake(CameraShaker.Presets.Earthquake)

local redtweeninfo = TweenInfo.new(8)
local redinfo = {Color = Color3.new(0, 0, 1)}

for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
	if v:IsA("Light") then
		game.TweenService:Create(v,redtweeninfo,redinfo):Play()
		if v.Parent.Name == "LightFixture" then
			game.TweenService:Create(v.Parent,redtweeninfo,redinfo):Play()
		end
	end
end

local Sielnce = Instance.new("Sound", workspace)
Sielnce.SoundId = "rbxassetid://166047422"
Sielnce:Play()
Sielnce.Volume = 3
game.Debris:AddItem(Sielnce, 2)

entity:SetCallback("OnStartMoving", function()

local hitbox = 120
dmg = game:GetService("RunService").Heartbeat:Connect(function()
local origin = entity.Model:FindFirstChildWhichIsA("BasePart").Position
local direction = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - origin).Unit
local ray = Ray.new(origin, direction * hitbox)

local result = workspace:Raycast(ray.Origin, ray.Direction)
     if result and result.Instance.Parent == game.Players.LocalPlayer.Character then
           if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
              entity.Config.Damage.Enabled = true
          end
     end
end)

end)

entity:SetCallback("OnDespawning", function()
	entity.Model:Destroy()
	dmg:Disconnect()
end)

entity:Run()
