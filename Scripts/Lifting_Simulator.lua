-- Gui to Lua
-- Version: 3.2

if _G.LIFTINGLOADED == nil then
	--Local Variables:
	local Player = game:GetService("Players").LocalPlayer
	local RemoteEvent = game:GetService("ReplicatedStorage").RemoteEvent

	--Global Variables:
	_G.SpeedToggled = false
	_G.AutoStrength = false
	_G.AutoSell = false
	_G.AutoLift = false
	_G.Opened = false
	_G.LIFTINGLOADED = true

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
		if _G.SpeedToggled == true then
			if b == "WalkSpeed" then
				if Player.Character ~= nil then
					return Player.Character:WaitForChild("Humanoid").WalkSpeed
				end
			end
		end
		return oldindex(self, b)
	end)

	-- Instances:

	local LiftingSimulator = Instance.new("ScreenGui")
	local OpenClose = Instance.new("Frame")
	local OpenClose_2 = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")
	local Main = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local AutoStrength = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local KeyBind = Instance.new("TextLabel")
	local AutoLift = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local KeyBind_2 = Instance.new("TextLabel")
	local AutoSell = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local KeyBind_3 = Instance.new("TextLabel")
	local Credit = Instance.new("TextLabel")
	local Dragindicator = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local SpeedChanger = Instance.new("Frame")
	local UICorner_8 = Instance.new("UICorner")
	local Speed = Instance.new("TextBox")
	local UICorner_9 = Instance.new("UICorner")
	local SpeedToggle = Instance.new("TextButton")
	local UICorner_10 = Instance.new("UICorner")
	local Dragindicator_2 = Instance.new("Frame")
	local UICorner_11 = Instance.new("UICorner")

	--Coroutines:

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

	


	-- Functions:

	function Close()
		Main:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
        Dragindicator:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		Credit:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		AutoStrength:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		KeyBind:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		AutoLift:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		KeyBind_2:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		AutoSell:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		KeyBind_3:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		SpeedChanger:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		Dragindicator_2:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		Speed:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		SpeedToggle:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		delay(0.8, function() if _G.Opened == false then Main.Visible = false SpeedChanger.Visible = false end end)
	end

	function Open()
		Main.Visible = true
		SpeedChanger.Visible = true
		Main:TweenSize(UDim2.new(0, 347, 0, 216), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		Dragindicator:TweenSize(UDim2.new(0, 301, 0, 6), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
        Credit:TweenSize(UDim2.new(0, 287, 0, 39), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		AutoStrength:TweenSize(UDim2.new(0, 124, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		KeyBind:TweenSize(UDim2.new(0, 124, 0, 20), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		AutoLift:TweenSize(UDim2.new(0, 124, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		KeyBind_2:TweenSize(UDim2.new(0, 124, 0, 20), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		AutoSell:TweenSize(UDim2.new(0, 124, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		KeyBind_3:TweenSize(UDim2.new(0, 124, 0, 20), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		SpeedChanger:TweenSize(UDim2.new(0, 273, 0, 140), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		Dragindicator_2:TweenSize(UDim2.new(0, 232, 0, 6), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		Speed:TweenSize(UDim2.new(0, 200, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
		SpeedToggle:TweenSize(UDim2.new(0, 154, 0, 47), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 1, true)
	end


	function OpenToggle()
		if _G.Opened == true then
			_G.Opened = false
			OpenClose_2.Text = "Open"
			Close()
		else
			_G.Opened = true
			OpenClose_2.Text = "Close"
			Open()
		end
	end

	function Autostrength()
		if _G.AutoStrength == true then
			_G.AutoStrength = false
			AutoStrength.Text = "Auto Strength - Off"
		else 
			_G.AutoStrength = true
			AutoStrength.Text = "Auto Strength - On"
		end
	end
	function Autolift()
		if _G.AutoLift == true then
			_G.AutoLift = false
			AutoLift.Text = "Auto Lift - Off"
		else 
			_G.AutoLift = true
			AutoLift.Text = "Auto Lift - On"
		end
	end
	function Autosell()
		if _G.AutoSell == true then
			_G.AutoSell = false
			AutoSell.Text = "Auto Sell - Off"
		else 
			_G.AutoSell = true
			AutoSell.Text = "Auto Sell - On"
		end
	end
	function WhileSpeed()
        while _G.SpeedToggled == true do
            wait()
            if Player.Character ~= nil then
                Player.Character:WaitForChild("Humanoid").WalkSpeed = tonumber(Speed.Text)
            end
        end
    end

	function ToggleSpeed()
		if _G.SpeedToggled == true then
			_G.SpeedToggled = false
			SpeedToggle.Text = "Speed Changer - Off"
		else
			_G.SpeedToggled = true
			SpeedToggle.Text = "Speed Changer - On"
            WhileSpeed()
		end
	end

    --Service Functions:
    game:GetService("RunService").RenderStepped:Connect(function()
		if _G.AutoLift == true then
			for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v.Name == "Income_Tool_LocalScript" then
					v.Parent:Activate()
				end
			end
		end
	end)
	game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.PageUp then
			Autostrength()
		end
		if inputObject.KeyCode == Enum.KeyCode.PageDown then
			Autosell()
		end
		if inputObject.KeyCode == Enum.KeyCode.Home then
			Autolift()
		end
	end)


	--Properties:

	LiftingSimulator.Name = "Lifting Simulator"
	LiftingSimulator.Parent = game:GetService("CoreGui")
	LiftingSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	OpenClose.Name = "OpenClose"
	OpenClose.Parent = LiftingSimulator
	OpenClose.BackgroundColor3 = Color3.fromRGB(84, 139, 134)
	OpenClose.Position = UDim2.new(0.00947521999, 0, 0.819420815, 0)
	OpenClose.Size = UDim2.new(0, 127, 0, 54)

	OpenClose_2.Name = "OpenClose"
	OpenClose_2.Parent = OpenClose
	OpenClose_2.BackgroundColor3 = Color3.fromRGB(81, 134, 129)
	OpenClose_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	OpenClose_2.BorderSizePixel = 0
	OpenClose_2.Position = UDim2.new(0.102362201, 0, 0.129629627, 0)
	OpenClose_2.Size = UDim2.new(0, 100, 0, 39)
	OpenClose_2.Font = Enum.Font.SourceSans
	OpenClose_2.Text = "Open"
	OpenClose_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	OpenClose_2.TextScaled = true
	OpenClose_2.TextSize = 14.000
	OpenClose_2.TextWrapped = true
	OpenClose_2.MouseButton1Down:Connect(function()
		OpenToggle()
	end)

	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = OpenClose_2

	UICorner_2.CornerRadius = UDim.new(0, 16)
	UICorner_2.Parent = OpenClose

	Main.Name = "Main"
	Main.Parent = LiftingSimulator
	Main.Active = true
	Main.BackgroundColor3 = Color3.fromRGB(84, 139, 134)
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.240668997, 0, 0.304389864, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
    Main.Visible = false
	Main.Active = true
	Main.Draggable = true

	UICorner_3.CornerRadius = UDim.new(0, 30)
	UICorner_3.Parent = Main

	AutoStrength.Name = "AutoStrength"
	AutoStrength.Parent = Main
	AutoStrength.BackgroundColor3 = Color3.fromRGB(56, 93, 89)
	AutoStrength.BorderSizePixel = 0
	AutoStrength.Position = UDim2.new(0.0864553303, 0, 0.277777791, 0)
	AutoStrength.Size = UDim2.new(0, 0, 0, 0)
	AutoStrength.Font = Enum.Font.SourceSans
	AutoStrength.Text = "Auto Strength - Off"
	AutoStrength.TextColor3 = Color3.fromRGB(0, 0, 0)
	AutoStrength.TextScaled = true
	AutoStrength.TextSize = 14.000
	AutoStrength.TextWrapped = true
	AutoStrength.MouseButton1Down:Connect(function()
		Autostrength()
	end)

	UICorner_4.CornerRadius = UDim.new(0, 12)
	UICorner_4.Parent = AutoStrength

	KeyBind.Name = "KeyBind"
	KeyBind.Parent = AutoStrength
	KeyBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyBind.BackgroundTransparency = 1.000
	KeyBind.Position = UDim2.new(-0.00225434452, 0, 0.989259243, 0)
	KeyBind.Size = UDim2.new(0, 0, 0, 0)
	KeyBind.Font = Enum.Font.SourceSans
	KeyBind.Text = "Keybind - PageUp"
	KeyBind.TextColor3 = Color3.fromRGB(0, 0, 0)
	KeyBind.TextScaled = true
	KeyBind.TextSize = 14.000
	KeyBind.TextWrapped = true

	AutoLift.Name = "AutoLift"
	AutoLift.Parent = Main
	AutoLift.BackgroundColor3 = Color3.fromRGB(56, 93, 89)
	AutoLift.BorderSizePixel = 0
	AutoLift.Position = UDim2.new(0.319884717, 0, 0.597222269, 0)
	AutoLift.Size = UDim2.new(0, 0, 0, 0)
	AutoLift.Font = Enum.Font.SourceSans
	AutoLift.Text = "Auto Lift - Off"
	AutoLift.TextColor3 = Color3.fromRGB(0, 0, 0)
	AutoLift.TextScaled = true
	AutoLift.TextSize = 14.000
	AutoLift.TextWrapped = true
	AutoLift.MouseButton1Down:Connect(function()
		Autolift()
	end)

	UICorner_5.CornerRadius = UDim.new(0, 12)
	UICorner_5.Parent = AutoLift

	KeyBind_2.Name = "KeyBind"
	KeyBind_2.Parent = AutoLift
	KeyBind_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyBind_2.BackgroundTransparency = 1.000
	KeyBind_2.Position = UDim2.new(-0.00225434452, 0, 0.989259243, 0)
	KeyBind_2.Size = UDim2.new(0, 0, 0, 0)
	KeyBind_2.Font = Enum.Font.SourceSans
	KeyBind_2.Text = "Keybind - Home"
	KeyBind_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	KeyBind_2.TextScaled = true
	KeyBind_2.TextSize = 14.000
	KeyBind_2.TextWrapped = true

	AutoSell.Name = "AutoSell"
	AutoSell.Parent = Main
	AutoSell.BackgroundColor3 = Color3.fromRGB(56, 93, 89)
	AutoSell.BorderSizePixel = 0
	AutoSell.Position = UDim2.new(0.556195974, 0, 0.277777791, 0)
	AutoSell.Size = UDim2.new(0, 0, 0, 0)
	AutoSell.Font = Enum.Font.SourceSans
	AutoSell.Text = "Auto Sell - Off"
	AutoSell.TextColor3 = Color3.fromRGB(0, 0, 0)
	AutoSell.TextScaled = true
	AutoSell.TextSize = 14.000
	AutoSell.TextWrapped = true
	AutoSell.MouseButton1Down:Connect(function()
		Autosell()
	end)

	UICorner_6.CornerRadius = UDim.new(0, 12)
	UICorner_6.Parent = AutoSell

	KeyBind_3.Name = "KeyBind"
	KeyBind_3.Parent = AutoSell
	KeyBind_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyBind_3.BackgroundTransparency = 1.000
	KeyBind_3.Position = UDim2.new(-0.00225434452, 0, 0.989259243, 0)
	KeyBind_3.Size = UDim2.new(0, 0, 0, 0)
	KeyBind_3.Font = Enum.Font.SourceSans
	KeyBind_3.Text = "Keybind - PageDown"
	KeyBind_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	KeyBind_3.TextScaled = true
	KeyBind_3.TextSize = 14.000
	KeyBind_3.TextWrapped = true

	Credit.Name = "Credit"
	Credit.Parent = Main
	Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credit.BackgroundTransparency = 1.000
	Credit.BorderSizePixel = 0
	Credit.Position = UDim2.new(0.0864553303, 0, 0.0509259254, 0)
	Credit.Size = UDim2.new(0, 0, 0, 0)
	Credit.Font = Enum.Font.SourceSans
	Credit.Text = "Made by SuperGamingBros4#0968"
	Credit.TextColor3 = Color3.fromRGB(18, 84, 0)
	Credit.TextSize = 21.000
	Credit.TextWrapped = true

	Dragindicator.Name = "Drag indicator"
	Dragindicator.Parent = Main
	Dragindicator.BackgroundColor3 = Color3.fromRGB(0, 77, 72)
	Dragindicator.Position = UDim2.new(0.0662824214, 0, 0.0509259254, 0)
	Dragindicator.Size = UDim2.new(0, 0, 0, 0)

	UICorner_7.CornerRadius = UDim.new(1, 0)
	UICorner_7.Parent = Dragindicator

	SpeedChanger.Name = "Speed Changer"
	SpeedChanger.Parent = LiftingSimulator
	SpeedChanger.Active = true
	SpeedChanger.BackgroundColor3 = Color3.fromRGB(84, 139, 134)
	SpeedChanger.ClipsDescendants = true
	SpeedChanger.Position = UDim2.new(0.561340332, 0, 0.372612506, 0)
	SpeedChanger.Size = UDim2.new(0, 0, 0, 0)
    SpeedChanger.Visible = false
	SpeedChanger.Active = true
	SpeedChanger.Draggable = true

	UICorner_8.CornerRadius = UDim.new(0, 30)
	UICorner_8.Parent = SpeedChanger

	Speed.Name = "Speed"
	Speed.Parent = SpeedChanger
	Speed.BackgroundColor3 = Color3.fromRGB(49, 81, 78)
	Speed.Position = UDim2.new(0.1291814, 0, 0.557884574, 0)
	Speed.Size = UDim2.new(0, 0, 0, 0)
	Speed.Font = Enum.Font.SourceSans
	Speed.PlaceholderColor3 = Color3.fromRGB(0, 131, 32)
	Speed.PlaceholderText = "Set Speed"
    Speed.ClearTextOnFocus = false
	Speed.Text = ""
	Speed.TextColor3 = Color3.fromRGB(0, 0, 0)
	Speed.TextSize = 24.000
	Speed.TextWrapped = true

	UICorner_9.CornerRadius = UDim.new(0, 15)
	UICorner_9.Parent = Speed

	SpeedToggle.Name = "SpeedToggle"
	SpeedToggle.Parent = SpeedChanger
	SpeedToggle.BackgroundColor3 = Color3.fromRGB(50, 84, 80)
	SpeedToggle.Position = UDim2.new(0.216117218, 0, 0.150254726, 0)
	SpeedToggle.Size = UDim2.new(0, 0, 0, 0)
	SpeedToggle.Font = Enum.Font.SourceSans
	SpeedToggle.Text = "Speed Changer - Off"
	SpeedToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
	SpeedToggle.TextScaled = true
	SpeedToggle.TextSize = 14.000
	SpeedToggle.TextWrapped = true
	SpeedToggle.MouseButton1Down:Connect(function()
		ToggleSpeed()
	end)

	UICorner_10.CornerRadius = UDim.new(0, 30)
	UICorner_10.Parent = SpeedToggle

	Dragindicator_2.Name = "Drag indicator"
	Dragindicator_2.Parent = SpeedChanger
	Dragindicator_2.BackgroundColor3 = Color3.fromRGB(0, 77, 72)
	Dragindicator_2.Position = UDim2.new(0.0662823915, 0, 0.0509259738, 0)
	Dragindicator_2.Size = UDim2.new(0, 0, 0, 0)

	UICorner_11.CornerRadius = UDim.new(1, 0)
	UICorner_11.Parent = Dragindicator_2
end
