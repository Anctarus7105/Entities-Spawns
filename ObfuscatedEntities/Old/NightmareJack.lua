game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
    local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
    local shadow = LoadCustomInstance("https://github.com/Anctarus7105/Random-Files/raw/main/BloodJack.rbxm")
    firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
    shadow:PivotTo(currentLoadedRoom.RoomStart.CFrame)
    wait(0.2)
    shadow.Parent=workspace
    shadow.Sound:Play()
    -- Creating dark-red model
    for _, part in ipairs(shadow:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Color = Color3.new(200, 0, 0) -- Dark-red color
            -- also can edit something:
            -- part.Material = Enum.Material.SmoothPlastic
        end
    end
    task.wait(0.3)
    shadow:Destroy()
    firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 1)
end)
