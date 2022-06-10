local TS = game:GetService("TweenService")
local Player = game:GetService("Players").LocalPlayer
local HRP = Player.Character.HumanoidRootPart
local CrimBase = Vector3.new(2080.06, 24.8274, 429.209)
local ObjectSelection = game:GetService("Workspace").ObjectSelection

getgenv().Robbing = false

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
local TravelSpeed = 300

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
    ["NonBuilding"] = function() end
}

local WhitelistedTeams = {
    ["Prisoners"] = true,
    ["Criminals"] = true,
    ["Villains"] = true
}

if WhitelistedTeams[Player.Team] then return; end

function PressButton()
    local Time = 0
    while not Player.PlayerGui:WaitForChild("Popup").Button.MobileButton do
        wait(0.1)
        Time++
        print(Time)
        if Time > 200 then warn("ButtonPrompt Timout"); break; end
    end
    repeat
        spawn(function()
            for i,v in pairs(getconnections(Player.PlayerGui:WaitForChild("Popup").Button.MobileButton.MouseButton1Down)) do
                spawn(v.Function)
            end
        end)
        wait(0.1)
        Time++
        print(Time)
        if Time > 200 then warn("ButtonPrompt Timout"); break; end
    until Player.PlayerGui:FindFirstChild("Popup") == nil or Player.Character.Humanoid.Health == 0
    wait(0.5)
end

function CashOut()
    HRP.Anchored = false
    GoTo(CrimBase, TravelSpeed)
end

function GoTo(Pos, Speed)
    local Distance = (HRP.Position-Pos).Magnitude or 0
    local TweenInfo = TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
    
    TS:Create(HRP, TweenInfo, {Position = Pos}):Play()
    wait(Distance/Speed)
end

function getObjectsbyName(Folder, name)
    local Table = {}
    local Iteration = 0
    
    for i,v in pairs(Folder:GetChildren()) do
        if v.Name == name then
            Iteration++
            Table[Iteration] = v
        end
    end
    return Table
end

--Everything that isn't tied to a building
function Heists.NonBuilding()

    --Rob Tech Store
    for i,Laptop in pairs(getObjectsbyName(ObjectSelection, "Laptop")) do
        if Laptop:FindFirstChild("Steal") then
            GoTo(Laptop.Steal.Position + Vector3.new(0, 3, 0), TravelSpeed)
            wait(0.1)
            HRP.Anchored = true
            PressButton()
            HRP.Anchored = false
        end
    end
    for i,Phone in pairs(getObjectsbyName(ObjectSelection, "Phone")) do
        if Phone:FindFirstChild("Steal") then
            GoTo(Phone.Steal.Position + Vector3.new(0, 3, 0), TravelSpeed)
            wait(0.1)
            HRP.Anchored = true
            PressButton()
            HRP.Anchored = false
        end
    end

    --Rob ATMs
    for i, v in pairs(getObjectsbyName(ObjectSelection, "ATM")) do
        local ATM = v:FindFirstChild("ATM")

        if not ATM then return; end

        GoTo(ATM.Position, TravelSpeed)
        wait(0.1)

        HRP.Anchored = true
        PressButton()
        HRP.Anchored = false
    end

    --Rob Airport
    for i,v in pairs(getObjectsbyName(ObjectSelection, "Cash")) do
        local Cash = v:FindFirstChild("Cash")

        if not Cash then return; end

        GoTo(Cash.Position, TravelSpeed)
        wait(0.1)

        HRP.Anchored = true
        PressButton()
        HRP.Anchored = false
    end
    for i,v in pairs(getObjectsbyName(ObjectSelection, "Luggage")) do
        local Luggage = v:FindFirstChild("SmashCash")

        if not Luggage then return; end

        GoTo(Luggage.Position, TravelSpeed)
        wait(0.1)

        HRP.Anchored = true
        PressButton()
        HRP.Anchored = false
    end

    Robbing = false
end

--Rob Bank
function Heists.Bank.Function()
    --Set Robbed Variable

    GoTo(Vector3.new(707.111, 107.951, 543.882), TravelSpeed)
    wait(1)
    GoTo(Vector3.new(728.638, 109.763, 536.241), TravelSpeed)
    wait(22.5)
    CashOut()
    wait(2)
    Heists.Bank.Robbed = true
    Robbing = false
end

--Rob Casino
function Heists.Casino.Function()
    --Set Robbed Variable

    local Computer = ObjectSelection.HackComputer
    
    if Computer:FindFirstChild("HackComputer") then
        GoTo(Computer.HackComputer.Position, TravelSpeed)
        HRP.Anchored = true
        PressButton()
        wait(0.5)
        HRP.Anchored = false
    elseif not Computer:FindFirstChild("NoHack") then
        warn("Casino: Computer Not Found")
        return;
    end

    for i,Tray in pairs(getObjectsbyName(ObjectSelection, "Trayy")) do
        if i == 12 or Tray.Open.Value then
            CashOut()
            break;
        end
        repeat
        GoTo(Tray.Trayy.Position, TravelSpeed)
        until (HRP.Position-Tray.Trayy.Position).Magnitude < 5
        HRP.Anchored = true
        PressButton()
        HRP.Anchored = false
    end
    Heists.Casino.Robbed = true
    Robbing = false
end

--Rob Club(a.k.a Disco place)
function Heists.Club.Function()
    --Set Robbed Variable
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
        GoTo(KeyPad.HackKeyPad.Position, TravelSpeed) -- Goes to the Keypad
        HRP.Anchored = true
        PressButton()
        wait(0.25)
        HRP.Anchored = false
    end
    --Go to and collect diamonds
    repeat
        for i,Diamond in pairs(getObjectsbyName(ObjectSelection, "ClubDiamond")) do
            if Diamond:FindFirstChild("ClubDiamond") then
                GoTo(Diamond.ClubDiamond.Position, TravelSpeed)
                HRP.Anchored = true
                PressButton()
                HRP.Anchored = false
                Iteration++
            end
        end
    until Iteration > 10
    CashOut()
    Heists.Club.Robbed = true
    Robbing = false
    
end

CashOut()
wait(5)

getgenv().AutoRob = true
local AuRob = coroutine.create(function()
    pcall(function()
        while AutoRob do
            if Player.Character and Player.Character.Humanoid.Health > 0 then
                
                --Rob Buidlings
                if not Robbing == true then
                    for i,v in pairs(game:GetService("ReplicatedStorage").HeistStatus:GetChildren()) do
                        local Heist = Heists[v.Name]
                        wait()
                        if Heist then
                            if v.Locked.Value then
                                Heist.Robbed = false
                            elseif not Heist.Robbed then
                                Robbing = true
                                wait(1)
                                Heist.Function()
                            end
                        end
                    end
                Heists.NonBuilding()
                end

            end
            wait()
        end
    end)
end)

coroutine.resume(AuRob)()
