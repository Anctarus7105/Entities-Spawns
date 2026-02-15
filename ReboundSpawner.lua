local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,24) 
    Reboundcolor.Name = "Warn" 
    Reboundcolor.TintColor = Color3.fromRGB(65, 138, 255) Reboundcolor.Saturation = -0.7 Reboundcolor.Contrast = 0.2 
    game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()

local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
 camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,3,0.1,6,2,0.5)

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

    sound.Name = "reboundspawn"

    sound.Volume = 1

    sound.PlaybackSpeed = 1

   sound:Play()

end

CustomGitSound("https://github.com/Anctarus7105/Custom-Sounds/raw/main/ReboundWarning.mp3", 1, "reboundspawn")

wait(0)
local maxRebounds = 1
local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camera = workspace.CurrentCamera
local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
    camera.CFrame = camera.CFrame * cf
end)

-- Modified LoadCustomInstance to match THEHORROR's retry system
function LoadCustomInstance(assetId, parent)
    local model

    -- Retry system: keep trying until model is loaded
    while wait() and not model do
        print("🔄 Trying to load model with Asset ID: " .. assetId)  -- Debug message

        -- Attempt to load the model from the asset ID
        local success, result = pcall(function()
            return game:GetObjects("rbxassetid://" .. assetId)[1]
        end)

        if success and result then
            model = result
            model.Parent = parent or workspace

            -- Remove unwanted scripts from the model (deep clean)
            for _, obj in ipairs(model:GetDescendants()) do
                if obj:IsA("Script") or obj:IsA("LocalScript") then
                    obj:Destroy()
                end
            end

            -- Apply internal tag to mark the model as loaded by the executor
            pcall(function()
                model:SetAttribute("LoadedByExecutor", true)
            end)

            print("✅ [LoadCustomInstance]: Model " .. model.Name .. " successfully loaded into " .. model.Parent:GetFullName())  -- Success message with emoji
        else
            print("❌ [LoadCustomInstance]: Failed to load model ID " .. tostring(assetId) .. ". Retrying... 🔄")  -- Failure message with retry info
            wait(0.5)  -- Short wait to avoid overwhelming the system with continuous calls
        end
    end

    return model
end

