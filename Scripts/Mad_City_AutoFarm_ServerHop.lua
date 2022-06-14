while wait() do
    if game:IsLoaded() then
        break;
    end
end

repeat wait() until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("SpawnGUI")
repeat wait() until game:GetService("TweenService")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
repeat wait() until game:GetService("Workspace").ObjectSelection
repeat wait() until getsenv(game:GetService("Players").LocalPlayer.Character:WaitForChild("UI"):WaitForChild("UI_Main")).Msg

local TS = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer
local HRP = Player.Character:WaitForChild("HumanoidRootPart")
local CrimBase = Vector3.new(2080.06, 24.8274, 429.209)
local ObjectSelection = game:GetService("Workspace").ObjectSelection
local Alert = getsenv(Player.Character:WaitForChild("UI"):WaitForChild("UI_Main")).Msg

getgenv().NoVelocity = true
getgenv().Robbing = false
getgenv().Clip = true

if syn then
    getgenv().Teleport = syn.queue_on_teleport
    Alert("Supported Exploit Detected.")
elseif queue_on_teleport then
    getgenv().Teleport = queue_on_teleport
    Alert("Supported Exploit Detected.")
else
    Alert("Unsupported Exploit Detected.")
    return;
end

--[[+Anti-Afk+]]--
--// Define locals //
local cam = game:GetService("Workspace").CurrentCamera
local vu = game:GetService("VirtualUser")

--// Run when the idle animation plays //
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:CaptureController()
    vu:Button2Down(Vector2.new(0,0), cam.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0), cam.CFrame)
end)
--[[-Anti-Afk-]]--

--Helper Variables
local TravelSpeed = 500

local Heists = {
    ["Train"] = {
        ["Robbed"] = false
    },
    ["NonBuilding"] = function() end
}

local WhitelistedTeams = {
    ["Prisoners"] = true,
    ["Criminals"] = true,
    ["Villains"] = true
}

if WhitelistedTeams[Player.Team] then return; end

function OneTimeFireTouch(TouchInterest)
    if TouchInterest and HRP then
        firetouchinterest(HRP, TouchInterest, 0)
        firetouchinterest(HRP, TouchInterest, 1)
    end
end
        
function PressButton(WaitTime)
    while not Player.PlayerGui:WaitForChild("Popup").Button.MobileButton do
        wait(0.1)
        Time = Time + 1
        print(Time, Finished)
        if Time > 200 then warn("ButtonPress Timout"); break; end
    end
    wait(0.25)
    spawn(function()
        for i,v in pairs(getconnections(Player.PlayerGui:WaitForChild("Popup").Button.MobileButton.MouseButton1Down)) do
            v.Function()
        end
    end)
    wait(WaitTime)
end

function GoTo(Pos, Speed)
    HRP.Anchored = false
    wait(0.1)
    local Distance = (HRP.Position-Pos).Magnitude or 0
    local TweenInfo = TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
    
    TS:Create(HRP, TweenInfo, {Position = Pos}):Play()
    wait(Distance/Speed)
end

function CashOut()
    GoTo(CrimBase - Vector3.new(0,2,0), TravelSpeed)
    wait(1)
end

function getObjectsbyName(Folder, name)
    local Table = {}
    local Iteration = 0
    
    for i,v in pairs(Folder:GetChildren()) do
        if v.Name == name then
            Iteration = Iteration + 1
            Table[Iteration] = v
        end
    end
    return Table
end

function StealObject(Name, PartName, Offset)
    for i,v in pairs(getObjectsbyName(ObjectSelection, Name)) do
        if v:FindFirstChild(PartName) then
            GoTo(v[PartName].Position + Vector3.new(0, 3, 0), TravelSpeed)
            wait(0.15)
            v[PartName][PartName].Event:FireServer()
        end
    end
end

--Everything that isn't tied to a building
function Heists.NonBuilding()
    Robbing = true

    --Tech Store
    pcall(StealObject, "Laptop", "Steal", Vector3.new(0,3,0))
    pcall(StealObject, "Phone", "Steal", Vector3.new(0,3,0))

    --ATMs
    pcall(StealObject, "ATM", "ATM")

    --Airport
    pcall(StealObject, "Luggage", "SmashCash")
    pcall(StealObject, "Cash", "Cash")

    --Other Buildings
    pcall(StealObject, "CashRegister", "SmashCash")
    pcall(StealObject, "TipJar", "SmashCash")
    pcall(StealObject, "Safe", "SmashCash")
    pcall(StealObject, "TV", "StealTV")
    pcall(StealObject, "DiamondBox", "SmashCash")

    Robbing = false
end

--Robs Train
function Heists.Train.Rob()
    Robbing = true
    if game:GetService("Workspace"):FindFirstChild("Train") then
        if not Heists.Train.Robbed then
            Alert("Robbing Train.")
            for i = 0, 20 do 
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("DiamondTrain")
                wait()
            end
            CashOut()
            Heists.Train.Robbed = true
        end
    else
        Heists.Train.Robbed = false
    end
    Robbing = false
end

if not firetouchinterest then
    getgenv().noFTI = true
    Alert('WARNING, function: "firetouchinterest" was not found, completing heists may not be as reliable, and the pyramid will not be robbed as fast.')
end

--No clip
getgenv().Noclipping1 = nil
if Noclipping1 then
    Noclipping1:Disconnect()
end
Clip = false
wait(0.1)
local function LoopNoclip()
    if Clip == false and Player.Character ~= nil then
        for _, child in pairs(Player.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end
Noclipping1 = game:GetService('RunService').Stepped:Connect(LoopNoclip)

local NoVelo = game:GetService('RunService').Stepped:Connect(function()
    if NoVelocity then
        HRP.Velocity = Vector3.new(0,2,0)
    end
end)

function ServerHop()
    Teleport([[loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Scripts/Mad_City_AutoFarm_ServerHop.lua"))()]])
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        pcall(function()
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                x[#x + 1] = v.id
            end
        end)
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    end
end

TravelSpeed = 1500

local Finished = false

getgenv().AutoRob = true
spawn(function()
    repeat wait() until game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") or Finished
    ServerHop()
end)

HRP.Anchored = true
Player.Character.LowerTorso.Anchored = true
Player.Character.Humanoid.PlatformStand = true
if Player.Character.LowerTorso:FindFirstChild("Root") then
    Player.Character.LowerTorso.Root:Destroy()
end

Heists.NonBuilding()

if not AutoRob then
    if Noclipping1 then
        Noclipping1:Disconnect()
    end
    Clip = true
    if NoVelo then
        NoVelo:Disconnect()
    end
    NoVelocity = false
end
Finished = true

--]]
