-- Gui to Lua
-- Version: 3.2

if _G.ExecutorLoaded == nil then
	_G.ExecutorLoaded = true
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Loaded Internal Executor";
		Text = "Press Insert to open";
		Button1 = "Ok";
		duration = 5
	})
	
	
	-- Instances:
	
	local Executor = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local Input = Instance.new("TextBox")
	local UIPadding = Instance.new("UIPadding")
	local Excecute = Instance.new("TextButton")
	local Clear = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	
	-- Functions:
	
	game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProccessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.Insert then
			if Main.Visible == true then
				Background.Visible = false
				Main.Visible = false
			else 
				Main.Visible = true
				Background.Visible = true
			end
		end
	end)
	
	--Properties:

	Executor.Name = "Executor"
	Executor.Parent = game.CoreGui
	Executor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Background.Name = "Main"
	Background.Parent = Executor
	Background.Active = false
	Background.Visible = false
	Background.BackgroundTransparency = 0.65
	Background.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Background.Position = UDim2.new(-1, 0, -1, 0)
	Background.Size = UDim2.new(10, 0, 10, 0)
	
	Main.Name = "Main"
	Main.Parent = Executor
	Main.Active = true
	Main.Visible = false
	Main.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
	Main.Position = UDim2.new(0.151515156, 0, 0.208201885, 0)
	Main.Size = UDim2.new(0, 713, 0, 370)
	Main.ZIndex = 1
	Main.Draggable = true

	Input.Name = "Input"
	Input.Parent = Main
	Input.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
	Input.BorderSizePixel = 0
	Input.Position = UDim2.new(0.0248618536, 0, 0.0386472978, 0)
	Input.Size = UDim2.new(0, 678, 0, 279)
	Input.Font = Enum.Font.SourceSans
	Input.MultiLine = true
	Input.Text = ""
	Input.PlaceholderText = "Input"
	Input.ClearTextOnFocus = false
	Input.TextColor3 = Color3.fromRGB(0, 0, 0)
	Input.TextSize = 24.000
	Input.TextWrapped = true
	Input.TextXAlignment = Enum.TextXAlignment.Left
	Input.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding.Parent = Input
	UIPadding.PaddingLeft = UDim.new(0, 4)
	UIPadding.PaddingRight = UDim.new(0, 4)

	Excecute.Name = "Excecute"
	Excecute.Parent = Main
	Excecute.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
	Excecute.BorderSizePixel = 0
	Excecute.Position = UDim2.new(0, 42, 0, 307)
	Excecute.Size = UDim2.new(0, 200, 0, 50)
	Excecute.Font = Enum.Font.SourceSans
	Excecute.Text = "Execute"
	Excecute.TextColor3 = Color3.fromRGB(0, 0, 0)
	Excecute.TextScaled = true
	Excecute.TextSize = 14.000
	Excecute.TextWrapped = true
	Excecute.MouseButton1Down:Connect(function()
		loadstring(Input.Text)()
	end)

	Clear.Name = "Clear"
	Clear.Parent = Main
	Clear.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
	Clear.BorderSizePixel = 0
	Clear.Position = UDim2.new(0, 471, 0, 307)
	Clear.Size = UDim2.new(0, 200, 0, 50)
	Clear.Font = Enum.Font.SourceSans
	Clear.Text = "Clear"
	Clear.TextColor3 = Color3.fromRGB(0, 0, 0)
	Clear.TextScaled = true
	Clear.TextSize = 14.000
	Clear.TextWrapped = true
	Clear.MouseButton1Down:Connect(function()
		wait(0.05)
		Input.Text = ""
	end)

	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = Main
end
