local Library = {Flags = {}}-- this is still being developed

--[[
  for use of this library copy: local Main = loadstring(game:HttpGet("raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/new/main/Better_UI_Library.lua"))()
]]


local GUILibrary = Instance.new("ScreenGui")

GUILibrary.Name = "GUI Library"
GUILibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GUILibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function resize(ScrollGui)
	local Size = ScrollGui.UIListLayout.AbsoluteContentSize
	ScrollGui.CanvasSize = UDim2.new(0, 0, 0, Size.Y)
end

function Library:CreateWindow(Name)
	
	local DragPart = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local DropDown = Instance.new("Frame")
	local MainFrame = Instance.new("Frame")
	local TabsList = Instance.new("ScrollingFrame")
	local TabsLabel = Instance.new("TextLabel")
	local TabsContainer = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TopBar = Instance.new("Frame")
	local TabName = Instance.new("TextLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	
	DragPart.Name = "DragPart"
	DragPart.Parent = GUILibrary
	DragPart.BackgroundColor3 = Color3.fromRGB(48, 49, 50)
	DragPart.BorderSizePixel = 0
	DragPart.Position = UDim2.new(0.280036986, 0, 0.297906578, 0)
	DragPart.Size = UDim2.new(0, 590, 0, 19)
	DragPart.Active = true
	DragPart.Draggable = true

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = DragPart
	MainFrame.BackgroundColor3 = Color3.fromRGB(56, 57, 58)
	MainFrame.BorderSizePixel = 0
	MainFrame.ClipsDescendants = true
	MainFrame.Position = UDim2.new(0, 0, 1.00000083, 0)
	MainFrame.Size = UDim2.new(0, 590, 0, 318)

	TabsContainer.Name = "TabsContainer"
	TabsContainer.Parent = MainFrame
	TabsContainer.BackgroundColor3 = Color3.fromRGB(63, 64, 65)
	TabsContainer.BorderSizePixel = 0
	TabsContainer.Position = UDim2.new(0.213254243, 0, 0.0660377368, 0)
	TabsContainer.Size = UDim2.new(0, 477, 0, 329)
	TabsContainer.ZIndex = 2

	UICorner.CornerRadius = UDim.new(0, 14)
	UICorner.Parent = TabsContainer

	TopBar.Name = "TopBar"
	TopBar.Parent = MainFrame
	TopBar.BackgroundColor3 = Color3.fromRGB(56, 57, 58)
	TopBar.BorderColor3 = Color3.fromRGB(42, 43, 44)
	TopBar.Position = UDim2.new(-0.0171428099, 0, -0.0220126268, 0)
	TopBar.Size = UDim2.new(0, 613, 0, 28)
	TopBar.ZIndex = 2

	TabsLabel.Name = "TabsLabel"
	TabsLabel.Parent = TopBar
	TabsLabel.BackgroundColor3 = Color3.fromRGB(56, 57, 58)
	TabsLabel.BorderColor3 = Color3.fromRGB(42, 43, 44)
	TabsLabel.Position = UDim2.new(0, 0, 0.25, 0)
	TabsLabel.Size = UDim2.new(0, 135, 0, 21)
	TabsLabel.Font = Enum.Font.SourceSans
	TabsLabel.Text = "Tabs"
	TabsLabel.TextColor3 = Color3.fromRGB(231, 231, 231)
	TabsLabel.TextSize = 24.000

	TabName.Name = "TabName"
	TabName.Parent = TopBar
	TabName.BackgroundColor3 = Color3.fromRGB(56, 57, 58)
	TabName.BorderColor3 = Color3.fromRGB(42, 43, 44)
	TabName.Position = UDim2.new(0.221752465, 0, 0.25, 0)
	TabName.Size = UDim2.new(0, 476, 0, 21)
	TabName.Font = Enum.Font.SourceSans
	TabName.Text = ""
	TabName.TextColor3 = Color3.fromRGB(231, 231, 231)
	TabName.TextSize = 24.000

	TabsList.Name = "TabsList"
	TabsList.Parent = MainFrame
	TabsList.Active = true
	TabsList.BackgroundColor3 = Color3.fromRGB(52, 53, 54)
	TabsList.BorderSizePixel = 0
	TabsList.Position = UDim2.new(0, 0, 0.0660377368, 0)
	TabsList.Size = UDim2.new(0, 140, 0, 297)
	TabsList.AutomaticCanvasSize = Enum.AutomaticSize.Y
	TabsList.ScrollBarImageTransparency = 1
	TabsList.ScrollBarThickness = 6
	TabsList.ChildAdded:Connect(function()
		resize(TabsList)
	end)

	UIListLayout_2.Parent = TabsList
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 2)

	UIPadding_2.Parent = TabsList
	UIPadding_2.PaddingLeft = UDim.new(0, 4)

	Title.Name = "Title"
	Title.Parent = DragPart
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0190476198, 0, 0, 0)
	Title.Size = UDim2.new(0, 443, 0, 19)
	Title.Font = Enum.Font.SourceSans
	Title.Text = Name
	Title.TextColor3 = Color3.fromRGB(213, 213, 213)
	Title.TextSize = 20.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	DropDown.Name = "DropDown"
	DropDown.Parent = DragPart
	DropDown.BackgroundColor3 = Color3.fromRGB(41, 42, 43)
	DropDown.BorderSizePixel = 0
	DropDown.Position = UDim2.new(0, 0, 1, 0)
	DropDown.Size = UDim2.new(0, 590, 0, 0)
	
	local Windows = {}
	function Windows:CreateTab(Name)
		local Tab = Instance.new("ScrollingFrame")
		local TabButton = Instance.new("TextButton")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		
		Tab.Name = Name
		Tab.Parent = TabsContainer
		Tab.Active = true
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.BorderSizePixel = 0
		Tab.Position = UDim2.new(0, 0, 0.027, 0)
		Tab.Size = UDim2.new(0, 464, 0, 288)
		Tab.ZIndex = 2
		Tab.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Tab.ScrollBarThickness = 6
		Tab.ScrollBarImageTransparency = 1
		Tab.Visible = false
		Tab.ChildAdded:Connect(function()
			resize(Tab)
		end)

		TabButton.Name = Name.." Tab Button"
		TabButton.Parent = TabsList
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.Position = UDim2.new(0.03539823, 0, 0, 0)
		TabButton.Size = UDim2.new(0, 99, 0, 25)
		TabButton.Font = Enum.Font.SourceSans
		TabButton.Text = Name
		TabButton.TextColor3 = Color3.fromRGB(231, 231, 231)
		TabButton.TextSize = 20.000
		TabButton.TextXAlignment = Enum.TextXAlignment.Left
		TabButton.MouseButton1Down:Connect(function()
			for i, v in pairs(TabsContainer:GetChildren()) do
				if v:IsA("ScrollingFrame") then
					v.Visible = false
				end
			end
			Tab.Visible = true
			TabName.Text = Tab.Name
		end)

		UIListLayout.Parent = Tab
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.Padding = UDim.new(0, 8)

		UIPadding.Parent = Tab
		UIPadding.PaddingBottom = UDim.new(0, 16)
		UIPadding.PaddingTop = UDim.new(0, 8)
		
		local Tabs = {}
		function Tabs:AddToggle(Flags)
			local Toggle = Instance.new("TextButton")
			local SwitchBG = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local SwitchHandle = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			
			local toggled = false
			local Name = Flags["Name"] or "Toggle"
			local callback = Flags["callback"] or function()end
			
			local TS = game:GetService("TweenService")
			local ToggleStyle = TweenInfo.new(
				0.25, -- Time
				Enum.EasingStyle.Quad, -- Style
				Enum.EasingDirection.InOut, -- Direction
				0, -- repeats
				false, -- goes back
				0 -- 
			)

			Toggle.Name = Name
			Toggle.Parent = Tab
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 1.000
			Toggle.Position = UDim2.new(0.0129310349, 0, 0, 0)
			Toggle.Size = UDim2.new(0, 438, 0, 43)
			Toggle.ZIndex = 5
			Toggle.Font = Enum.Font.SourceSans
			Toggle.Text = Name
			Toggle.TextColor3 = Color3.fromRGB(231, 231, 231)
			Toggle.TextSize = 30.000
			Toggle.TextWrapped = true
			Toggle.TextXAlignment = Enum.TextXAlignment.Left
			Toggle.MouseButton1Down:Connect(function()
				if (toggled) then
					toggled = false
					TS:Create(SwitchBG, ToggleStyle, {BackgroundColor3 = Color3.fromRGB(56 ,56, 56);}):Play()
					TS:Create(SwitchHandle, ToggleStyle, {Position = UDim2.new(0.075,0, 0.062, 0);}):Play()
				else
					toggled = true
					TS:Create(SwitchBG, ToggleStyle, {BackgroundColor3 = Color3.fromRGB(59, 165, 93);}):Play()
					TS:Create(SwitchHandle, ToggleStyle, {Position = UDim2.new(0.55,0, 0.062, 0);}):Play()
				end
				callback(toggled)
			end)

			SwitchBG.Name = "SwitchBG"
			SwitchBG.Parent = Toggle
			SwitchBG.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
			SwitchBG.Position = UDim2.new(0.776255727, 0, 0.255813956, 0)
			SwitchBG.Size = UDim2.new(0, 43, 0, 22)
			SwitchBG.ZIndex = 6

			UICorner_2.CornerRadius = UDim.new(0, 16)
			UICorner_2.Parent = SwitchBG

			SwitchHandle.Name = "SwitchHandle"
			SwitchHandle.Parent = SwitchBG
			SwitchHandle.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
			SwitchHandle.Position = UDim2.new(0.075000003, 0, 0.061999999, 0)
			SwitchHandle.Size = UDim2.new(0, 19, 0, 19)
			SwitchHandle.ZIndex = 10

			UICorner_3.CornerRadius = UDim.new(1, 0)
			UICorner_3.Parent = SwitchHandle
		end
		
		function Tabs:AddButton(Flags)
			local Toggle = Instance.new("TextButton")
			
			local Name = Flags["Name"] or "Button"
			local callback = Flags["callback"] or function()end
			
			Toggle.Name = Name
			Toggle.Parent = Tab
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 1.000
			Toggle.Position = UDim2.new(0.0129310349, 0, 0, 0)
			Toggle.Size = UDim2.new(0, 438, 0, 43)
			Toggle.ZIndex = 5
			Toggle.Font = Enum.Font.SourceSans
			Toggle.Text = Name
			Toggle.TextColor3 = Color3.fromRGB(231, 231, 231)
			Toggle.TextSize = 30.000
			Toggle.TextWrapped = true
			Toggle.TextXAlignment = Enum.TextXAlignment.Left
			Toggle.MouseButton1Down:Connect(function()
				callback()
			end)
		end
		
		function Tabs:AddTextBox(Flags)
			local TextBox = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")
			local UIPadding = Instance.new("UIPadding")
			
			local Flag = Flags["Flag"] or ""
			local Name = Flags["Name"] or "TextBox"
			local clearonfocus = Flags["FocusClear"] or false
			
			TextBox.Name = Name
			TextBox.Parent = Tab
			TextBox.BackgroundColor3 = Color3.fromRGB(55, 56, 57)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.0797413811, 0, 0.360424042, 0)
			TextBox.Size = UDim2.new(0, 382, 0, 50)
			TextBox.Font = Enum.Font.SourceSans
			TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
			TextBox.PlaceholderText = Name
			TextBox.ClearTextOnFocus = clearonfocus
			TextBox.Text = ""
			TextBox.TextColor3 = Color3.fromRGB(231, 231, 231)
			TextBox.TextScaled = true
			TextBox.TextXAlignment = Enum.TextXAlignment.Left
			TextBox.Changed:Connect(function()
				Library.Flags[Flag] = TextBox.Text
			end)

			UICorner.CornerRadius = UDim.new(0, 14)
			UICorner.Parent = TextBox

			UIPadding.Parent = TextBox
			UIPadding.PaddingLeft = UDim.new(0, 8)
		end
		
		function Tabs:AddText(Name)
			local TextLabel = Instance.new("TextLabel")
			
			local Name = Name or "Text"
			
			TextLabel.Name = Name
			TextLabel.Parent = Tab
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0894396529, 0, 0.360424042, 0)
			TextLabel.Size = UDim2.new(0, 381, 0, 50)
			TextLabel.ZIndex = 6
			TextLabel.Text = Name
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.TextColor3 = Color3.fromRGB(231, 231, 231)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true
		end

		function Tabs:AddDropDown(Flags)
			local DropDown = Instance.new("Frame")
			local DropDownActivator = Instance.new("TextButton")
			local TextLabel = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local DropDownPart = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")

			local Name = Flags["Name"] or "DropDown"
			local Selection = Flags["Flag"] or ""
			local Dropped = false
			local function setselection(selected)
				Library.Flags[Selection] = selected
				DropDownActivator.Text = selected
			end

			DropDown.Name = Name
			DropDown.Parent = Tab
			DropDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropDown.BackgroundTransparency = 1.000
			DropDown.BorderSizePixel = 0
			DropDown.Position = UDim2.new(0.0894396529, 0, 0.319444448, 0)
			DropDown.Size = UDim2.new(0, 381, 0, 196)
			DropDown.ZIndex = 6

			DropDownActivator.Name = "DropDownActivator"
			DropDownActivator.Parent = DropDown
			DropDownActivator.BackgroundColor3 = Color3.fromRGB(48, 48, 50)
			DropDownActivator.BorderColor3 = Color3.fromRGB(45, 45, 47)
			DropDownActivator.Position = UDim2.new(0.120734908, 0, 0.0754483268, 0)
			DropDownActivator.Size = UDim2.new(0, 301, 0, 50)
			DropDownActivator.ZIndex = 7
			DropDownActivator.Font = Enum.Font.SourceSans
			DropDownActivator.Text = Name
			DropDownActivator.TextColor3 = Color3.fromRGB(231, 231, 231)
			DropDownActivator.TextSize = 30.000
			DropDownActivator.TextWrapped = true
			DropDownActivator.TextXAlignment = Enum.TextXAlignment.Left
			DropDownActivator.MouseButton1Down:Connect(function()
				if (Dropped) then
					Dropped = false
					TextLabel.Text = "+"
					DropDownPart:TweenSize(UDim2.new(0, 301, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
				else
					Dropped = true
					TextLabel.Text = "-"
					DropDownPart:TweenSize(UDim2.new(0, 301, 0, 118), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
				end
			end)

			TextLabel.Parent = DropDownActivator
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0.911866307, 0, 0.0808001757, 0)
			TextLabel.Size = UDim2.new(0, 45, 0, 39)
			TextLabel.ZIndex = 10
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = "+"
			TextLabel.TextColor3 = Color3.fromRGB(231, 231, 231)
			TextLabel.TextSize = 50.000

			UIPadding.Parent = DropDownActivator
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingRight = UDim.new(0, 20)

			DropDownPart.Name = "DropDownPart"
			DropDownPart.Parent = DropDown
			DropDownPart.Active = true
			DropDownPart.BackgroundColor3 = Color3.fromRGB(48, 48, 50)
			DropDownPart.BorderColor3 = Color3.fromRGB(45, 45, 47)
			DropDownPart.Position = UDim2.new(0.120734908, 0, 0.326530606, 0)
			DropDownPart.ScrollBarImageTransparency = 1
			DropDownPart.AutomaticCanvasSize = Enum.AutomaticSize.Y
			DropDownPart.Size = UDim2.new(0, 301, 0, 0)
			DropDownPart.ZIndex = 6
			DropDownPart.ChildAdded:Connect(function()
				resize(DropDownPart)
			end)

			UIListLayout.Parent = DropDownPart
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 8)

			local DropDownParts = {}

			function DropDownParts:AddSelection(Name)
				local DropDownSelection = Instance.new("TextButton")
				local Name = Name or "DropDownSelection"

				DropDownSelection.Name = Name
				DropDownSelection.Parent = DropDownPart
				DropDownSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropDownSelection.BackgroundTransparency = 1.000
				DropDownSelection.Position = UDim2.new(0.00332225906, 0, 0.0106382975, 0)
				DropDownSelection.Size = UDim2.new(0, 300, 0, 50)
				DropDownSelection.ZIndex = 10
				DropDownSelection.Font = Enum.Font.SourceSans
				DropDownSelection.Text = " " .. Name
				DropDownSelection.TextColor3 = Color3.fromRGB(231, 231, 231)
				DropDownSelection.TextScaled = true
				DropDownSelection.TextSize = 14.000
				DropDownSelection.TextWrapped = true
				DropDownSelection.TextXAlignment = Enum.TextXAlignment.Left
				DropDownSelection.MouseButton1Down:Connect(function()
					setselection(Name)
				end)
			end
			return DropDownParts
		end
		
		function Tabs:AddDropDownList(Flags)
			local DropDown = Instance.new("Frame")
			local DropDownActivator = Instance.new("TextButton")
			local TextLabel = Instance.new("TextLabel")
			local UIPadding = Instance.new("UIPadding")
			local DropDownPart = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")

			local Name = Flags["Name"] or "DropDown"
			local Selection = Flags["Flag"] or ""
			local Dropped = false
			
			Library.Flags[Selection] = {}
						
			local function add(selected)
				local Text = DropDownActivator.Text
				if (Text == Name) then
					Text = ""
				end
				Library.Flags[Selection][selected] = true
				if (Text ~= "") then
					Text = Text .. ", "
				end
				DropDownActivator.Text = Text .. selected
			end
			
			local function remove(selected)
				Library.Flags[Selection][selected] = false
				local Text = DropDownActivator.Text
				Text = string.gsub(Text, selected .. ", ", "")
				Text = string.gsub(Text, ", " .. selected, "")
				Text = string.gsub(Text, selected, "")
				if (Text == "") then
					Text = Name
				end
				DropDownActivator.Text = Text
			end

			DropDown.Name = Name
			DropDown.Parent = Tab
			DropDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropDown.BackgroundTransparency = 1.000
			DropDown.BorderSizePixel = 0
			DropDown.Position = UDim2.new(0.0894396529, 0, 0.319444448, 0)
			DropDown.Size = UDim2.new(0, 381, 0, 196)
			DropDown.ZIndex = 6

			DropDownActivator.Name = "DropDownActivator"
			DropDownActivator.Parent = DropDown
			DropDownActivator.BackgroundColor3 = Color3.fromRGB(48, 48, 50)
			DropDownActivator.BorderColor3 = Color3.fromRGB(45, 45, 47)
			DropDownActivator.Position = UDim2.new(0.120734908, 0, 0.0754483268, 0)
			DropDownActivator.Size = UDim2.new(0, 301, 0, 50)
			DropDownActivator.ZIndex = 7
			DropDownActivator.Font = Enum.Font.SourceSans
			DropDownActivator.Text = Name
			DropDownActivator.TextColor3 = Color3.fromRGB(231, 231, 231)
			DropDownActivator.TextSize = 30.000
			DropDownActivator.TextWrapped = true
			DropDownActivator.TextXAlignment = Enum.TextXAlignment.Left
			DropDownActivator.MouseButton1Down:Connect(function()
				if (Dropped) then
					Dropped = false
					TextLabel.Text = "+"
					DropDownPart:TweenSize(UDim2.new(0, 301, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
				else
					Dropped = true
					TextLabel.Text = "-"
					DropDownPart:TweenSize(UDim2.new(0, 301, 0, 118), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
				end
			end)

			TextLabel.Parent = DropDownActivator
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.Position = UDim2.new(0.911866307, 0, 0.0808001757, 0)
			TextLabel.Size = UDim2.new(0, 45, 0, 39)
			TextLabel.ZIndex = 10
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = "+"
			TextLabel.TextColor3 = Color3.fromRGB(231, 231, 231)
			TextLabel.TextSize = 50.000

			UIPadding.Parent = DropDownActivator
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingRight = UDim.new(0, 20)

			DropDownPart.Name = "DropDownPart"
			DropDownPart.Parent = DropDown
			DropDownPart.Active = true
			DropDownPart.BackgroundColor3 = Color3.fromRGB(48, 48, 50)
			DropDownPart.BorderColor3 = Color3.fromRGB(45, 45, 47)
			DropDownPart.Position = UDim2.new(0.120734908, 0, 0.326530606, 0)
			DropDownPart.ScrollBarImageTransparency = 1
			DropDownPart.AutomaticCanvasSize = Enum.AutomaticSize.Y
			DropDownPart.Size = UDim2.new(0, 301, 0, 0)
			DropDownPart.ZIndex = 6
			DropDownPart.ChildAdded:Connect(function()
				resize(DropDownPart)
			end)
			
			UIListLayout.Parent = DropDownPart
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 8)

			local DropDownParts = {}

			function DropDownParts:AddSelection(Name)
				local DropDownSelection = Instance.new("TextButton")
				
				local Name = Name or "DropDownSelection"
				local toggled = false

				DropDownSelection.Name = Name
				DropDownSelection.Parent = DropDownPart
				DropDownSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropDownSelection.BackgroundTransparency = 1.000
				DropDownSelection.Position = UDim2.new(0.00332225906, 0, 0.0106382975, 0)
				DropDownSelection.Size = UDim2.new(0, 300, 0, 50)
				DropDownSelection.ZIndex = 10
				DropDownSelection.Font = Enum.Font.SourceSans
				DropDownSelection.Text = " " .. Name
				DropDownSelection.TextColor3 = Color3.fromRGB(231, 231, 231)
				DropDownSelection.TextScaled = true
				DropDownSelection.TextSize = 14.000
				DropDownSelection.TextWrapped = true
				DropDownSelection.TextXAlignment = Enum.TextXAlignment.Left
				DropDownSelection.MouseButton1Down:Connect(function()
					if (toggled) then
						remove(Name)
						toggled = false
					else
						add(Name)
						toggled = true
					end
				end)
				
				local ToggleIndicator = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")

				ToggleIndicator.Name = "ToggleIndicator"
				ToggleIndicator.Parent = DropDownSelection
				ToggleIndicator.BackgroundColor3 = Color3.fromRGB(222, 0, 0)
				ToggleIndicator.Position = UDim2.new(0.853333354, 0, 0.200000048, 0)
				ToggleIndicator.Size = UDim2.new(0, 30, 0, 30)
				ToggleIndicator.ZIndex = 20

				UICorner.CornerRadius = UDim.new(0, 10)
				UICorner.Parent = ToggleIndicator
			end
			return DropDownParts
		end
		
		return Tabs
	end
	return Windows
end
return Library