getgenv().Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Better_UI_Library.lua"))()

local camera = game:GetService("Workspace").CurrentCamera 
local Plr = game:GetService("Players").LocalPlayer
local RS = game:GetService("RunService")
local mouse = Plr:GetMouse()
local Target = nil

function getclosestplayertomouse()
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character then
            if v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.TeamColor ~= Plr.TeamColor then
                local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                local dist = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                if Main.Flags.VisCheck then
                    if Main.Flags.Size > dist and vis then
                        Target = v
                    end
                else
                    if Main.Flags.Size > dist then
                        Target = v
                    end
                end
            end
        end
    end
    return Target
end

local circle = Drawing.new("Circle")
circle.Thickness = 0.1

RS.RenderStepped:Connect(function()
    local Settings = Main.Flags
    if Settings.Aimbot and Settings.FovCircle then
        circle.Visible = true
        circle.Color = Color3.fromRGB(Settings.FovRed, Settings.FovGreen, Settings.FovBlue)
        circle.NumSides = Settings.Smoothing
        circle.Radius = Settings.Size
	    circle.Position = Vector2.new(mouse.X, mouse.Y + 35)
    else
        circle.Visible = false
    end
    if Settings.Aimbot then
        for i,arrow in pairs(game:GetService("Workspace"):GetChildren()) do
            if arrow.Name == "arrow" or arrow.Name == "crossbow_arrow" then
                pcall(function()
                    arrow:WaitForChild("Handle").Position = getclosestplayertomouse().Character.HumanoidRootPart.position
                end)
            end
        end
    end
end)

local Window = Main:CreateWindow("BedWars")
local MainTab = Window:AddTab("Main") do
    MainTab:AddToggle({Name = "Aimbot", Flag = "Aimbot"})
    MainTab:AddToggle({Name = "AimBot Circle", Flag = "FovCircle"})
    MainTab:AddToggle({Name = "VisCheck", Flag = "VisCheck"})
    MainTab:AddSlider({Name = "Aimbot Fov", Default = 50, Max = 500, Flag = "Size"})
end
local SettingsTab = Window:AddTab("Settings") do
    SettingsTab:AddText("Fov Circle Settings")
    SettingsTab:AddSlider({Name = "Red", Flag = "FovRed", Default = 255, Max = 255})
    SettingsTab:AddSlider({Name = "Green", Flag = "FovGreen", Default = 255, Max = 255})
    SettingsTab:AddSlider({Name = "Blue", Flag = "FovBlue", Default = 255, Max = 255})
    SettingsTab:AddSlider({Name = "Smoothness", Flag = "Smoothing", Min = 12, Default = 40, Max = 75})
end
