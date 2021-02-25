-- Gui to Lua
-- Version: 3.2

--Variables
local Port1 = game:GetService("ReplicatedStorage").Network.Port1
local IsOpen = false

-- Instances:

local SpeedLegendsSimulatorGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local AutoSpeedOFF = Instance.new("TextButton")
local AutoSpeedON = Instance.new("TextButton")
local AutoZonesOFF = Instance.new("TextButton")
local TopPanel = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local BottomPanel = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local AutoZonesON = Instance.new("TextButton")
local AutoRebirthOFF = Instance.new("TextButton")
local AutoAscendOFF = Instance.new("TextButton")
local CloseX = Instance.new("TextButton")
local DestroyGUI = Instance.new("TextButton")
local InfiniteYield = Instance.new("TextButton")
local AutoRebirthON = Instance.new("TextButton")
local AutoAscendON = Instance.new("TextButton")
local OpenCloseFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")
local Close = Instance.new("TextButton")

--functions
function GUIDestroy()
	SpeedLegendsSimulatorGUI:Destroy()
end

--Properties:

SpeedLegendsSimulatorGUI.Name = "Speed Legends Simulator  GUI"
SpeedLegendsSimulatorGUI.Enabled = true
SpeedLegendsSimulatorGUI.Parent = game.CoreGui
SpeedLegendsSimulatorGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = SpeedLegendsSimulatorGUI
Main.BackgroundColor3 = Color3.fromRGB(61, 58, 46)
Main.BackgroundTransparency = 0.500
Main.BorderColor3 = Color3.fromRGB(172, 172, 0)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.293209881, 0, 0.234920636, 0)
Main.Size = UDim2.new(0, 535, 0, 379)
Main.Visible = false
Main.Draggable = true
function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Q then
		if Main.Visible == false then
			Open.Visible = false
			Close.Visible = true
			Main.Visible = true
		else 
			Main.Visible = false
			Open.Visible = true
			Close.Visible = false
		end
	end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

TopPanel.Name = "TopPanel"
TopPanel.Parent = Main
TopPanel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TopPanel.BackgroundTransparency = 0.100
TopPanel.BorderColor3 = Color3.fromRGB(172, 172, 0)
TopPanel.BorderSizePixel = 2
TopPanel.Size = UDim2.new(0, 535, 0, 32)

Name.Name = "Name"
Name.Parent = TopPanel
Name.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(172, 172, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.0859813094, 0, 0, 0)
Name.Size = UDim2.new(0, 441, 0, 32)
Name.Font = Enum.Font.SourceSans
Name.Text = "Speed Legends Simulator GUI - Open/Close Key - Q"
Name.TextColor3 = Color3.fromRGB(241, 241, 0)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

CloseX.Name = "CloseX"
CloseX.Parent = Main
CloseX.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
CloseX.BackgroundTransparency = 1.000
CloseX.BorderColor3 = Color3.fromRGB(172, 172, 0)
CloseX.BorderSizePixel = 0
CloseX.Position = UDim2.new(0.934579432, 0, 0, 0)
CloseX.Size = UDim2.new(0, 35, 0, 32)
CloseX.Font = Enum.Font.Ubuntu
CloseX.Text = "X"
CloseX.TextColor3 = Color3.fromRGB(172, 172, 0)
CloseX.TextScaled = true
CloseX.TextSize = 14.000
CloseX.TextWrapped = true
CloseX.MouseButton1Down:connect(function()
	Main.Visible = false
    Open.Visible = true
	Close.Visible = false
end)

BottomPanel.Name = "BottomPanel"
BottomPanel.Parent = Main
BottomPanel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
BottomPanel.BorderColor3 = Color3.fromRGB(172, 172, 0)
BottomPanel.BorderSizePixel = 2
BottomPanel.Position = UDim2.new(-0.002, 0,0.857, 0)
BottomPanel.Size = UDim2.new(0, 535, 0, 54)

