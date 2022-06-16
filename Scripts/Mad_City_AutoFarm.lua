local TS = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer
local HRP = Player.Character.HumanoidRootPart
local CrimBase = Vector3.new(2080.06, 24.8274, 429.209)
local ObjectSelection = game:GetService("Workspace").ObjectSelection
local Alert = getsenv(Player.Character.UI["UI_Main"]).Msg

getgenv().NoVelocity = true
getgenv().Robbing = false
getgenv().Clip = true

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
    ["Bank"] = {
        ["Robbed"] = false
    },
    ["Casino"] = {
        ["Robbed"] = false
    },
    ["Club"] = {
        ["Robbed"] = false
    },
    ["Pyramid"] = {
        ["Robbed"] = false
    },
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
    local Distance = (HRP.Position-Pos).Magnitude or 0
    local TweenInfo = TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
    
    TS:Create(HRP, TweenInfo, {Position = Pos}):Play()
    wait(Distance/Speed)
end

function CashOut()
    GoTo(CrimBase - Vector3.new(0,2,0), TravelSpeed)
    if not noFTI then
        OneTimeFireTouch(game:GetService("Workspace").CriminalBase2.TouchEnd)
    end
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
            wait(0.3)
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

--Rob Bank
function Heists.Bank.Rob()
    --Set Robbed Variable

    if noFTI then 
        GoTo(game:GetService("Workspace").Heists.Bank.EssentialParts.VaultDoor.Touch.Position, TravelSpeed)
    else
        OneTimeFireTouch(game:GetService("Workspace").Heists.Bank.EssentialParts.VaultDoor.Touch)
    end
    wait(1)
    GoTo(Vector3.new(728.638, 109.763, 536.241), TravelSpeed)
    wait(22.5)
    CashOut()
    Heists.Bank.Robbed = true
    Robbing = false
end

--Rob Casino
function Heists.Casino.Rob()
    --Set Robbed Variable
    pcall(function()
        local Computer = ObjectSelection.HackComputer
        
        if Computer:FindFirstChild("HackComputer") then
            GoTo(Computer.HackComputer.Position, TravelSpeed)
            wait(0.3)
            Computer.HackComputer.HackComputer.Event:FireServer()
        elseif not Computer:FindFirstChild("NoHack") then
            warn("Casino: Computer Not Found")
            return;
        end

        for i,v in pairs(ObjectSelection:GetChildren()) do
            if v:FindFirstChild("Lever") then
                GoTo(v.Lever.Position, TravelSpeed)
                wait(0.3)
                v.Lever.Lever.Event:FireServer()
            end
        end

        for i,Tray in pairs(getObjectsbyName(ObjectSelection, "Trayy")) do
            if i == 12 or Tray.Open.Value then
                CashOut()
                break;
            end
            if Tray:FindFirstChild("Trayy") then
                GoTo(Tray.Trayy.Position, TravelSpeed)
                wait(0.3)
                Tray.Trayy.Trayy.Event:FireServer()
            end
        end
    end)
    Heists.Casino.Robbed = true
    Robbing = false
end

--Rob Club(a.k.a Disco place)
function Heists.Club.Rob()
    --Set Robbed Variable
    pcall(function()
        local KeyPad
        local Iteration = 0

        for i,v in pairs(getObjectsbyName(ObjectSelection, "HackKeyPad")) do -- Finds the Club Keypad
            if v:FindFirstChild("HackKeyPad") then
                if not v:FindFirstChild("LockedDoor") then
                    KeyPad = v
                end
            end
        end
        if KeyPad then
            GoTo(KeyPad.HackKeyPad.Position, TravelSpeed)
            wait(0.3)
            KeyPad.HackKeyPad.HackKeyPad.Event:FireServer() -- Hacks Keypad
        end
        --Go to and collect diamonds
        repeat
            for i,Diamond in pairs(getObjectsbyName(ObjectSelection, "ClubDiamond")) do
                pcall(function()
                    GoTo(Diamond.ClubDiamond.Position, TravelSpeed)
                    wait(0.3)
                    Diamond.ClubDiamond.ClubDiamond.Event:FireServer()
                    Iteration = Iteration + 1
                end)
                wait()
            end
        until Iteration > 10
        CashOut()
    end)
    Heists.Club.Robbed = true
    Robbing = false
    
end

--Rob Pyramid
function Heists.Pyramid.Rob()
    local Iteration = 0

    if noFTI then
        GoTo(game:GetService("Workspace").Pyramid.Tele.Core1.Position, TravelSpeed)
        repeat wait() until HRP.Position.Y > 30000
        GoTo(game:GetService("Workspace").Pyramid.TouchStart.Position, TravelSpeed)
    else
        OneTimeFireTouch(game:GetService("Workspace").Pyramid.Tele.Core1)
        repeat wait() until HRP.Position.Y > 30000
        OneTimeFireTouch(game:GetService("Workspace").Pyramid.TouchStart)
    end
    repeat wait() until HRP.Position.Y > 30000
    OneTimeFireTouch(game:GetService("Workspace").Pyramid.TouchStart)

    for i,v in pairs(getObjectsbyName(ObjectSelection, "TreasurePyramid")) do
        local Treasure = v:FindFirstChild("TreasurePyramid")
        if Treasure then
            GoTo(Treasure.Position, TravelSpeed)
            wait(0.3)
            Treasure.TreasurePyramid.Event:FireServer()
            Iteration = Iteration + 1
        end
        if Iteration > 16 then break; end
    end

    Alert("Waiting to bypass kick.")
    wait(15)
    
    if noFTI then
        GoTo(game:GetService("Workspace").Pyramid.Tele.Core2.Position, TravelSpeed)
        repeat wait() until HRP.Position.Y < 30000
    else
        OneTimeFireTouch(game:GetService("Workspace").Pyramid.Tele.Core2)
        repeat wait() until HRP.Position.Y < 30000
    end

    CashOut()
    Heists.Pyramid.Robbed = true
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

CashOut()
wait(20)
TravelSpeed = 1500

getgenv().AutoRob = true
local AuRob = coroutine.create(function()
    while AutoRob do
        pcall(function()
            Player.Character.LowerTorso.Anchored = true
            Player.Character.Humanoid.PlatformStand = true
            if Player.Character.LowerTorso:FindFirstChild("Root") then
                Player.Character.LowerTorso.Root:Destroy()
            end
            
            --Rob Buidlings
            if not Robbing == true then
                Heists.NonBuilding()
                Heists.Train.Rob()
                for i,v in pairs(game:GetService("ReplicatedStorage").HeistStatus:GetChildren()) do
                    local Heist = Heists[v.Name]
                    wait()
                    if Heist then
                        if v.Locked.Value then
                            Heist.Robbed = false
                        elseif not Heist.Robbed then
                            Alert("Robbing " .. v.Name)
                            Robbing = true
                            wait(1)
                            Heist.Rob()
                        end
                    end
                end
            end

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
        end)
        wait()
    end
end)

coroutine.resume(AuRob)()
--]]
