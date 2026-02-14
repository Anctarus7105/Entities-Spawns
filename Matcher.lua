---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
    Entity = {
        Name = "Matcher",
        Asset = "rbxassetid://12459977063",
        HeightOffset = 0
    },

    Lights = {
        Flicker = {
            Enabled = true,
            Duration = 1.2
        },
        Shatter = true,
        Repair = false
    },

    CameraShake = {
        Enabled = true,
        Range = 35,
        Values = {2.5, 20, 0.5, 1}
    },

    Movement = {
        Speed = 70,
        Delay = 0,
        Reversed = false
    },

    Rebounding = {
        Enabled = false
    },

    Damage = {
        Enabled = true,
        Range = 15,
        Amount = 125 -- damage
    },

    Crucifixion = {
        Enabled = false
    },

    Death = {
        Type = "Guiding",
        Hints = {""},
        Cause = "Matcher"
    }
})

---====== Callbacks ======---

entity:SetCallback("OnSpawned", function()
    print("Matcher Spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("Matcher Moving")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
    if newHealth <= 0 then
        if ReSt:FindFirstChild("GameStats") then
            local stats = ReSt.GameStats:FindFirstChild("Player_"..Plr.Name)
            if stats then
                stats.Total.DeathCause.Value = "Matcher"
            end
        end
end)

entity:SetCallback("OnDespawned", function()
    print("Matcher Despawned")
end)

---====== Run entity ======---

entity:Run()