function Move()
    local s = LoadCustomInstance("16491680927", workspace)
    s.Parent = workspace
    local val = 60
    local killed = false
    local entity = s:FindFirstChild("Rebound")
    
    if not entity then
        warn("[Rebound] Entity not found in model. Aborting.")
        return
    end

    print("[Rebound] Entity found: Hello World!")

    local function GetLastRoom()
        local gruh = workspace.CurrentRooms
        return gruh[game.ReplicatedStorage.GameData.LatestRoom.Value + 1]
    end

    entity.CFrame = GetLastRoom().RoomExit.CFrame

    local function canSeeTarget(target, size)
        if killed then return false end
        local origin = entity.Position
        local direction = (target.HumanoidRootPart.Position - origin).unit * size
        local ray = Ray.new(origin, direction)
        local hit = workspace:FindPartOnRay(ray, entity)
        if hit and hit:IsDescendantOf(target) then
            killed = true
            return true
        end
        return false
    end

    wait(4)

    spawn(function()
        while entity ~= nil do 
            wait(0.5)
            local v = game.Players.LocalPlayer
            if v.Character and not v.Character:GetAttribute("Hiding") then
                if canSeeTarget(v.Character, 50) then
                    local ReboundJs = Instance.new("ScreenGui")
                    local Static = Instance.new("ImageLabel")
                    local Rebound = Instance.new("ImageLabel")
                    local JSSIZE = Instance.new("ImageLabel")

                    ReboundJs.Name = "ReboundJs"
                    ReboundJs.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

                    Static.Name = "Static"
                    Static.Parent = ReboundJs
                    Static.BackgroundTransparency = 1
                    Static.Size = UDim2.new(11, 0, 111, 0)
                    Static.Image = "rbxassetid://236543215"
                    Static.ImageTransparency = 1

                    Rebound.Name = "Rebound"
                    Rebound.Parent = ReboundJs
                    Rebound.BackgroundTransparency = 1
                    Rebound.Position = UDim2.new(0.4866, 0, 0.4793, 0)
                    Rebound.Size = UDim2.new(0.0267, 0, 0.0387, 0)
                    Rebound.Image = "rbxassetid://10914800940"

                    JSSIZE.Name = "JSSIZE"
                    JSSIZE.Parent = ReboundJs
                    JSSIZE.BackgroundTransparency = 1
                    JSSIZE.Position = UDim2.new(-0.586, 0, -1.251, 0)
                    JSSIZE.Size = UDim2.new(2.128, 0, 3.081, 0)
                    JSSIZE.Visible = false
                    JSSIZE.Image = "rbxassetid://10914800940"

                    coroutine.wrap(function()
                        local script = Static
                        while true do
                            script.Image = "rbxassetid://236543215"
                            task.wait(0.002)
                            script.Rotation = 0
                            task.wait(0.002)
                            script.Rotation = 180
                            task.wait(0.002)
                            script.Image = "rbxassetid://236777652"
                            task.wait(0.002)
                            script.Rotation = 0
                            task.wait(0.002)
                            script.Rotation = 180
                            task.wait(0.002)
                        end
                    end)()

                    coroutine.wrap(function()
                        local Plr = game.Players.LocalPlayer
                        local gui = ReboundJs
                        local static = gui.Static
                        local jspos = gui.JSSIZE

                        game.TweenService:Create(static, TweenInfo.new(0.5), {ImageTransparency = 0.8}):Play()
                        game.TweenService:Create(gui.Rebound, TweenInfo.new(0.5), {Size = jspos.Size, Position = jspos.Position}):Play()
                        task.spawn(function()
                            wait(0.3)
                            Plr.Character:FindFirstChildWhichIsA("Humanoid"):TakeDamage(100)
                            game.ReplicatedStorage.GameStats["Player_" .. Plr.Name].Total.DeathCause.Value = "Rebound"
                            game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent:Fire({
                                "You died to who you call Rebound...",
                                "He makes his presence known and keeps coming back...",
                                "Hide when this happens!"
                            })
                        end)
                        wait(0.5)
                        game.TweenService:Create(static, TweenInfo.new(1), {ImageTransparency = 1}):Play()
                        game.TweenService:Create(gui.Rebound, TweenInfo.new(0.3), {ImageTransparency = 1}):Play()
                        wait(1)
                        gui:Destroy()
                    end)()
                end
            end
            if entity and (entity.Position - v.Character.HumanoidRootPart.Position).Magnitude <= val then
                camShake:Destroy()
                camShake:ShakeOnce(17, 6, 0.1, 1)
            end
        end
    end)

    -- Move the entity to the entrance room
    local gruh = workspace.CurrentRooms
    for i = game.ReplicatedStorage.GameData.LatestRoom.Value, 1, -1 do
        if gruh:FindFirstChild(i) then
            local room = gruh[i]
            if room:FindFirstChild("RoomEntrance") then
                local a = room.RoomEntrance
                local tween = game.TweenService:Create(entity, TweenInfo.new(2, Enum.EasingStyle.Sine), {CFrame = a.CFrame})
                tween:Play()
                tween.Completed:Wait()
            end
        end
    end
    entity.Anchored = false
    entity.CanCollide = false
    game.Debris:AddItem(s, 5)
end

function Rebound()
    local Warn = Instance.new("ColorCorrectionEffect", game.Lighting)
    Warn.TintColor = Color3.fromRGB(65, 138, 255)
    Warn.Saturation = -0.7
    Warn.Contrast = 0.2
    game.TweenService:Create(Warn, TweenInfo.new(15), {
        TintColor = Color3.fromRGB(255, 255, 255),
        Saturation = 0,
        Contrast = 0
    }):Play()

    camShake:Start()
    camShake:ShakeOnce(10, 3, 0.1, 6, 2, 0.5)
    pcall(Move)

    while maxRebounds > 0 do
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(99999999999999999999999999999999999999999999999999999999999999999)
        pcall(Move)
        maxRebounds = maxRebounds - 1
    end

    wait(15.3)
    Warn:Destroy()
end

pcall(Rebound)
warn("[Rebound] Fully Executed!")
require(game.Players.LocalPlayer.MainUI.Initiator.Main_Game).caption("thanks for using rebound script! ".. game.Players.LocalPlayer.Character.Name.. ".", 5)
