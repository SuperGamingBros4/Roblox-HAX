
getgenv().EEEE = true
--local level = 0

local Quests = {
    [1175] = {
        GiverPos = Vector3.new(-5428.03, 25.0623, -5299.43),
        GiverID = "FireSideQuest",
        Option = 1,
        Enemy = "Magma Ninja [Lv. 1175]",
        WaitingPos = Vector3.new(-5697.48, 35.9776, -5795.79),
    },
    [1200] = {
        GiverPos = Vector3.new(-5428.03, 25.0623, -5299.43),
        GiverID = "FireSideQuest",
        Option = 2,
        Enemy = "Lava Pirate [Lv. 1200]",
        WaitingPos = Vector3.new(-5324.19, 15.9776, -4848.05),
    },
    [1425] = {
        GiverPos = Vector3.new(-3054.44, 245.544, -10142.8),
        GiverID = "ForgottenQuest",
        Option = 1,
        Enemy = "Sea Soldier [Lv. 1425]",
        WaitingPos = Vector3.new(-3350.94, 38.2637, -9727.87),
    },
    [1450] = {
        GiverPos = Vector3.new(-3054.44, 245.544, -10142.8),
        GiverID = "ForgottenQuest",
        Option = 2,
        Enemy = "Water Fighter [Lv. 1450]",
        WaitingPos = Vector3.new(-3369.76, 258.872, -10442.2),
    },
    [1575] = {
        GiverPos = Vector3.new(5832.84, 61.6806, -1101.52),
        GiverID = "AmazonQuest",
        Option = 1,
        Enemy = "Dragon Crew Warrior [Lv. 1575]",
    },
    [1600] = {
        GiverPos = Vector3.new(5832.84, 61.6806, -1101.52),
        GiverID = "AmazonQuest",
        Option = 2,
        Enemy = "Dragon Crew Archer [Lv. 1600]",
        WaitingPos = Vector3.new(6522.08, 426.493, 107.784),
    },
    [1900] = {
        GiverPos = Vector3.new(-12680.4, 399.971, -9902.02),
        GiverID = "DeepForestIsland2",
        Option = 1,
        Enemy = "Jungle Pirate [Lv. 1900]",
        WaitingPos = Vector3.new(-12309.1, 331.764, -10449.8),
    },
    [1925] = {
        GiverPos = Vector3.new(-12680.4, 399.971, -9902.02),
        GiverID = "DeepForestIsland2",
        Option = 2,
        Enemy = "Musketeer Pirate [Lv. 1925]",
        WaitingPos = Vector3.new(-13389.3, 411.572, -9809.33),
    },
    [1975] = {
        GiverPos = Vector3.new(-9479.22, 151.215, 5566.09),
        GiverID = "HauntedQuest1",
        Option = 1,
        Enemy = "Reborn Skeleton [Lv. 1975]",
        WaitingPos = Vector3.new(-8760.59, 142.131, 5963.02),
    },
    [2000] = {
        GiverPos = Vector3.new(-9479.22, 151.215, 5566.09),
        GiverID = "HauntedQuest1",
        Option = 2,
        Enemy = "Living Zombie [Lv. 2000]",
        WaitingPos = Vector3.new(-10136.9, 138.652, 5904.83),
    },
    [2025] = {
        GiverPos = Vector3.new(-9516.99, 182.017, 6078.47),
        GiverID = "HauntedQuest2",
        Option = 1,
        Enemy = "Demonic Soul [Lv. 2025]",
    },
    [2050] = {
        GiverPos = Vector3.new(-9516.99, 182.017, 6078.47),
        GiverID = "HauntedQuest2",
        Option = 2,
        Enemy = "Posessed Mummy [Lv. 2050]",
    },
    [2200] = {
        GiverPos = Vector3.new(-2022.3, 46.9276, -12031),
        GiverID = "CakeQuest1",
        Option = 1,
        Enemy = "Cookie Crafter [Lv. 2200]",
    },
    [2225] = {
        GiverPos = Vector3.new(-2022.3, 46.9276, -12031),
        GiverID = "CakeQuest1",
        Option = 2,
        Enemy = "Cake Guard [Lv. 2225]",
    },
}
local Player = game:GetService("Players").LocalPlayer
local Enemies = game:GetService("Workspace").Enemies
local CommF = game:GetService("ReplicatedStorage").Remotes["CommF_"]
local Data = Player:WaitForChild("Data")
local TS = game:GetService("TweenService")
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
        if i <= Level and (output or 0) < i then
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

    GoTo(QuestData.GiverPos)
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
