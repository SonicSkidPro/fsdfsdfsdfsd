local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = NotifyLibrary.Notify

if getgenv().PrivateAnti.Settings.Intro == true then
Notify({
    Title = "Private Anti",
    Description = "Loading.." ,
    Duration = 1.5
})
wait(1)
    Notify({
        Title = "Private Anti",
        Description = "Loaded" ,
        Duration = 1.5
    })
else 
    return false
end

getgenv().Underground = getgenv().PrivateAnti.Underground.Enabled 
getgenv().UndergroundAmount = getgenv().PrivateAnti.Underground.Power
getgenv().KeyBind = getgenv().PrivateAnti.Underground.Keybind 

local uis = game:service'UserInputService'





uis.InputBegan:Connect(
    function(a, t)
        if not t then
            if a.KeyCode == getgenv().KeyBind and getgenv().Underground == false then
                getgenv().Underground = true
                Notify({
                    Title = "underground",
                    Description = "on" ,
                    Duration = 1.5
                })
                elseif a.KeyCode == getgenv().KeyBind and getgenv().Underground == true then
                getgenv().Underground = false
                Notify({
                    Title = "underground",
                    Description = "off" ,
                    Duration = 1.5
                })
            end
        end
end)

game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Underground ~= false then 
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,-         getgenv().UndergroundAmount,0) 
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
    end 
end)
end



getgenv().Sky = getgenv().PrivateAnti.Sky.Enabled 
getgenv().SkyAmount = getgenv().PrivateAnti.Sky.Power 
getgenv().KeyBind2 = getgenv().PrivateAnti.Sky.Keybind 






uis.InputBegan:Connect(
    function(a, t)
        if not t then
            if a.KeyCode == getgenv().KeyBind2 and getgenv().Sky == false then
                getgenv().Sky = true
                Notify({
                    Title = "sky",
                    Description = "on" ,
                    Duration = 1.5
                })
                elseif a.KeyCode == getgenv().KeyBind2 and getgenv().Sky == true then
                getgenv().Sky = false
                Notify({
                    Title = "sky",
                    Description = "off" ,
                    Duration = 1.5
                })
            end
        end
end)


game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Sky ~= false then 
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,      getgenv().SkyAmount,0) 
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
    end 
end)








getgenv().Desync = getgenv().PrivateAnti.V_Desync.Enabled 
getgenv().KeyBind3 = getgenv().PrivateAnti.V_Desync.Keybind 

local uis = game:service'UserInputService'





uis.InputBegan:Connect(
    function(a, t)
        if not t then
            if a.KeyCode == getgenv().KeyBind3 and getgenv().Desync == false then
                getgenv().Desync = true
                Notify({
                    Title = "desync",
                    Description = "on" ,
                    Duration = 1.5
                })
                elseif a.KeyCode == getgenv().KeyBind3 and getgenv().Desync == true then
                getgenv().Desync = false
                Notify({
                    Title = "desync",
                    Description = "off" ,
                    Duration = 1.5
                })
            end
        end
end)






game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Desync == true then
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (2^16)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end
end)

getgenv().Enableddd = getgenv().PrivateAnti.Custom_Velocity.Enabled 
getgenv().Keybind4 = getgenv().PrivateAnti.Custom_Velocity.Keybind 

local AngleAA = {
    X = getgenv().PrivateAnti.Custom_Velocity.X,
    Y = getgenv().PrivateAnti.Custom_Velocity.Y,
    Z = getgenv().PrivateAnti.Custom_Velocity.Z 
}


uis.InputBegan:Connect(
    function(a, t)
        if not t then
            if a.KeyCode == getgenv().KeyBind4 and getgenv().Enableddd == false then
                getgenv().Enableddd = true
                Notify({
                    Title = "custom velocity",
                    Description = "on" ,
                    Duration = 1.5
                })
                elseif a.KeyCode == getgenv().KeyBind4 and getgenv().Enableddd == true then
                getgenv().Enableddd = false
                Notify({
                    Title = "custom velocity",
                    Description = "off" ,
                    Duration = 1.5
                })
            end
        end
end)


game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Enableddd ~= false then 
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =      Vector3.new(
    AngleAA.X,AngleAA.Y,AngleAA.Z
    ) 
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
    end 
end)

if getgenv().PrivateAnti.Custom_Velocity.Random == true then
    AngleAA.X = math.random
    AngleAA.Y = math.random
    AngleAA.Z = math.random
else
    return false
end



















getgenv().LegitaaKey = getgenv().PrivateAnti.Prediction_Changer.Keybind  --// Change the "Z" to any UpperCase letter
getgenv().Legitaa = getgenv().PrivateAnti.Prediction_Changer.Enabled --// Dont touch
getgenv().LegitaaVelocity = getgenv().PrivateAnti.Prediction_Changer.Custom_Prediction

local xxxxxx = false --// Dont touch



game:service('UserInputService').InputBegan:connect(function(Keyzz, cccz)
if cccz then return end 
if Keyzz.KeyCode == getgenv().LegitaaKey then
if getgenv().Legitaa == true then
   xxxxxx = not xxxxxx
   if xxxxxx then
    Notify({
        Title = "prediction changer",
        Description = "on" ,
        Duration = 1.5
    })
    elseif not xxxxxx then
        Notify({
            Title = "prediction changer",
            Description = "off" ,
            Duration = 1.5
        })
end
end
end
end)


game:GetService("RunService").heartbeat:Connect(function()
 if xxxxxx then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    local UserInputService = game:GetService("UserInputService")
    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * getgenv().LegitaaVelocity
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.rightVector * getgenv().LegitaaVelocity
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * getgenv().LegitaaVelocity
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.rightVector * getgenv().LegitaaVelocity
    end
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
end)

if getgenv().PrivateAnti.Prediction_Changer.BreakPrediction == true then
    getgenv().LegitaaVelocity = 0.001
else
    return false
end

getgenv().BlatantAA = getgenv().PrivateAnti.Blatant.Enabled
getgenv().Keybind69 = getgenv().PrivateAnti.Blatant.KeyBind

local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
while getgenv().BlatantAA == true  do
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(Position) + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))) * CFrame.Angles(math.rad(math.random(getgenv().PrivateAnti.Blatant.Power)), math.rad(math.random(getgenv().PrivateAnti.Blatant.Power)), math.rad(math.random(getgenv().PrivateAnti.Blatant.Power))
end

uis.InputBegan:Connect(
    function(a, t)
        if not t then
            if a.KeyCode == getgenv().KeyBind69 and getgenv().BlatantAA == false then
                getgenv().BlatantAA = true
                Notify({
                    Title = "blatant aa",
                    Description = "on" ,
                    Duration = 1.5
                })
                elseif a.KeyCode == getgenv().KeyBind69 and getgenv().BlatantAA == true then
                getgenv().BlatantAA = false
                Notify({
                    Title = "blatant aa",
                    Description = "off" ,
                    Duration = 1.5
                })
            end
        end
end)

game.Players.LocalPlayer.Character.HipHeight = getgenv().PrivateAnti.Misc.HipHeight
