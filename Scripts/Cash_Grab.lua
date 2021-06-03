-- Gui to Lua
-- Version: 3.2

-- Instances:

local CashGrabSimulator = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Main = Instance.new("Frame")
local Levitation = Instance.new("TextButton")
local UIPadding = Instance.new("UIPadding")
local Indicator = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local AutoBind = Instance.new("TextButton")
local UIPadding_2 = Instance.new("UIPadding")
local Indicator_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local InstantGrab = Instance.new("TextButton")
local UIPadding_11 = Instance.new("UIPadding")
local Indicator_10 = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local UIPadding_3 = Instance.new("UIPadding")
local TopRim = Instance.new("Frame")
local Settings = Instance.new("Frame")
local AutoGrabNoobs = Instance.new("TextButton")
local UIPadding_4 = Instance.new("UIPadding")
local Indicator_3 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local AutoGrabCasuals = Instance.new("TextButton")
local UIPadding_5 = Instance.new("UIPadding")
local Indicator_4 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local AutoGrabPros = Instance.new("TextButton")
local UIPadding_6 = Instance.new("UIPadding")
local Indicator_5 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local AutoGrabEnthusiasts = Instance.new("TextButton")
local UIPadding_7 = Instance.new("UIPadding")
local Indicator_6 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local AutoGrabLegends = Instance.new("TextButton")
local UIPadding_8 = Instance.new("UIPadding")
local Indicator_7 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local AutoGrabGods = Instance.new("TextButton")
local UIPadding_9 = Instance.new("UIPadding")
local Indicator_8 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local AutoGrabAdmins = Instance.new("TextButton")
local UIPadding_10 = Instance.new("UIPadding")
local Indicator_9 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Main_2 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Settings_2 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local ClosureFade = Instance.new("Frame")

--Variables:
local Customers = game:GetService("Workspace").customers

_G.AutoBind = false
_G.Levitate = false
_G.Closing = false
_G.InstantGrab = false

_G.SelectedTiers = {

	Noob = false,
	Casual = false,
	Enthusiast = false,
	Pro = false,
	Legend = false,
	God = false,
	Admin = false
}

--Functions:

function OpenClose()
	if (MainFrame.Visible) and not (_G.Closing) then
		_G.Closing = true
		ClosureFade:TweenSize(UDim2.new(0, 435, 0, 320), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.47)
		MainFrame:TweenSizeAndPosition(UDim2.new(0, 421, 0, 0), MainFrame.Position + UDim2.new(0, 0, 0, 316), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.47)
		MainFrame.Visible = false
		_G.Closing = false
	elseif not (_G.Closing) then
		MainFrame.Visible = true
		MainFrame:TweenSizeAndPosition(UDim2.new(0, 421, 0, 316), MainFrame.Position - UDim2.new(0, 0, 0, 316), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.47)
		ClosureFade:TweenSize(UDim2.new(0, 435, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
	end
end

local mouse = game:GetService("Players").LocalPlayer:GetMouse()
game:GetService("UserInputService").InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and (_G.InstantGrab) then
		local target = mouse.Target
		if (target.Parent:IsDescendantOf(game:GetService("Workspace").customers)) then
			game:GetService("ReplicatedStorage").remotes.bindCustomer:FireServer(target.Parent)
		end
	end
	if input.KeyCode == Enum.KeyCode.RightControl then
		OpenClose()
	end
end)

function getcustomers()
	local GUI = game:GetService("Players").LocalPlayer.PlayerGui.screenGui
	local Ratio = GUI.customerList.header.textLabel.Text:split(" ")[1]
	local Limit = Ratio:split("/")[2]
	local current = Ratio:split("/")[1]
	return {tonumber(current), tonumber(Limit)}
end

function BindCustomer(Customer)
	local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Customer.HumanoidRootPart.Position).magnitude
	if Customer.properties.owner.Value == nil then
		if distance <= 150 then
			game:GetService("ReplicatedStorage").remotes.bindCustomer:FireServer(Customer)
			wait(1)
		end
	end
end

function Toggle(Button, On)
	if (On) then
		local TS = game:GetService("TweenService")
		TS:Create(Button.Indicator, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundColor3 = Color3.fromRGB(59, 255, 0)}):Play()
	else
		local TS = game:GetService("TweenService")
		TS:Create(Button.Indicator, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {BackgroundColor3 = Color3.fromRGB(255, 0, 4)}):Play()
	end
end

