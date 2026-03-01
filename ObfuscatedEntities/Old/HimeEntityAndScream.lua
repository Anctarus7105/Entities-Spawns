-- Him
coroutine.wrap(function()
    while true do
        wait(math.random(100, 350))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(math.random(30, 50))
loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Entities-Spawns/refs/heads/main/ObfuscatedEntities/Old/Him.lua"))()
    end
end)()

-- Him Scream
coroutine.wrap(function()
    while true do
        wait(math.random(100, 200))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(math.random(30, 35))
loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Random-Files/refs/heads/main/Him%20Scream"))()
    end
end)()
