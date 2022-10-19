
getgenv().EEEE = true
local level = nil

local Seas = {
    [2753915549] = 1,   --First sea
    [4442272183] = 2,   --Second sea
    [7449423635] = 3,   --Third sea
}

local Quests = {
    [1175] = {
        GiverPos = Vector3.new(-5428.03, 15.0623, -5299.43),
        GiverID = "FireSideQuest",
        Option = 1,
        Enemy = "Magma Ninja [Lv. 1175]",
        WaitingPos = Vector3.new(-5697.48, 35.9776, -5795.79),
        Sea = 2,
    },
    [1200] = {
        GiverPos = Vector3.new(-5428.03, 15.0623, -5299.43),
        GiverID = "FireSideQuest",
        Option = 2,
        Enemy = "Lava Pirate [Lv. 1200]",
        WaitingPos = Vector3.new(-5324.19, 15.9776, -4848.05),
        Sea = 2,
    },
    [1425] = {
        GiverPos = Vector3.new(-3054.44, 235.544, -10142.8),
        GiverID = "ForgottenQuest",
        Option = 1,
        Enemy = "Sea Soldier [Lv. 1425]",
        WaitingPos = Vector3.new(-3350.94, 38.2637, -9727.87),
        Sea = 2,
    },
    [1450] = {
        GiverPos = Vector3.new(-3054.44, 235.544, -10142.8),
        GiverID = "ForgottenQuest",
        Option = 2,
        Enemy = "Water Fighter [Lv. 1450]",
        WaitingPos = Vector3.new(-3369.76, 258.872, -10442.2),
        Sea = 2,
    },
    [1575] = {
        GiverPos = Vector3.new(5832.84, 51.6806, -1101.52),
        GiverID = "AmazonQuest",
        Option = 1,
        Enemy = "Dragon Crew Warrior [Lv. 1575]",
        Sea = 3,
    },
    [1600] = {
        GiverPos = Vector3.new(5832.84, 51.6806, -1101.52),
        GiverID = "AmazonQuest",
        Option = 2,
        Enemy = "Dragon Crew Archer [Lv. 1600]",
        WaitingPos = Vector3.new(6522.08, 426.493, 107.784),
        Sea = 3,
    },
    [1900] = {
        GiverPos = Vector3.new(-12680.4, 389.971, -9902.02),
        GiverID = "DeepForestIsland2",
        Option = 1,
        Enemy = "Jungle Pirate [Lv. 1900]",
        WaitingPos = Vector3.new(-12309.1, 331.764, -10449.8),
        Sea = 3,
    },
    [1925] = {
        GiverPos = Vector3.new(-12680.4, 389.971, -9902.02),
        GiverID = "DeepForestIsland2",
        Option = 2,
        Enemy = "Musketeer Pirate [Lv. 1925]",
        WaitingPos = Vector3.new(-13389.3, 411.572, -9809.33),
        Sea = 3,
    },
    [1975] = {
        GiverPos = Vector3.new(-9479.22, 141.215, 5566.09),
        GiverID = "HauntedQuest1",
        Option = 1,
        Enemy = "Reborn Skeleton [Lv. 1975]",
        WaitingPos = Vector3.new(-8760.59, 142.131, 5963.02),
        Sea = 3,
    },
    [2000] = {
        GiverPos = Vector3.new(-9479.22, 141.215, 5566.09),
        GiverID = "HauntedQuest1",
        Option = 2,
        Enemy = "Living Zombie [Lv. 2000]",
        WaitingPos = Vector3.new(-10136.9, 138.652, 5904.83),
        Sea = 3,
    },
    [2025] = {
        GiverPos = Vector3.new(-9516.99, 172.017, 6078.47),
        GiverID = "HauntedQuest2",
        Option = 1,
        Enemy = "Demonic Soul [Lv. 2025]",
        Sea = 3,
    },
    [2050] = {
        GiverPos = Vector3.new(-9516.99, 172.017, 6078.47),
        GiverID = "HauntedQuest2",
        Option = 2,
        Enemy = "Posessed Mummy [Lv. 2050]",
        Sea = 3,
    },
    [2075] = {
        GiverPos = Vector3.new(-2105.53, 37.2496, -10195.5),
        GiverID = "NutsIslandQuest",
        Option = 1,
        Enemy = "Peanut Scout [Lv. 2075]",
        Sea = 3,
    },
    [2100] = {
        GiverPos = Vector3.new(-2105.53, 37.2496, -10195.5),
        GiverID = "NutsIslandQuest",
        Option = 2,
        Enemy = "Peanut President [Lv. 2100]",
        Sea = 3,
    },
    [2125] = {
        GiverPos = Vector3.new(-819.377, 64.926, -10967.3),
        GiverID = "IceCreamIslandQuest",
        Option = 1,
        Enemy = "Ice Cream Chef [Lv. 2125]",
        Sea = 3,
    },
    [2150] = {
        GiverPos = Vector3.new(-819.377, 64.926, -10967.3),
        GiverID = "IceCreamIslandQuest",
        Option = 2,
        Enemy = "Ice Cream Commander [Lv. 2150]",
        Sea = 3,
    },
    [2200] = {
        GiverPos = Vector3.new(-2022.3, 36.9276, -12031),
        GiverID = "CakeQuest1",
        Option = 1,
        Enemy = "Cookie Crafter [Lv. 2200]",
        Sea = 3,
    },
    [2225] = {
        GiverPos = Vector3.new(-2022.3, 36.9276, -12031),
        GiverID = "CakeQuest1",
        Option = 2,
        Enemy = "Cake Guard [Lv. 2225]",
        Sea = 3,
    },
    [2250] = {
        GiverPos = Vector3.new(-1928.32, 37.7297, -12840.6),
        GiverID = "CakeQuest2",
        Option = 1,
        Enemy = "Baking Staff [Lv. 2250]",
        Sea = 3,
    },
    [2275] = {
        GiverPos = Vector3.new(-1928.32, 37.7297, -12840.6),
        GiverID = "CakeQuest2",
        Option = 2,
        Enemy = "Head Baker [Lv. 2275]",
        Sea = 3,
    },
    [2300] = {
        GiverPos = Vector3.new(231.75, 23.9003, -12200.3),
        GiverID = "ChocQuest1",
        Option = 1,
        Enemy = "Cocoa Warrior [Lv. 2300]",
        Sea = 3,
    },
    [2325] = {
        GiverPos = Vector3.new(231.75, 23.9003, -12200.3),
        GiverID = "ChocQuest1",
        Option = 2,
        Enemy = "Chocolate Bar Battler [Lv. 2325]",
        WaitingPos = Vector3.new(694.48, 24.7601, -12608.9),
        Sea = 3,
    },
    [2350] = {
        GiverPos = Vector3.new(151.198, 23.8907, -12774.6),
        GiverID = "ChocQuest2",
        Option = 1,
        Enemy = "Sweet Thief [Lv. 2350]",
        Sea = 3,
    },
    [2375] = {
        GiverPos = Vector3.new(151.198, 23.8907, -12774.6),
        GiverID = "ChocQuest2",
        Option = 2,
        Enemy = "Candy Rebel [Lv. 2375]",
        Sea = 3,
    },
}
local Player = game:GetService("Players").LocalPlayer
local Enemies = game:GetService("Workspace").Enemies
local CommF = game:GetService("ReplicatedStorage").Remotes["CommF_"]
local Data = Player:WaitForChild("Data")
local TS = game:GetService("TweenService")
local CurrentSea = Seas[game.PlaceId]
local speed = 512