function SwitchTab(Tab)
	if Tab.Visible ~= true then
		TopRim:TweenSize(UDim2.new(0, 435, 0, 316), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.5)
		Main.Visible = false
		Settings.Visible = false
		wait(0.15)
		Tab.Visible = true
		wait(0.1)
		TopRim:TweenSize(UDim2.new(0, 435, 0, 37), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
	end
end

--Coroutines:
if _G.coroutinealready ~= true then
	_G.coroutinealready = true
	coroutine.resume(coroutine.create(function()
		while true do
			if (_G.AutoBind) then
				_G.Running = true
				pcall(function()
					for i,v in pairs(Customers:GetChildren()) do
						if not (_G.AutoBind) then break end
						if getcustomers()[1] ~= getcustomers()[2] then
							if v.properties.wallet.Value ~= 0 then
								local Tier = tostring(v.properties.tier.Value)
								if (_G.SelectedTiers[Tier]) then
									BindCustomer(v)
								end
							end
						end
					end
				end)
			end
			wait(0.01)
		end
	end))

	coroutine.resume(coroutine.create(function()
		while true do
			if (_G.Levitate) then
				game:GetService("ReplicatedStorage").remotes.emote:FireServer()
			end
			wait(0.01)
		end
	end))
end

--Properties:

CashGrabSimulator.Name = "Cash Grab Simulator"
CashGrabSimulator.Parent = game:GetService("CoreGui")
CashGrabSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = CashGrabSimulator
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.153303966, 0, 0.236714974, 0)
MainFrame.Size = UDim2.new(0, 421, 0, 316)
MainFrame.Draggable = true

Main.Name = "Main"
Main.Parent = MainFrame
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Size = UDim2.new(0, 421, 0, 309)

Levitation.Name = "Levitation"
Levitation.Parent = Main
Levitation.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Levitation.BorderColor3 = Color3.fromRGB(255, 115, 0)
Levitation.BorderSizePixel = 0
Levitation.Position = UDim2.new(0.0308788605, 0, 0.195705444, 0)
Levitation.Size = UDim2.new(0, 393, 0, 42)
Levitation.Font = Enum.Font.SourceSans
Levitation.Text = "Stun Customers"
Levitation.TextColor3 = Color3.fromRGB(255, 115, 0)
Levitation.TextScaled = true
Levitation.TextSize = 14.000
Levitation.TextWrapped = true
Levitation.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Levitation
UIPadding.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator.Name = "Indicator"
Indicator.Parent = Levitation
Indicator.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator.BorderSizePixel = 0
Indicator.ClipsDescendants = true
Indicator.Position = UDim2.new(0.862150133, 0, 0.119047254, 0)
Indicator.Size = UDim2.new(0, 36, 0, 31)

UICorner.Parent = Indicator

AutoBind.Name = "AutoBind"
AutoBind.Parent = Main
AutoBind.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoBind.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoBind.BorderSizePixel = 0
AutoBind.Position = UDim2.new(0.0308788605, 0, 0.371976614, 0)
AutoBind.Size = UDim2.new(0, 393, 0, 42)
AutoBind.Font = Enum.Font.SourceSans
AutoBind.Text = "Auto Grab Customers"
AutoBind.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoBind.TextScaled = true
AutoBind.TextSize = 14.000
AutoBind.TextWrapped = true
AutoBind.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_2.Parent = AutoBind
UIPadding_2.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_2.Name = "Indicator"
Indicator_2.Parent = AutoBind
Indicator_2.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_2.BorderSizePixel = 0
Indicator_2.ClipsDescendants = true
Indicator_2.Position = UDim2.new(0.862150133, 0, 0.119047254, 0)
Indicator_2.Size = UDim2.new(0, 36, 0, 31)

UICorner_2.Parent = Indicator_2

InstantGrab.Name = "AutoBind"
InstantGrab.Parent = Main
InstantGrab.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
InstantGrab.BorderColor3 = Color3.fromRGB(255, 115, 0)
InstantGrab.BorderSizePixel = 0
InstantGrab.Position = UDim2.new(0.031, 0, 0.537, 0)
InstantGrab.Size = UDim2.new(0, 393, 0, 42)
InstantGrab.Font = Enum.Font.SourceSans
InstantGrab.Text = "Instant Manual Grab"
InstantGrab.TextColor3 = Color3.fromRGB(255, 115, 0)
InstantGrab.TextScaled = true
InstantGrab.TextSize = 14.000
InstantGrab.TextWrapped = true
InstantGrab.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_11.Parent = InstantGrab
UIPadding_11.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_10.Name = "Indicator"
Indicator_10.Parent = InstantGrab
Indicator_10.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_10.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_10.BorderSizePixel = 0
Indicator_10.ClipsDescendants = true
Indicator_10.Position = UDim2.new(0.862150133, 0, 0.119047254, 0)
Indicator_10.Size = UDim2.new(0, 36, 0, 31)

