local Main = loadstring(game:HttpGet('https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/DROCSID%20UI%20library.lua'))()

if _G.AlreadyExecutedLiftingSimulatorThisIsSoLongSoNoOneWillUseThis ~= true then
_G.AlreadyExecutedLiftingSimulatorThisIsSoLongSoNoOneWillUseThis = true
--Metatable Hooks:
local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
local oldnamecall = gmt.__namecall
gmt.__namecall = newcclosure(function(self, ...)
	local method = getnamecallmethod()
	if method == "Kick" then
		wait(9e9)
		return nil
	end
	return oldnamecall(self, ...)
end)
gmt.__index = newcclosure(function(self, b)
	if (_G.SpeedOn) then
		if b == "WalkSpeed" then
			if Player.Character ~= nil then
				return Player.Character:WaitForChild("Humanoid").WalkSpeed
			end
		end
	end
	return oldindex(self, b)
end)

local RemoteEvent = game:GetService("ReplicatedStorage").RemoteEvent
coroutine.resume(coroutine.create(function()
	while wait(0.5) do
		if _G.AutoStrength == true then
			RemoteEvent:FireServer({"GainMuscle"})
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while wait(0.5) do
		if _G.AutoSell == true then
			RemoteEvent:FireServer({"SellMuscle"})
		end
	end
end))

game:GetService("RunService").RenderStepped:Connect(function()
	if _G.AutoLift == true then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v.Name == "Income_Tool_LocalScript" then
				v.Parent:Activate()
			end
		end
	end
end)

function AutoStrength(On)
	if (On) then
		_G.AutoStrength = true
	else
		_G.AutoStrength = false
	end
end
function AutoLift(On)
	if (On) then
		_G.AutoLift = true
	else
		_G.AutoLift = false
	end
end
function AutoSell(On)
	if (On) then
		_G.AutoSell = true
	else
		_G.AutoSell = false
	end
end
function SpeedToggle(On)
	if (On) then
		_G.SpeedOn = true
	else
		_G.SpeedOn = false
	end
end
spawn(function()
	while true do
		if (_G.SpeedOn) then
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = _G.WalkSpeed
		end
		wait(0.5)
	end
end)

local Window = Main:CreateWindow("Lifting Simulator")
local AutoFarm = Window:CreateTab("AutoFarm")
local AutoStrength = AutoFarm:CreateToggle("Auto Strength", AutoStrength, AutoStrength)
local AutoLift = AutoFarm:CreateToggle("Auto Lift", AutoLift, AutoLift)
local AutoSell = AutoFarm:CreateToggle("Auto Sell", AutoSell, AutoSell)

local Misc = Window:CreateTab("Misc")
local WalkSpeedText = Misc:CreateText("WalkSpeed")
local WalkSpeedSlider = Misc:CreateSlider("WalkSpeedSlider", 5000, function(output) _G.WalkSpeed = output end)
local WalkSpeedToggle = Misc:CreateToggle("Toggle Walkspeed", SpeedToggle, SpeedToggle)
end
