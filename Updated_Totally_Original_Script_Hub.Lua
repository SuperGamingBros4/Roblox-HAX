-- Variables:

local GameIds = {5709572883, "Lifting_Legends_Simulator.lua", 5817322596, "Speed_Legends_Simulator.lua", 3652625463, "Lifting_Simulator_Auto_Farm.lua", 6531005851, "Lifting_Titans.lua"}
--Structure is {GameId, LuaFile}


local GameFound = false

local GameScript = ""

local TweenService = game:GetService("TweenService")
local Market = game:GetService("MarketplaceService")

-- Logic:
for i,v in pairs(GameIds) do
	if game.PlaceId == v then
		GameFound = true
		GameScript = GameIds[i+1]
		print(Market:GetProductInfo(v).Name.." Detected")
	end
end
if GameFound == false then
	print("No Game Detected")
end

-- Instances:

local NEWScriptHub = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TopLabel = Instance.new("TextLabel")
local Load = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local DragIndicator = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local DetectedGame = Instance.new("TextLabel")

-- Functions:
function Close()
	Main:TweenSizeAndPosition(UDim2.new(0, 0,0, 0), UDim2.new(0, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
	DragIndicator:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0, 6,0.035, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
	Exit:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.345, 0,0.756, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
	Load:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.305, 0, 0.509, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
	DetectedGame:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.059, 0, 0.238, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
	TopLabel:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0.059, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
end

--Properties:

NEWScriptHub.Name = "NEW Script Hub"
NEWScriptHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
NEWScriptHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = NEWScriptHub
Main.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Main.BorderColor3 = Color3.fromRGB(52, 52, 52)
Main.BorderSizePixel = 3
Main.Position = UDim2.new(0, 0,1, 0)
Main.Size = UDim2.new(0, 0, 0, 0)
Main.Draggable = true

TopLabel.Name = "TopLabel"
TopLabel.Parent = Main
TopLabel.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TopLabel.BackgroundTransparency = 0.500
TopLabel.BorderColor3 = Color3.fromRGB(52, 52, 52)
TopLabel.BorderSizePixel = 0
TopLabel.Position = UDim2.new(0, 0, 0.058631923, 0)
TopLabel.Size = UDim2.new(0, 0, 0, 0)
TopLabel.Font = Enum.Font.SourceSans
TopLabel.Text = "Totally Original Script hub by SuperGamingBros4#0958"
TopLabel.TextColor3 = Color3.fromRGB(0, 51, 147)
TopLabel.TextScaled = true
TopLabel.TextSize = 28.000
TopLabel.TextWrapped = true

Load.Name = "Load"
Load.Parent = Main
Load.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Load.BorderColor3 = Color3.fromRGB(53, 53, 53)
Load.Position = UDim2.new(0.304825127, 0, 0.509413362, 0)
Load.Size = UDim2.new(0, 0, 0, 0)
Load.Font = Enum.Font.SourceSans
Load.Text = "Load Script"
Load.TextColor3 = Color3.fromRGB(85, 85, 85)
Load.TextScaled = true
Load.TextSize = 14.000
Load.TextWrapped = true
if GameFound == false then
	Load.Selectable = false
	Load.Visible = false
end
Load.MouseButton1Down:Connect(function()
	if GameFound == true then
		Close()
		delay(2, function() NEWScriptHub:Destroy() end)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/master/Scripts/"..GameScript))()
	end
end)

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Load

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Exit.BorderColor3 = Color3.fromRGB(53, 53, 53)
Exit.Position = UDim2.new(0.345365673, 0, 0.755982637, 0)
Exit.Size = UDim2.new(0, 0, 0, 0)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "Exit"
Exit.TextColor3 = Color3.fromRGB(85, 85, 85)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true
Exit.MouseButton1Down:Connect(function()
	Close()
	delay(2, function()NEWScriptHub:Destroy() end)
end)

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Exit

UICorner_3.CornerRadius = UDim.new(0.075000003, 0)
UICorner_3.Parent = Main

DragIndicator.Name = "Drag Indicator"
DragIndicator.Parent = Main
DragIndicator.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
DragIndicator.BorderSizePixel = 0
DragIndicator.Position = UDim2.new(0, 6, 0.0350000001, 0)
DragIndicator.Size = UDim2.new(0, 0, 0, 0)

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = DragIndicator

DetectedGame.Name = "Detected Game"
DetectedGame.Parent = Main
DetectedGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DetectedGame.BackgroundTransparency = 1.000
DetectedGame.Position = UDim2.new(0.0591216236, 0, 0.237785012, 0)
DetectedGame.Size = UDim2.new(0, 0, 0, 0)
DetectedGame.Font = Enum.Font.SourceSans
DetectedGame.TextColor3 = Color3.fromRGB(85, 85, 85)
DetectedGame.TextScaled = true
DetectedGame.TextSize = 14.000
DetectedGame.TextWrapped = true
if GameFound == true then
	DetectedGame.Text = "Detected: "..Market:GetProductInfo(game.PlaceId).Name
else
	DetectedGame.Text = "No Game Detected"
end

-- Tweens:
Main:TweenSizeAndPosition(UDim2.new(0, 592,0, 307), UDim2.new(0.284, 0,0.237, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
DragIndicator:TweenSizeAndPosition(UDim2.new(0, 578, 0, 10), UDim2.new(0, 6,0.035, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
Exit:TweenSizeAndPosition(UDim2.new(0, 184, 0, 50), UDim2.new(0.345, 0,0.756, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
Load:TweenSizeAndPosition(UDim2.new(0, 232, 0, 50), UDim2.new(0.305, 0, 0.509, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
DetectedGame:TweenSizeAndPosition(UDim2.new(0, 522, 0, 50), UDim2.new(0.059, 0, 0.238, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
TopLabel:TweenSizeAndPosition(UDim2.new(0, 591, 0, 42), UDim2.new(0, 0, 0.059, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 2, false)