UICorner_12.Parent = Indicator_10

TopRim.Name = "TopRim"
TopRim.Parent = MainFrame
TopRim.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TopRim.BorderColor3 = Color3.fromRGB(42, 42, 42)
TopRim.Position = UDim2.new(-0.0189995486, 0, -0.00167779077, 0)
TopRim.Size = UDim2.new(0, 435, 0, 37)
TopRim.ZIndex = 2

Settings.Name = "Settings"
Settings.Parent = MainFrame
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.Position = UDim2.new(0, 0, -0.00167779077, 0)
Settings.Size = UDim2.new(0, 421, 0, 309)
Settings.Visible = false

AutoGrabNoobs.Name = "AutoGrab Noobs"
AutoGrabNoobs.Parent = Settings
AutoGrabNoobs.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoGrabNoobs.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabNoobs.BorderSizePixel = 0
AutoGrabNoobs.Position = UDim2.new(0.0308788605, 0, 0.160544291, 0)
AutoGrabNoobs.Size = UDim2.new(0, 393, 0, 30)
AutoGrabNoobs.Font = Enum.Font.SourceSans
AutoGrabNoobs.Text = "Auto Grab Noobs"
AutoGrabNoobs.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabNoobs.TextScaled = true
AutoGrabNoobs.TextSize = 14.000
AutoGrabNoobs.TextWrapped = true
AutoGrabNoobs.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_4.Parent = AutoGrabNoobs
UIPadding_4.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_3.Name = "Indicator"
Indicator_3.Parent = AutoGrabNoobs
Indicator_3.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_3.BorderSizePixel = 0
Indicator_3.ClipsDescendants = true
Indicator_3.Position = UDim2.new(0.868956327, 0, 0.151551813, 0)
Indicator_3.Size = UDim2.new(0, 36, 0, 22)

UICorner_3.Parent = Indicator_3

AutoGrabCasuals.Name = "AutoGrab Casuals"
AutoGrabCasuals.Parent = Settings
AutoGrabCasuals.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoGrabCasuals.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabCasuals.BorderSizePixel = 0
AutoGrabCasuals.Position = UDim2.new(0.0308788605, 0, 0.283914149, 0)
AutoGrabCasuals.Size = UDim2.new(0, 393, 0, 30)
AutoGrabCasuals.Font = Enum.Font.SourceSans
AutoGrabCasuals.Text = "Auto Grab Casuals"
AutoGrabCasuals.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabCasuals.TextScaled = true
AutoGrabCasuals.TextSize = 14.000
AutoGrabCasuals.TextWrapped = true
AutoGrabCasuals.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_5.Parent = AutoGrabCasuals
UIPadding_5.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_4.Name = "Indicator"
Indicator_4.Parent = AutoGrabCasuals
Indicator_4.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_4.BorderSizePixel = 0
Indicator_4.ClipsDescendants = true
Indicator_4.Position = UDim2.new(0.868956327, 0, 0.151283264, 0)
Indicator_4.Size = UDim2.new(0, 36, 0, 22)

UICorner_4.Parent = Indicator_4

AutoGrabPros.Name = "AutoGrab Pros"
AutoGrabPros.Parent = Settings
AutoGrabPros.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoGrabPros.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabPros.BorderSizePixel = 0
AutoGrabPros.Position = UDim2.new(0.0308788605, 0, 0.528773963, 0)
AutoGrabPros.Size = UDim2.new(0, 393, 0, 30)
AutoGrabPros.Font = Enum.Font.SourceSans
AutoGrabPros.Text = "Auto Grab Pros"
AutoGrabPros.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabPros.TextScaled = true
AutoGrabPros.TextSize = 14.000
AutoGrabPros.TextWrapped = true
AutoGrabPros.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_6.Parent = AutoGrabPros
UIPadding_6.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_5.Name = "Indicator"
Indicator_5.Parent = AutoGrabPros
Indicator_5.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_5.BorderSizePixel = 0
Indicator_5.ClipsDescendants = true
Indicator_5.Position = UDim2.new(0.868956327, 0, 0.156701654, 0)
Indicator_5.Size = UDim2.new(0, 36, 0, 22)

UICorner_5.Parent = Indicator_5