Credits.Name = "Credits"
Credits.Parent = BottomPanel
Credits.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Credits.BackgroundTransparency = 0.100
Credits.BorderColor3 = Color3.fromRGB(172, 172, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, -0.0150808096, 0)
Credits.Size = UDim2.new(0, 535, 0, 54)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Speed Legends Simulator GUI | Made By SuperGamingBros4#0958 [All credit goes to the Creators]"
Credits.TextColor3 = Color3.fromRGB(172, 172, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

AutoSpeedOFF.Name = "AutoSpeedOFF"
AutoSpeedOFF.Parent = Main
AutoSpeedOFF.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoSpeedOFF.BackgroundTransparency = 0.200
AutoSpeedOFF.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoSpeedOFF.Position = UDim2.new(0.0654205605, 0, 0.17827405, 0)
AutoSpeedOFF.Size = UDim2.new(0, 200, 0, 61)
AutoSpeedOFF.Font = Enum.Font.SourceSans
AutoSpeedOFF.Text = "AutoFarm Speed - OFF"
AutoSpeedOFF.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoSpeedOFF.TextScaled = true
AutoSpeedOFF.TextSize = 14.000
AutoSpeedOFF.TextWrapped = true
AutoSpeedOFF.MouseButton1Down:connect(function()
	AutoSpeedOFF.Visible = false
	AutoSpeedON.Visible = true
	while AutoSpeedON.Visible do
        wait()
		Port1:FireServer("Click")
	end
end)


AutoSpeedON.Name = "AutoSpeedON"
AutoSpeedON.Parent = Main
AutoSpeedON.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoSpeedON.BackgroundTransparency = 0.200
AutoSpeedON.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoSpeedON.Position = UDim2.new(0.0654205605, 0, 0.17827405, 0)
AutoSpeedON.Size = UDim2.new(0, 200, 0, 61)
AutoSpeedON.Visible = false
AutoSpeedON.Font = Enum.Font.SourceSans
AutoSpeedON.Text = "AutoFarm Speed - ON"
AutoSpeedON.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoSpeedON.TextScaled = true
AutoSpeedON.TextSize = 14.000
AutoSpeedON.TextWrapped = true
AutoSpeedON.MouseButton1Down:connect(function()
	AutoSpeedON.Visible = false
	AutoSpeedOFF.Visible = true
end)

AutoZonesOFF.Name = "AutoZonesOFF"
AutoZonesOFF.Parent = Main
AutoZonesOFF.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoZonesOFF.BackgroundTransparency = 0.200
AutoZonesOFF.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoZonesOFF.Position = UDim2.new(0.560747743, 0, 0.17827405, 0)
AutoZonesOFF.Size = UDim2.new(0, 200, 0, 61)
AutoZonesOFF.Font = Enum.Font.SourceSans
AutoZonesOFF.Text = "AutoBuy Zones  - OFF"
AutoZonesOFF.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoZonesOFF.TextScaled = true
AutoZonesOFF.TextSize = 14.000
AutoZonesOFF.TextWrapped = true
AutoZonesOFF.MouseButton1Down:connect(function()
	AutoAscendOFF.Visible = false
	AutoAscendON.Visible = true
	while AutoAscendON.Visible do
		wait()
		Port1:FireServer("Area", game:GetService("Workspace").Area2)
		Port1:FireServer("Area", game:GetService("Workspace").Area3)
	end
end)

AutoZonesON.Name = "AutoZonesON"
AutoZonesON.Parent = Main
AutoZonesON.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoZonesON.BackgroundTransparency = 0.200
AutoZonesON.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoZonesON.Position = UDim2.new(0.560747743, 0, 0.178274065, 0)
AutoZonesON.Size = UDim2.new(0, 200, 0, 61)
AutoZonesON.Visible = false
AutoZonesON.Font = Enum.Font.SourceSans
AutoZonesON.Text = "AutoBuy Zones - ON"
AutoZonesON.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoZonesON.TextScaled = true
AutoZonesON.TextSize = 14.000
AutoZonesON.TextWrapped = true
AutoZonesON.MouseButton1Down:connect(function()
	AutoAscendON.Visible = false
	AutoAscendOFF.Visible = true
end)

AutoRebirthOFF.Name = "AutoRebirthOFF"
AutoRebirthOFF.Parent = Main
AutoRebirthOFF.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoRebirthOFF.BackgroundTransparency = 0.200
AutoRebirthOFF.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoRebirthOFF.Position = UDim2.new(0.0654206276, 0, 0.398875058, 0)
AutoRebirthOFF.Size = UDim2.new(0, 200, 0, 61)
AutoRebirthOFF.Font = Enum.Font.SourceSans
AutoRebirthOFF.Text = "Auto Rebirth  - OFF"
AutoRebirthOFF.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoRebirthOFF.TextScaled = true
AutoRebirthOFF.TextSize = 14.000
AutoRebirthOFF.TextWrapped = true
AutoRebirthOFF.MouseButton1Down:connect(function()
	AutoRebirthOFF.Visible = false
	AutoRebirthON.Visible = true
	while AutoRebirthON.VIsible do
        wait()
		Port1:FireServer("Purchase", "Rank")
	end
end)

AutoRebirthON.Name = "AutoRebirthON"
AutoRebirthON.Parent = Main
AutoRebirthON.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoRebirthON.BackgroundTransparency = 0.200
AutoRebirthON.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoRebirthON.Position = UDim2.new(0.0635514706, 0, 0.396236598, 0)
AutoRebirthON.Size = UDim2.new(0, 200, 0, 61)
AutoRebirthON.Visible = false
AutoRebirthON.Font = Enum.Font.SourceSans
AutoRebirthON.Text = "Auto Rebirth - ON"
AutoRebirthON.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoRebirthON.TextScaled = true
AutoRebirthON.TextSize = 14.000
AutoRebirthON.TextWrapped = true
AutoRebirthON.MouseButton1Down:connect(function()
	AutoRebirthON.Visible = false
	AutoRebirthOFF.Visible = true
end)

AutoAscendOFF.Name = "AutoAscendOFF"
AutoAscendOFF.Parent = Main
AutoAscendOFF.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoAscendOFF.BackgroundTransparency = 0.200
AutoAscendOFF.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoAscendOFF.Position = UDim2.new(0.560747743, 0, 0.398875058, 0)
AutoAscendOFF.Size = UDim2.new(0, 200, 0, 61)
AutoAscendOFF.Font = Enum.Font.SourceSans
AutoAscendOFF.Text = "Auto Ascend  - OFF"
AutoAscendOFF.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoAscendOFF.TextScaled = true
AutoAscendOFF.TextSize = 14.000
AutoAscendOFF.TextWrapped = true
AutoAscendOFF.MouseButton1Down:connect(function()
	AutoAscendOFF.Visible = false
	AutoAscendON.Visible = true
	while AutoAscendON.Visible do
        wait()
		Port1:FireServer("Purchase", "Ascension")
	end
end)

AutoAscendON.Name = "AutoAscendON"
AutoAscendON.Parent = Main
AutoAscendON.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
AutoAscendON.BackgroundTransparency = 0.200
AutoAscendON.BorderColor3 = Color3.fromRGB(172, 172, 0)
AutoAscendON.Position = UDim2.new(0.558878601, 0, 0.396236598, 0)
AutoAscendON.Size = UDim2.new(0, 200, 0, 61)
AutoAscendON.Visible = false
AutoAscendON.Font = Enum.Font.SourceSans
AutoAscendON.Text = "Auto Ascend - ON"
AutoAscendON.TextColor3 = Color3.fromRGB(172, 172, 0)
AutoAscendON.TextScaled = true
AutoAscendON.TextSize = 14.000
AutoAscendON.TextWrapped = true
AutoAscendON.MouseButton1Down:connect(function()
	AutoAscendON.Visible = false
	AutoAscendOFF.Visible = true
end)

InfiniteYield.Name = "Infinite Yield"
InfiniteYield.Parent = Main
InfiniteYield.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
InfiniteYield.BackgroundTransparency = 0.200
InfiniteYield.BorderColor3 = Color3.fromRGB(172, 172, 0)
InfiniteYield.Position = UDim2.new(0.0654206276, 0, 0.617872417, 0)
InfiniteYield.Size = UDim2.new(0, 200, 0, 61)
InfiniteYield.Font = Enum.Font.SourceSans
InfiniteYield.Text = "Infinite Yield"
InfiniteYield.TextColor3 = Color3.fromRGB(172, 172, 0)
InfiniteYield.TextScaled = true
InfiniteYield.TextSize = 14.000
InfiniteYield.TextWrapped = true
InfiniteYield.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

OpenCloseFrame.Name = "OpenCloseFrame"
OpenCloseFrame.Parent = SpeedLegendsSimulatorGUI
OpenCloseFrame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
OpenCloseFrame.BackgroundTransparency = 0.300
OpenCloseFrame.BorderColor3 = Color3.fromRGB(172, 172, 0)
OpenCloseFrame.Position = UDim2.new(0.00617283909, 0, 0.922222257, 0)
OpenCloseFrame.Size = UDim2.new(0, 79, 0, 41)

Open.Name = "Open"
Open.Parent = OpenCloseFrame
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Open.BackgroundTransparency = 0.100
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.101265669, 0, 0.0731707215, 0)
Open.Size = UDim2.new(0, 63, 0, 35)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(47, 47, 47)
Open.TextSize = 28.000
Open.TextWrapped = true
Open.MouseButton1Down:connect(function()
	Main.Visible = true
	Open.Visible = false
	Close.Visible =true
end)

