local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/vct0721/Doors-Stuff/main/Other/CustomEyeSpawnerSource.lua"))()

local CustomEyeSpawnerConfig = { 
    CustomName = "Freeze",
    Model = "https://github.com/Anctarus7105/Random-Files/raw/main/FreezeNew.rbxm",
    DelayTime = 0.0001,
    HeightOffset = 1,
    CanKill = true,

    DamageConfig = {
        DamageAmount = 100,
        DamageOnLook = true,
        DamageOnNotLooking = false,
        DamageOnEntitySeeing = false,
    },

    KillRangeConfig = {
        IsEnabled = true,
        Range = 15,
    },

    TeleportConfig = {
        Forced = false,
        Min = 2,
        Max = 5,
    },

    DeathConfig = { 
        Type = "Blue",
        Hints = {
            "You died to Freeze...", 
            "Not look at him!", 
            "he freezing you when you looking at him..", 
            "dont look and you will escape!."
        },
        Cause = "Freeze"
    }
}

spawner.spawnEntity(CustomEyeSpawnerConfig)