AutoGrabEnthusiasts.Name = "AutoGrab Enthusiasts"
AutoGrabEnthusiasts.Parent = Settings
AutoGrabEnthusiasts.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoGrabEnthusiasts.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabEnthusiasts.BorderSizePixel = 0
AutoGrabEnthusiasts.Position = UDim2.new(0.0308788605, 0, 0.405332208, 0)
AutoGrabEnthusiasts.Size = UDim2.new(0, 393, 0, 30)
AutoGrabEnthusiasts.Font = Enum.Font.SourceSans
AutoGrabEnthusiasts.Text = "Auto Grab Enthusiasts"
AutoGrabEnthusiasts.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabEnthusiasts.TextScaled = true
AutoGrabEnthusiasts.TextSize = 14.000
AutoGrabEnthusiasts.TextWrapped = true
AutoGrabEnthusiasts.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_7.Parent = AutoGrabEnthusiasts
UIPadding_7.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_6.Name = "Indicator"
Indicator_6.Parent = AutoGrabEnthusiasts
Indicator_6.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_6.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_6.BorderSizePixel = 0
Indicator_6.ClipsDescendants = true
Indicator_6.Position = UDim2.new(0.868956327, 0, 0.144499719, 0)
Indicator_6.Size = UDim2.new(0, 36, 0, 22)

UICorner_6.Parent = Indicator_6

AutoGrabLegends.Name = "AutoGrab Legends"
AutoGrabLegends.Parent = Settings
AutoGrabLegends.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoGrabLegends.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabLegends.BorderSizePixel = 0
AutoGrabLegends.Position = UDim2.new(0.0285035633, 0, 0.646435738, 0)
AutoGrabLegends.Size = UDim2.new(0, 393, 0, 30)
AutoGrabLegends.Font = Enum.Font.SourceSans
AutoGrabLegends.Text = "Auto Grab Legends"
AutoGrabLegends.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabLegends.TextScaled = true
AutoGrabLegends.TextSize = 14.000
AutoGrabLegends.TextWrapped = true
AutoGrabLegends.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_8.Parent = AutoGrabLegends
UIPadding_8.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_7.Name = "Indicator"
Indicator_7.Parent = AutoGrabLegends
Indicator_7.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_7.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_7.BorderSizePixel = 0
Indicator_7.ClipsDescendants = true
Indicator_7.Position = UDim2.new(0.868956327, 0, 0.162671909, 0)
Indicator_7.Size = UDim2.new(0, 36, 0, 22)

UICorner_7.Parent = Indicator_7

AutoGrabGods.Name = "AutoGrab Gods"
AutoGrabGods.Parent = Settings
AutoGrabGods.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoGrabGods.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabGods.BorderSizePixel = 0
AutoGrabGods.Position = UDim2.new(0.0285035633, 0, 0.768755794, 0)
AutoGrabGods.Size = UDim2.new(0, 393, 0, 30)
AutoGrabGods.Font = Enum.Font.SourceSans
AutoGrabGods.Text = "Auto Grab Gods"
AutoGrabGods.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabGods.TextScaled = true
AutoGrabGods.TextSize = 14.000
AutoGrabGods.TextWrapped = true
AutoGrabGods.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_9.Parent = AutoGrabGods
UIPadding_9.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_8.Name = "Indicator"
Indicator_8.Parent = AutoGrabGods
Indicator_8.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_8.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_8.BorderSizePixel = 0
Indicator_8.ClipsDescendants = true
Indicator_8.Position = UDim2.new(0.868956327, 0, 0.162671909, 0)
Indicator_8.Size = UDim2.new(0, 36, 0, 22)

UICorner_8.Parent = Indicator_8

AutoGrabAdmins.Name = "AutoGrab Admins"
AutoGrabAdmins.Parent = Settings
AutoGrabAdmins.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AutoGrabAdmins.BorderColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabAdmins.BorderSizePixel = 0
AutoGrabAdmins.Position = UDim2.new(0.0308788605, 0, 0.891075909, 0)
AutoGrabAdmins.Size = UDim2.new(0, 393, 0, 30)
AutoGrabAdmins.Font = Enum.Font.SourceSans
AutoGrabAdmins.Text = "Auto Grab Admins"
AutoGrabAdmins.TextColor3 = Color3.fromRGB(255, 115, 0)
AutoGrabAdmins.TextScaled = true
AutoGrabAdmins.TextSize = 14.000
AutoGrabAdmins.TextWrapped = true
AutoGrabAdmins.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_10.Parent = AutoGrabAdmins
UIPadding_10.PaddingLeft = UDim.new(0.0250000004, 0)