local d
d = game:GetService("RunService").Stepped:Connect(function()
    Player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    for _, v in pairs(Player.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
        end
    end
    if not EEEE then
        d:Disconnect()
    end
end)

function GoTo(Position)
    local Dist = (Player.Character.HumanoidRootPart.Position - Position).Magnitude
    local Speed = speed
    
    if Dist > 1000 then
        Speed = math.clamp(speed, 0, 256)
    end
    TS:Create(
        Player.Character.HumanoidRootPart,
        TweenInfo.new(Dist/Speed, Enum.EasingStyle.Linear),
        {["CFrame"] = CFrame.new(Position)}
    ):Play()
    wait(Dist/Speed)
    wait()
end
function GetCurrentQuestData()
    local output
    local Level = level or Data.Level.Value
    for i,v in pairs(Quests) do
        if i <= Level and (output or 0) < i and v.Sea == CurrentSea then
            output = i
        end
    end
    return Quests[output]
end
function StartQuest(Npc, Quest)
    CommF:InvokeServer("StartQuest", Npc, Quest)
end
function IsQuestActive()
    return Player.PlayerGui.Main.Quest.Visible
end

while EEEE do
    local QuestData = GetCurrentQuestData()
    local EnemyName = QuestData.Enemy
    local DoingQuest = true

    GoTo(QuestData.GiverPos + Vector3.new(0,10,0))
    StartQuest(QuestData.GiverID, QuestData.Option)
    wait(0.1)

    if QuestData.WaitingPos then
        GoTo(QuestData.WaitingPos)
    end

    while DoingQuest do
        for i,Enemy in pairs(Enemies:GetChildren()) do
            if Enemy.Name == EnemyName then
                while DoingQuest do
                    if not IsQuestActive() then
                        DoingQuest = false
                    end
                    if not Enemy:FindFirstChild("Humanoid") or Enemy.Humanoid.Health <= 0 or not EEEE then
                        break;
                    end
                    GoTo(Enemy:WaitForChild("HumanoidRootPart").Position + Vector3.new(0,20,0))
                end
            end
        end
        wait()
    end
    wait()
end
