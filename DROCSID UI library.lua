
local GUILib = Instance.new("ScreenGui")

GUILib.Name = "DROCSID LIB"
GUILib.Parent = game:GetService("CoreGui")
GUILib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function MakeVisible(asd)
	local GUI = game:GetService("CoreGui")["DROCSID LIB"].Frame
	for i,Tab in pairs(GUI.Tabs:GetChildren()) do
		for i,v in pairs(Tab:GetChildren()) do
			pcall(function() v.Visible = asd v.Active = asd end)
		end
	end
	for i, v in pairs(GUI["Tabs List"]:GetChildren()) do
		pcall(function() v.Visible = asd v.Active = asd end)
	end
end

local library = {}

function library:CreateWindow(Name)
	local opened = true
	
	local Frame = Instance.new("Frame")
	local OuterBars = Instance.new("Frame")
	local LeftBar = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Minimize = Instance.new("TextButton")
	local TabsList = Instance.new("ScrollingFrame")
	local UIPadding_2 = Instance.new("UIPadding")
	local Tabs = Instance.new("Folder")
	local UIListLayout = Instance.new("UIListLayout")

	Frame.Parent = GUILib
	Frame.Active = true
	Frame.BackgroundColor3 = Color3.fromRGB(53, 59, 67)
	Frame.BorderColor3 = Color3.fromRGB(46, 52, 59)
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(0.38107869, 0, 0.275362313, 0)
	Frame.Size = UDim2.new(0, 610, 0, 344)
	Frame.Draggable = true

	OuterBars.Name = "OuterBars"
	OuterBars.Parent = Frame
	OuterBars.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	OuterBars.BorderColor3 = Color3.fromRGB(27, 42, 53)
	OuterBars.BorderSizePixel = 0
	OuterBars.Position = UDim2.new(0.000819672132, 0, 0.00145348837, 0)
	OuterBars.Size = UDim2.new(0, 609, 0, 18)
	OuterBars.ZIndex = 2

	LeftBar.Name = "LeftBar"
	LeftBar.Parent = OuterBars
	LeftBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	LeftBar.BorderColor3 = Color3.fromRGB(27, 42, 53)
	LeftBar.BorderSizePixel = 0
	LeftBar.Position = UDim2.new(-0.00164063298, 0, 0.00290171313, 0)
	LeftBar.Size = UDim2.new(0, 15, 0, 343)
	LeftBar.ZIndex = 2

	Title.Name = "Title"
	Title.Parent = OuterBars
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0114956563, 0, 0, 0)
	Title.Size = UDim2.new(0, 594, 0, 18)
	Title.ZIndex = 3
	Title.Font = Enum.Font.SourceSans
	Title.Text = Name.." - Created Using, DROCSID lib"
	Title.TextColor3 = Color3.fromRGB(144, 144, 144)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Minimize.Name = "Minimize"
	Minimize.Parent = OuterBars
	Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minimize.BackgroundTransparency = 1.000
	Minimize.Position = UDim2.new(0.95318073, 0, -0.0554750226, 0)
	Minimize.Size = UDim2.new(0, 28, 0, 20)
	Minimize.ZIndex = 10
	Minimize.Font = Enum.Font.SourceSans
	Minimize.Text = "_"
	Minimize.TextColor3 = Color3.fromRGB(114, 114, 114)
	Minimize.TextSize = 50.000
	Minimize.TextWrapped = true
	Minimize.TextYAlignment = Enum.TextYAlignment.Bottom
	Minimize.MouseButton1Down:Connect(function()
		if opened == true then
			Frame:TweenSize(UDim2.new(0, 610, 0, 18), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.25, true, function() opened = false end)
			wait(0.3)
			if not (opened) then
				MakeVisible(false)
			end
		else
			MakeVisible(true)
			Frame:TweenSize(UDim2.new(0, 610, 0, 344), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.25, true, function() opened = true end)
		end
	end)

	TabsList.Name = "Tabs List"
	TabsList.Parent = Frame
	TabsList.AutomaticCanvasSize = Enum.AutomaticSize.Y
	TabsList.Active = true
	TabsList.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	TabsList.BorderSizePixel = 0
	TabsList.Position = UDim2.new(0.0245901644, 0, 0.0552283451, 0)
	TabsList.Size = UDim2.new(0, 111, 0, 326)
	TabsList.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabsList.ScrollBarThickness = 6
	TabsList.ScrollBarImageColor3 = Color3.fromRGB(21, 23, 29)
	TabsList.VerticalScrollBarInset = Enum.ScrollBarInset.Always

	UIListLayout.Parent = TabsList
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)
	
	UIPadding_2.Parent = TabsList
	UIPadding_2.PaddingTop = UDim.new(0, 10)

	Tabs.Name = "Tabs"
	Tabs.Parent = Frame
	
	
	local epiclibrary = {}
	
	function epiclibrary:CreateTab(Name)
		local Tab_2 = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_3 = Instance.new("UIPadding")
		local Tab = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UIPadding = Instance.new("UIPadding")
		
		
		Tab_2.Name = Name
		Tab_2.Parent = Tabs
		Tab_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Tab_2.Active = true
		Tab_2.Visible = false
		Tab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab_2.BackgroundTransparency = 1.000
		Tab_2.BorderSizePixel = 0
		Tab_2.Size = UDim2.new(0, 482, 0, 323)
		Tab_2.Position = UDim2.new(0.21, 0, 0.056, 0)
		Tab_2.CanvasSize = UDim2.new(0, 0, 0, 0)
		Tab_2.ScrollBarThickness = 6
		Tab_2.ScrollBarImageColor3 = Color3.fromRGB(21, 23, 29)
		Tab_2.VerticalScrollBarInset = Enum.ScrollBarInset.Always
		
		UIListLayout_2.Parent = Tab_2
		UIListLayout_2.Padding = UDim.new(0, 5)
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

		UIPadding_3.Parent = Tab_2
		UIPadding_3.PaddingTop = UDim.new(0, 5)
		
		Tab.Name = Name
		Tab.Parent = TabsList
		Tab.BackgroundColor3 = Color3.fromRGB(53, 59, 67)
		Tab.Position = UDim2.new(0.328828812, 0, 0.306801915, 0)
		Tab.Size = UDim2.new(0, 78, 0, 77)
		Tab.Font = Enum.Font.SourceSans
		Tab.Text = Name
		Tab.TextColor3 = Color3.fromRGB(221, 221, 221)
		Tab.TextScaled = true
		Tab.TextSize = 14.000
		Tab.TextWrapped = true
		Tab.MouseButton1Down:Connect(function()
			for i,v in pairs(Tabs:GetChildren()) do
				v.Visible = false
			end
			Tab_2.Visible = true
		end)
		
		UICorner.CornerRadius = UDim.new(0, 16)
		UICorner.Parent = Tab

		UIAspectRatioConstraint.Parent = Tab
		UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height

		UIPadding.Parent = Tab
		UIPadding.PaddingBottom = UDim.new(0, 5)
		UIPadding.PaddingLeft = UDim.new(0, 5)
		UIPadding.PaddingRight = UDim.new(0, 5)
		UIPadding.PaddingTop = UDim.new(0, 5)
		
		local EpicLibrary1 = {}
		
		function EpicLibrary1:CreateToggle(Name, callback1, callback2)
			local ToggleButton = Instance.new("TextButton")
			local Switch = Instance.new("Frame")
			local SwitchLever = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UICorner_3 = Instance.new("UICorner")
			local on = false
			
			ToggleButton.Name = Name
			ToggleButton.Parent = Tab_2
			ToggleButton.BackgroundColor3 = Color3.fromRGB(38, 43, 49)
			ToggleButton.BackgroundTransparency = 1.000
			ToggleButton.Position = UDim2.new(0.0279752482, 0, 0.0247678012, 0)
			ToggleButton.Size = UDim2.new(0, 447, 0, 50)
			ToggleButton.Font = Enum.Font.SourceSans
			ToggleButton.Text = Name
			ToggleButton.TextColor3 = Color3.fromRGB(221, 221, 221)
			ToggleButton.TextScaled = true
			ToggleButton.TextSize = 14.000
			ToggleButton.TextWrapped = true
			ToggleButton.TextXAlignment = Enum.TextXAlignment.Left

			Switch.Name = "Switch"
			Switch.Parent = ToggleButton
			Switch.BackgroundColor3 = Color3.fromRGB(37, 41, 47)
			Switch.Position = UDim2.new(0.861297548, 0, 0.360000014, 0)
			Switch.Size = UDim2.new(0, 30, 0, 14)

			SwitchLever.Name = "Switch Lever"
			SwitchLever.Parent = Switch
			SwitchLever.BackgroundColor3 = Color3.fromRGB(98, 109, 125)
			SwitchLever.Position = UDim2.new(-0.25, 0, -0.411000013, 0)
			SwitchLever.Size = UDim2.new(0, 24, 0, 24)

			UICorner_2.CornerRadius = UDim.new(1, 0)
			UICorner_2.Parent = SwitchLever

			UICorner_3.Parent = Switch
			
			ToggleButton.MouseButton1Down:Connect(function()
				if on == false then
					on = true
					pcall(callback1)
					SwitchLever:TweenPosition(UDim2.new(0.4, 0, -0.411000013, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.25, true)
				else
					on = false
					pcall(callback2)
					SwitchLever:TweenPosition(UDim2.new(-0.25, 0, -0.411000013, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.25, true)
				end
			end)
		end
		
		function EpicLibrary1:CreateButton(Name, callback)
			local Button = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")
			local UIPadding = Instance.new("UIPadding")
			Button.Name = Name
			Button.Parent = Tab_2
			Button.BackgroundColor3 = Color3.fromRGB(43, 49, 56)
			Button.Position = UDim2.new(0.0279752482, 0, 0.0247678012, 0)
			Button.Size = UDim2.new(0, 447, 0, 50)
			Button.Font = Enum.Font.SourceSans
			Button.TextColor3 = Color3.fromRGB(221, 221, 221)
			Button.TextScaled = true
			Button.TextSize = 14.000
			Button.TextWrapped = true
			Button.Text = Name
			Button.TextXAlignment = Enum.TextXAlignment.Left
			Button.MouseButton1Down:Connect(function()
				pcall(callback)
			end)

			UICorner.Parent = Button

			UIPadding.Parent = Button
			UIPadding.PaddingLeft = UDim.new(0, 5)
		end
		
		function EpicLibrary1:CreateTextBox(Name, VarName)
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")
			
			TextBox.Name = Name
			TextBox.Parent = Tab_2
			TextBox.BackgroundColor3 = Color3.fromRGB(44, 49, 56)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.189834028, 0, 0.154798761, 0)
			TextBox.Size = UDim2.new(0, 335, 0, 50)
			TextBox.Font = Enum.Font.SourceSans
			TextBox.MultiLine = true
			TextBox.PlaceholderText = Name
			TextBox.Text = ""
			TextBox.TextColor3 = Color3.fromRGB(221, 221, 221)
			TextBox.TextScaled = true
			TextBox.TextSize = 14.000
			TextBox.TextWrapped = true
			TextBox.Changed:Connect(function()
				_G[VarName] = TextBox.Text -- my poor workaround for functions getting the value of the variable, and not the vriable name so I could edit it
			end)

			UICorner_2.Parent = TextBox
		end
		
		return EpicLibrary1
	end
	return epiclibrary
end
