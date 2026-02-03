local TweenService = game:GetService("TweenService")

--- Configs

local ambruhspeed = 40

local redtweeninfo = TweenInfo.new(3)

local redinfo = {Color = Color3.fromRGB(125, 125, 255)}

-- Изменение цвета света

for i, v in pairs(workspace.CurrentRooms:GetDescendants()) do

    if v:IsA("Light") then

        TweenService:Create(v, redtweeninfo, redinfo):Play()

        if v.Parent.Name == "LightFixture" then

            TweenService:Create(v.Parent, redtweeninfo, redinfo):Play()

        end

    end

end

local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]

local color = Color3.fromRGB(100, 120, 228)

for _, thing in pairs(room.Assets:GetDescendants()) do

    if thing:FindFirstChild("LightFixture") then

        local lightFixture = thing.LightFixture

        if lightFixture:FindFirstChild("Neon") then

            lightFixture.Neon.Color = color

        end

        for _, light in pairs(lightFixture:GetChildren()) do

            if light:IsA("SpotLight") or light:IsA("PointLight") then

                light.Color = color

            end

        end

    end

end

local s = game:GetObjects("rbxassetid://11547018893")[1]

local latestRoomIndex = game.ReplicatedStorage.GameData.LatestRoom.Value

local door = game.Workspace.CurrentRooms[latestRoomIndex].Door.Door

local function moveToDoor1()

    local targetPosition = door.Position

    local currentPosition = s.PrimaryPart.Position

    local distance = (targetPosition - currentPosition).magnitude

    local timeToReach = distance / ambruhspeed

    local tweenInfo = TweenInfo.new(timeToReach, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

    local goal = {Position = targetPosition}

    local tween = TweenService:Create(s.PrimaryPart, tweenInfo, goal)

    

    tween:Play()

    tween.Completed:Wait() -- Дождаться завершения анимации

    s.PrimaryPart.Anchored = false

    s.PrimaryPart.CanCollide = false

end

local function canSeeTarget()

    local players = game.Players:GetPlayers()

    for _, player in ipairs(players) do

        local character = player.Character

        local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")

     

        if humanoid and humanoid.Health > 0 and character:FindFirstChild("HumanoidRootPart") then

            local distance = (s.PrimaryPart.Position - character.HumanoidRootPart.Position).magnitude

            

            if distance <= 50 then   

                    end

                end)

            end

        end

    end

end

local rootPart = s:FindFirstChild("HumanoidRootPart") or s:FindFirstChildWhichIsA("Part")

if rootPart then

    s.PrimaryPart = rootPart

end

s.Silence:Play()

s.Parent = workspace

s.PrimaryPart.CFrame = CFrame.new(250, 0, -1)

wait(3)

moveToDoor1()

while true do

    canSeeTarget()

    wait(1) 

end
