local UiLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Better_UI_Library.lua"))()

local BoostTiers = game:GetService("Workspace").Map.Stages.Boosts:GetChildren()

local Window = UiLib:CreateWindow("Strongest Punch Simulator")
local Main = Window:AddTab("Main")

--Buttons
Main:AddToggle({Name = "Auto Farm", Flag = "AutoFarm"})
local DropIt = Main:AddDropDown({Name = "World", Flag = "World"})
for i = 1, #BoostTiers do
    DropIt:AddSelection(tostring(i))
end

Main:AddToggle({Name = "Auto Punch", Flag = "AutoPunch"})
Main:AddToggle({Name = "Auto Evolve Pets", Flag = "AutoEvolve"})

--if AlreadyExec then return; end
getgenv().AlreadyExec = true
UiLib.Flags.World = "1"

--// Anti-Afk //
--// Define locals //
local cam = game:GetService("Workspace").CurrentCamera
local vu = game:GetService("VirtualUser")

--// Run when the idle animation plays //
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:CaptureController()
    vu:Button2Down(Vector2.new(0,0), cam.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0), cam.CFrame)
end)


local Player = game:GetService("Players").LocalPlayer
local HumanoidRootPart = Player.Character.HumanoidRootPart

spawn(function()
    while true do
        print("s")
        if UiLib.Flags.AutoPunch then
            print("Punch")
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"Activate_Punch"})
        elseif UiLib.Flags.AutoEvolve then
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"UpgradeCurrentPet"})
        end
        wait()
    end
end)

while true do
    if UiLib.Flags.AutoFarm then
        local ClosestOne = nil
        for _,v in pairs(game:GetService("Workspace").Map.Stages.Boosts[UiLib.Flags.World]:GetChildren()) do
            for _,v2 in pairs(v:GetChildren()) do
                if v2:FindFirstChildWhichIsA("TouchTransmitter") then
                    if ClosestOne then
                        if (ClosestOne.Position - HumanoidRootPart.Position).Magnitude > (v2.Position - HumanoidRootPart.Position).Magnitude then
                            ClosestOne = v2
                        end
                    else
                        ClosestOne = v2
                    end
                end
            end
        end
        repeat
            Player.Character.Humanoid.WalkToPoint = ClosestOne.Position
            wait(0.001)
        until (ClosestOne.Position - HumanoidRootPart.Position).Magnitude < 2 or v2 == nil
    end
    wait()
end