Close.Name = "Close"
Close.Parent = OpenCloseFrame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Close.BackgroundTransparency = 0.100
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.101265669, 0, 0.0731707215, 0)
Close.Size = UDim2.new(0, 63, 0, 35)
Close.Visible = false
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(47, 47, 47)
Close.TextSize = 28.000
Close.TextWrapped = true
Close.MouseButton1Down:connect(function()
	Main.Visible = false
    Open.Visible = true
	Close.Visible = false
end)

DestroyGUI.Name = "Destroy GUI"
DestroyGUI.Parent = Main
DestroyGUI.BackgroundColor3 = Color3.fromRGB(194, 0, 0)
DestroyGUI.BackgroundTransparency = 0.200
DestroyGUI.BorderColor3 = Color3.fromRGB(10, 172, 167)
DestroyGUI.Position = UDim2.new(0.560747743, 0, 0.617872417, 0)
DestroyGUI.Size = UDim2.new(0, 200, 0, 61)
DestroyGUI.Font = Enum.Font.SourceSans
DestroyGUI.Text = "Destroy GUI"
DestroyGUI.TextColor3 = Color3.fromRGB(83, 118, 118)
DestroyGUI.TextScaled = true
DestroyGUI.TextSize = 14.000
DestroyGUI.TextWrapped = true
DestroyGUI.MouseButton1Down:connect(function()
	GUIDestroy()
end)
