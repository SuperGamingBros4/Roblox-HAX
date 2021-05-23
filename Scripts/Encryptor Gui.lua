if _G.cryptorLoaded == nil then
	_G.cryptorLoaded = true
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Loaded encryptor/decryptor";
		Text = "Press F5 to open";
		Button1 = "Ok";
		duration = 5
	})

    -- Instances:

    local cryptor = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Input = Instance.new("TextBox")
    local UIPadding = Instance.new("UIPadding")
    local Decrypt = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local Encrypt = Instance.new("TextButton")
    local Background = Instance.new("Frame")
    local OutputWindow = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Output = Instance.new("TextBox")
    local UIPadding_2 = Instance.new("UIPadding")
    local OutputClear = Instance.new("TextButton")

    -- Functions:
	_G.Input = ""
	local outputtable = {}
	function encrypt()
	    local input = _G.Input
	    for i=1, input:len() do
		table.insert(outputtable, string.byte(input, i))
	    end
	    local output = table.concat(outputtable, "\\")
	    setclipboard("\\"..output)
	    print("Encrypted, Encrypted script copied to your clipboard.")
	end
	function returndecrypt()
		local output = ""
	    for i, v in pairs(input:split("\\")) do
		if v ~= "" and v ~= nil then
			output = output..v:char()
		end
	    end
	    return output
	end
	function decrypt()
	    local input = _G.Input
	    setclipboard(""..returndecrypt())
	    print("Decrypted, Decrypted script copied to your clipboard.")
	end

	
	game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProccessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.F5 then
            Background.Visible = not Main.Visible
            OutputWindow.Visible = not Main.Visible
            Main.Visible = not Main.Visible
		end
	end)

    function outputen()
        Output.Text = Output.Text.."Encrypted script copied to your clipboard.\n"
    end

    function outputde()
        Output.Text = Output.Text.."Decrypted script copied to your clipboard.\n"
    end
    --Properties:

    cryptor.Name = "cryptor"
    cryptor.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    cryptor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = cryptor
    Main.Active = true
    Main.Visible = false
    Main.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    Main.Position = UDim2.new(0.0145893544, 0, 0.166909248, 0)
    Main.Size = UDim2.new(0, 713, 0, 370)
    Main.ZIndex = 2
    Main.Draggable = true

    Input.Name = "Input"
    Input.Parent = Main
    Input.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
    Input.BorderSizePixel = 0
    Input.Position = UDim2.new(0.0248618536, 0, 0.0386472978, 0)
    Input.Size = UDim2.new(0, 678, 0, 279)
    Input.ClearTextOnFocus = false
    Input.Font = Enum.Font.SourceSans
    Input.MultiLine = true
    Input.PlaceholderText = "Input"
    Input.Text = ""
    Input.TextColor3 = Color3.fromRGB(0, 0, 0)
    Input.TextSize = 24.000
    Input.TextWrapped = true
    Input.TextXAlignment = Enum.TextXAlignment.Left
    Input.TextYAlignment = Enum.TextYAlignment.Top

    UIPadding.Parent = Input
    UIPadding.PaddingLeft = UDim.new(0, 4)
    UIPadding.PaddingRight = UDim.new(0, 4)

    Encrypt.Name = "Encrypt"
    Encrypt.Parent = Main
    Encrypt.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    Encrypt.BorderSizePixel = 0
    Encrypt.Position = UDim2.new(0, 42, 0, 307)
    Encrypt.Size = UDim2.new(0, 200, 0, 50)
    Encrypt.Font = Enum.Font.SourceSans
    Encrypt.Text = "Encrypt"
    Encrypt.TextColor3 = Color3.fromRGB(0, 0, 0)
    Encrypt.TextScaled = true
    Encrypt.TextSize = 14.000
    Encrypt.TextWrapped = true
	Encrypt.MouseButton1Down:Connect(function()
        _G.Input = Input.Text
        encrypt()
        outputen()
    end)

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Main

    Decrypt.Name = "Decrypt"
    Decrypt.Parent = Main
    Decrypt.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    Decrypt.BorderSizePixel = 0
    Decrypt.Position = UDim2.new(0, 471, 0, 307)
    Decrypt.Size = UDim2.new(0, 200, 0, 50)
    Decrypt.Font = Enum.Font.SourceSans
    Decrypt.Text = "Decrypt"
    Decrypt.TextColor3 = Color3.fromRGB(0, 0, 0)
    Decrypt.TextScaled = true
    Decrypt.TextSize = 14.000
    Decrypt.TextWrapped = true
	Decrypt.MouseButton1Down:Connect(function()
        _G.info = Input.Text
        decrypt()
        outputde()
    end)

    Background.Name = "Background"
    Background.Parent = cryptor
    Background.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Background.BackgroundTransparency = 0.650
    Background.Position = UDim2.new(-1.0035336, 0, -0.965888679, 0)
    Background.Size = UDim2.new(10, 0, 10, 0)
    Background.Visible = false
    Background.Active = false
    Background.ZIndex = 0

    OutputWindow.Name = "OutputWindow"
    OutputWindow.Parent = cryptor
    OutputWindow.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    OutputWindow.Position = UDim2.new(0.67448324, 0, 0.19210054, 0)
    OutputWindow.Size = UDim2.new(0, 339, 0, 338)
    OutputWindow.Visible = false
    OutputWindow.Active = true
    OutputWindow.Draggable = true

    UICorner_2.CornerRadius = UDim.new(0, 10)
    UICorner_2.Parent = OutputWindow

    Output.Name = "Output"
    Output.Active = false
    Output.Parent = OutputWindow
    Output.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
    Output.BorderSizePixel = 0
    Output.Position = UDim2.new(0.0484606549, 0, 0.0475230925, 0)
    Output.Size = UDim2.new(0, 304, 0, 276)
    Output.ClearTextOnFocus = false
    Output.Font = Enum.Font.SourceSans
    Output.MultiLine = true
    Output.PlaceholderText = "Output"
    Output.Text = ""
    Output.TextColor3 = Color3.fromRGB(0, 0, 0)
    Output.TextSize = 24.000
    Output.TextEditable = false
    Output.TextWrapped = true
    Output.TextXAlignment = Enum.TextXAlignment.Left
    Output.TextYAlignment = Enum.TextYAlignment.Top

    UIPadding_2.Parent = Output
    UIPadding_2.PaddingLeft = UDim.new(0, 4)
    UIPadding_2.PaddingRight = UDim.new(0, 4)

    OutputClear.Name = "OutputClear"
    OutputClear.Parent = OutputWindow
    OutputClear.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    OutputClear.BorderSizePixel = 0
    OutputClear.Position = UDim2.new(0.256637156, 0, 0.881563544, 0)
    OutputClear.Size = UDim2.new(0, 165, 0, 38)
    OutputClear.Font = Enum.Font.SourceSans
    OutputClear.Text = "Clear"
    OutputClear.TextColor3 = Color3.fromRGB(0, 0, 0)
    OutputClear.TextScaled = true
    OutputClear.TextSize = 14.000
    OutputClear.TextWrapped = true
    OutputClear.MouseButton1Down:Connect(function()
        wait(0.005)
        Output.Text = ""
    end)
end
