--Locals:

local Player = game:GetService("Players").LocalPlayer

local VirtualUser = game:GetService("VirtualUser")

local Camera = game:GetService("Workspace").CurrentCamera
local ViewportSize = Camera.ViewportSize

local gmt = getrawmetatable(game)
local oldindex
local oldnamecall

if not AlreadyExecutedLiftingSimulatorThisIsSoLongSoNoOneWillUseThis then
--Global Environment:

getgenv().AlreadyExecutedLiftingSimulatorThisIsSoLongSoNoOneWillUseThis = true
getgenv().Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Better_UI_Library.lua"))()

--Metatable Hooks:

setreadonly(gmt, false)
oldnamecall = hookfunction(gmt.__namecall, function(self, ...)
	local method = getnamecallmethod()
	if method == "Kick" then
		wait(9e9)
		return nil
	end
	return oldnamecall(self, ...)
end)
oldindex = hookfunction(gmt.__index, function(self, b)
	if Main.Flags.SpeedToggle then
		if b == "WalkSpeed" then
			if Player.Character then
				return Player.Character:WaitForChild("Humanoid").WalkSpeed
			end
		end
	end
	return oldindex(self, b)
end)
setreadonly(gmt, true)

local RemoteEvent = game:GetService("ReplicatedStorage").RemoteEvent
coroutine.resume(coroutine.create(function()
	while wait(0.5) do
		if Main.Flags.AutoStrength then
			RemoteEvent:FireServer({"GainMuscle"})
		end
		if Main.Flags.AutoSell then
			RemoteEvent:FireServer({"SellMuscle"})
		end
	end
end))

local c
c = game:GetService("RunService").RenderStepped:Connect(function()
	if Main.Flags.AutoLift and Player.Character then
		for i,v in pairs(Player.Character:GetDescendants()) do
			if v.Name == "Income_Tool_LocalScript" then
				v.Parent:Activate()
			end
		end
	end
	if Main.Flags.ToggleKillPlayer then
		pcall(function()
			for i,v in pairs(Main.Flags.SelectedKillPlayer) do
				game:GetService("Players")[v].Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end)
		wait(0.001)
	end
end)

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    if Main.Flags.AfkKick then
        VirtualUser:CaptureController()
        VirtualUser:Button2Down(Vector2.new(0,0), Camera.CFrame)
        wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0,0), Camera.CFrame)
    end
end)

spawn(function()
	while true do
		if Main.Flags.SpeedToggle and Player.Character then
			Player.Character:WaitForChild("Humanoid").WalkSpeed = Main.Flags.WalkSpeed
		end
		wait(0.5)
	end
end)
end

local function openshop()
	firetouchinterest(Player.Character.HumanoidRootPart, game:GetService("Workspace").EffectStorage.Mark02.Detector, 0)
	firetouchinterest(Player.Character.HumanoidRootPart, game:GetService("Workspace").EffectStorage.Mark02.Detector, 1)
end



local Window = Main:CreateWindow("Lifting Simulator - By SuperJumpMan63#3843")
local MainTab = Window:AddTab("Main") do
	MainTab:AddToggle({Name = "Auto Lift", Flag = "AutoLift"})
	MainTab:AddToggle({Name = "Auto Strength", Flag = "AutoStrength"})
	MainTab:AddToggle({Name = "Auto Sell", Flag = "AutoSell"})
	MainTab:AddToggle({Name = "No Afk Kick", Flag = "AfkKick"})
end
local MiscTab = Window:AddTab("Misc") do
	MiscTab:AddButton({Name = "Open Shop", Callback = openshop})
	MiscTab:AddToggle({Name = "Toggle Speed", Flag = "SpeedToggle"})
	MiscTab:AddSlider({Name = "WalkSpeed", Flag = "WalkSpeed", Min = 16, Max = 5000})
	MiscTab:AddToggle({Name = "Bring Players", Flag = "ToggleKillPlayer"})
	MiscTab:AddText("Note: The bring is client-sided, but you can still attack people.")
	MiscTab:AddPlayerDropDownList({Name = "Players", Flag = "SelectedKillPlayer"})
end
