---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
    Entity = {
        Name = "Silence",
        Asset = "rbxassetid://11535812658",
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
        Speed = 50,
        Delay = 2,
        Reversed = false
    },

    Rebounding = {
        Enabled = false
    },

    Damage = {
        Enabled = true,
        Range = 35,
        Amount = 125 -- chạm = chết
    },

    Crucifixion = {
        Enabled = false
    },

    Death = {
        Type = "Guiding",
        Hints = {"You died who you call Silence..", "It's very slow, but it doesn't show any pre-glow or anything else.", "It appears at any time!"},
        Cause = "Silence"
    }
})

---====== Callbacks ======---

entity:SetCallback("OnSpawned", function()
    print("[RIPPER] Spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("[RIPPER] Moving")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
    if newHealth <= 0 then
        if ReSt:FindFirstChild("GameStats") then
            local stats = ReSt.GameStats:FindFirstChild("Player_"..Plr.Name)
            if stats then
                stats.Total.DeathCause.Value = "Silence"
            end
        end
end)

entity:SetCallback("OnDespawned", function()
    print("[RIPPER] Despawned")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Custom-Badges/refs/heads/main/Hardcore%20Mode/Silence.lua"))()
end)

---====== Run entity ======---

entity:Run()