Indicator_9.Name = "Indicator"
Indicator_9.Parent = AutoGrabAdmins
Indicator_9.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Indicator_9.BorderColor3 = Color3.fromRGB(27, 42, 53)
Indicator_9.BorderSizePixel = 0
Indicator_9.ClipsDescendants = true
Indicator_9.Position = UDim2.new(0.868956327, 0, 0.162671909, 0)
Indicator_9.Size = UDim2.new(0, 36, 0, 22)

UICorner_9.Parent = Indicator_9

Main_2.Name = "Main"
Main_2.Parent = MainFrame
Main_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main_2.BorderSizePixel = 0
Main_2.Position = UDim2.new(0.00962232798, 10, 0.0124683529, 0)
Main_2.Size = UDim2.new(0, 51, 0, 28)
Main_2.ZIndex = 3
Main_2.Font = Enum.Font.SourceSans
Main_2.Text = "main"
Main_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Main_2.TextSize = 28.000
Main_2.TextWrapped = true

UICorner_10.Parent = Main_2

Settings_2.Name = "Settings"
Settings_2.Parent = MainFrame
Settings_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Settings_2.BorderSizePixel = 0
Settings_2.Position = UDim2.new(0.173750594, 0, 0.0124683529, 0)
Settings_2.Size = UDim2.new(0, 90, 0, 28)
Settings_2.ZIndex = 3
Settings_2.Font = Enum.Font.SourceSans
Settings_2.Text = "settings"
Settings_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Settings_2.TextSize = 28.000
Settings_2.TextWrapped = true

UICorner_11.Parent = Settings_2

ClosureFade.Name = "ClosureFade"
ClosureFade.Parent = MainFrame
ClosureFade.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
ClosureFade.BorderColor3 = Color3.fromRGB(177, 79, 0)
ClosureFade.BorderSizePixel = 0
ClosureFade.Position = UDim2.new(2.827044e-06, 0, -0.00167779077, 0)
ClosureFade.Size = UDim2.new(0, 420, 0, 0)
ClosureFade.ZIndex = 100

-- Button Functions:

Main_2.MouseButton1Down:Connect(function()
	SwitchTab(Main)
end)
--Under Main tab

AutoBind.MouseButton1Down:Connect(function()
	_G.AutoBind = not _G.AutoBind
	Toggle(AutoBind, _G.AutoBind)
end)
Levitation.MouseButton1Down:Connect(function()
	_G.Levitate = not _G.Levitate
	Toggle(Levitation, _G.Levitate)
end)
InstantGrab.MouseButton1Down:Connect(function()
	_G.InstantGrab = not _G.InstantGrab
	Toggle(InstantGrab, _G.InstantGrab)
end)

Settings_2.MouseButton1Down:Connect(function()
	SwitchTab(Settings)
end)
--Under Settings tab

AutoGrabNoobs.MouseButton1Down:Connect(function()
	_G.SelectedTiers["Noob"] = not _G.SelectedTiers["Noob"]
	Toggle(AutoGrabNoobs, _G.SelectedTiers["Noob"])
end)
AutoGrabCasuals.MouseButton1Down:Connect(function()
	_G.SelectedTiers["Casual"] = not _G.SelectedTiers["Casual"]
	Toggle(AutoGrabCasuals, _G.SelectedTiers["Casual"])
end)
AutoGrabEnthusiasts.MouseButton1Down:Connect(function()
	_G.SelectedTiers["Enthusiast"] = not _G.SelectedTiers["Enthusiast"]
	Toggle(AutoGrabEnthusiasts, _G.SelectedTiers["Enthusiast"])
end)
AutoGrabPros.MouseButton1Down:Connect(function()
	_G.SelectedTiers["Pro"] = not _G.SelectedTiers["Pro"]
	Toggle(AutoGrabPros, _G.SelectedTiers["Pro"])
end)
AutoGrabLegends.MouseButton1Down:Connect(function()
	_G.SelectedTiers["Legend"] = not _G.SelectedTiers["Legend"]
	Toggle(AutoGrabLegends, _G.SelectedTiers["Legend"])
end)
AutoGrabGods.MouseButton1Down:Connect(function()
	_G.SelectedTiers["God"] = not _G.SelectedTiers["God"]
	Toggle(AutoGrabGods, _G.SelectedTiers["God"])
end)
AutoGrabAdmins.MouseButton1Down:Connect(function()
	_G.SelectedTiers["Admin"] = not _G.SelectedTiers["Admin"]
	Toggle(AutoGrabAdmins, _G.SelectedTiers["Admin"])
end)
