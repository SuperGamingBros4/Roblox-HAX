local Player = game:getService("Players").LocalPlayer
local Events = game:GetService("ReplicatedStorage").Events

if not Main then
	getgenv().Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Better_UI_Library.lua"))()
end

if not asdjlasdkghkfjgh then
	getgenv().asdjlasdkghkfjgh = true
	coroutine.wrap(function()
		while true do
			local Flags = Main.Flags
		
			if Flags.AutoSell then
				pcall(function()
					local text = game:GetService("Players").SuperJumpMan63.PlayerGui.CoreUI1.Absolute.Backpack.Background.Base.TextLabel1.Text
					local number = tonumber(text:split(" / ")[1])
					if not (number == 0) then
						firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").BackPackSell, 0)
						wait(0.1)
						firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").BackPackSell, 1)
					end
				end)
			end
			if Flags.AutoMana then
				Events.GetMana:FireServer(Player)
			end
			if Flags.Speed then
				Player.Character.Humanoid.WalkSpeed = Main.Flags.WalkSpeed
			end
			
			wait(0.01)
		end
	end)()
end

local function OpenCrates()
	for index, click in pairs(game:GetService("Workspace"):GetDescendants()) do
		if click.Name == "ClickDetector" and click.Parent.Name == "Chest" then
			fireclickdetector(click)
			wait(0.025)
		end
	end
end

local Window = Main:CreateWindow("Lock Picking Simulator - Made By SuperJumpMan63#3843")
local MainTab = Window:AddTab("Main") do
	MainTab:AddToggle({Name = "Auto Mana", Flag = "AutoMana"})
	MainTab:AddToggle({Name = "Auto Sell", Flag = "AutoSell"})
	MainTab:AddButton({Name = "Open All Crates", Callback = OpenCrates})
	MainTab:AddText("")
	MainTab:AddToggle({Name = "Toggle Speed", Flag = "Speed"})
	MainTab:AddSlider({Name = "Speed", Flag = "WalkSpeed", Min = 16, Max = 128})
end
