
getgenv().EEEE = true
local level = nil


local Seas = {
    [2753915549] = 1,   --First sea
    [4442272183] = 2,   --Second sea
    [7449423635] = 3,   --Third sea
}

local LocalPlayer = game:GetService("Players").LocalPlayer
local Enemies = game:GetService("Workspace").Enemies
local CommF = game:GetService("ReplicatedStorage").Remotes["CommF_"]
local VirUser = game:GetService("VirtualUser")
local Data = LocalPlayer:WaitForChild("Data")
local TS = game:GetService("TweenService")
local CurrentSea = Seas[game.PlaceId]
local speed = 512

function TpIfTooFarAway(TpPos, GoalPos)
    local PlrPos = LocalPlayer.Character.HumanoidRootPart.Position
    if (GoalPos - PlrPos).Magnitude > (GoalPos - TpPos).Magnitude then
        CommF:InvokeServer("requestEntrance", TpPos)
        wait(1)
    end
end

local Quests = {
    --[[
    [Level Requirement] = {
        GiverPos = Vector3.new(Position),   --Quest giver position
        GiverID = "",   --Quest giver id
        Option = 1,   --Quest id   
        Enemy = "",   --Enemy name
        WaitingPos = Vector3.new(Position),   --waiting position(s)
        Sea = 1,   --The sea the quest is located in
    },
    ]]
    [1] = {
        GiverPos = Vector3.new(1059.37, 15.4495, 1550.42),
        GiverID = "BanditQuest1",
        Option = 1,
        Enemy = "Bandit [Lv. 5]",
        Sea = 1,
    },
    [10] = {
        GiverPos = Vector3.new(-1598.09, 35.5501, 153.378),
        GiverID = "JungleQuest",
        Option = 1,
        Enemy = "Monkey [Lv. 14]",
        Sea = 1,
    },
    [15] = {
        GiverPos = Vector3.new(-1598.09, 35.5501, 153.378),
        GiverID = "JungleQuest",
        Option = 2,
        Enemy = "Gorilla [Lv. 20]",
        WaitingPos = Vector3.new(-1288.75, 28.6472, -457.044),
        Sea = 1,
    },
    [30] = {
        GiverPos = Vector3.new(-1141.07, 4.10002, 3831.55),
        GiverID = "BuggyQuest1",
        Option = 1,
        Enemy = "Pirate [Lv. 35]",
        Sea = 1,
    },
    [40] = {
        GiverPos = Vector3.new(-1141.07, 4.10002, 3831.55),
        GiverID = "BuggyQuest1",
        Option = 2,
        Enemy = "Brute [Lv. 45]",
        Sea = 1,
    },
    [60] = {
        GiverPos = Vector3.new(894.489, 5.14001, 4392.43),
        GiverID = "DesertQuest",
        Option = 1,
        Enemy = "Desert Bandit [Lv. 60]",
        Sea = 1,
    },
    [75] = {
        GiverPos = Vector3.new(894.489, 5.14001, 4392.43),
        GiverID = "DesertQuest",
        Option = 2,
        Enemy = "Desert Officer [Lv. 70]",
        WaitingPos = Vector3.new(1594.25, 13.57033, 4377.13),
        Sea = 1,
    },
    [90] = {
        GiverPos = Vector3.new(1389.74, 96.6521, -1298.91),
        GiverID = "SnowQuest",
        Option = 1,
        Enemy = "Snow Bandit [Lv. 90]",
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(3864.68, 6.73, -1926.21), Vector3.new(1389.74, 96.6521, -1298.91))
        end,
    },
    [100] = {
        GiverPos = Vector3.new(1389.74, 96.6521, -1298.91),
        GiverID = "SnowQuest",
        Option = 2,
        Enemy = "Snowman [Lv. 100]",
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(3864.68, 6.73, -1926.21), Vector3.new(1389.74, 96.6521, -1298.91))
        end,
    },
    [120] = {
        GiverPos = Vector3.new(-5039.59, 27.35, 4324.68),
        GiverID = "MarineQuest2",
        Option = 1,
        Enemy = "Chief Petty Officer [Lv. 120]",
        WaitingPos = {Vector3.new(-4955.88, 30.6778, 4009.56), Vector3.new(-4689.16, 30.6778, 4456.24)},
        Sea = 1,
    },
    [150] = {
        GiverPos = Vector3.new(-4839.53, 716.369, -2619.44),
        GiverID = "SkyQuest",
        Option = 1,
        Enemy = "Sky Bandit [Lv. 150]",
        WaitingPos = Vector3.new(-4951.47, 288.092, -2864.53),
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(-4657.86, 872.568, -1764.68), Vector3.new(-4839.53, 716.369, -2619.44))
        end,
    },
    [175] = {
        GiverPos = Vector3.new(-4839.53, 716.369, -2619.44),
        GiverID = "SkyQuest",
        Option = 2,
        Enemy = "Dark Master [Lv. 175]",
        WaitingPos = Vector3.new(-5259.02, 398.678, -2249.19),
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(-4657.86, 872.568, -1764.68), Vector3.new(-4839.53, 716.369, -2619.44))
        end,
    },
    [190] = {
        GiverPos = Vector3.new(5310.61, 10.350015, 474.947),
        GiverID = "PrisonerQuest",
        Option = 1,
        Enemy = "Prisoner [Lv. 190]",
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(3864.68, 6.73, -1926.21), Vector3.new(5310.61, 10.350015, 474.947))
        end,
    },
    [210] = {
        GiverPos = Vector3.new(5310.61, 10.350015, 474.947),
        GiverID = "PrisonerQuest",
        Option = 2,
        Enemy = "Dangerous Prisoner [Lv. 210]",
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(3864.68, 6.73, -1926.21), Vector3.new(5310.61, 10.350015, 474.947))
        end,
    },
    [250] = {
        GiverPos = Vector3.new(-1580.05, 6.35, -2986.48),
        GiverID = "ColosseumQuest",
        Option = 1,
        Enemy = "Toga Warrior [Lv. 250]",
        Sea = 1,
        WaitingPos = Vector3.new(-1848.35, 17.31488, -2785.76),
        Func = function()
            TpIfTooFarAway(Vector3.new(-4657.86, 872.568, -1764.68), Vector3.new(-1580.05, 6.35, -2986.48))
        end,
    },
    [275] = {
        GiverPos = Vector3.new(-1580.05, 6.35, -2986.48),
        GiverID = "ColosseumQuest",
        Option = 2,
        Enemy = "Gladiator [Lv. 275]",
        Sea = 1,
        WaitingPos = {
            Vector3.new(-1483.41, 16.82051, -3192.87),
            Vector3.new(-1368.55, 16.7673, -3378.9),
            Vector3.new(-1357.07, 17.31488, -3592.59),
            Vector3.new(-1125.67, 17.31488, -3270.6),
            Vector3.new(-1228.25, 17.31378, -3056.47)
        },
        Func = function()
            TpIfTooFarAway(Vector3.new(-4657.86, 872.568, -1764.68), Vector3.new(-1580.05, 6.35, -2986.48))
        end,
    },
    [300] = {
        GiverPos = Vector3.new(-5313.37, 10.95, 8515.29),
        GiverID = "MagmaQuest",
        Option = 1,
        Enemy = "Military Soldier [Lv. 300]",
        Sea = 1,
    },
    [325] = {
        GiverPos = Vector3.new(-5313.37, 10.95, 8515.29),
        GiverID = "MagmaQuest",
        Option = 2,
        Enemy = "Military Spy [Lv. 325]",
        Sea = 1,
        WaitingPos = Vector3.new(-5861.71, 87.2564, 8836.99),
    },
    [375] = {
        GiverPos = Vector3.new(61121.1, 17.9531, 1564.53),
        GiverID = "FishmanQuest",
        Option = 1,
        Enemy = "Fishman Warrior [Lv. 375]",
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(61163.85, 11.67, 1819.78), Vector3.new(61121.1, 17.9531, 1564.53))
        end,
    },
    [400] = {
        GiverPos = Vector3.new(61121.1, 17.9531, 1564.53),
        GiverID = "FishmanQuest",
        Option = 2,
        Enemy = "Fishman Commando [Lv. 400]",
        Sea = 1,
        WaitingPos = Vector3.new(61892.7, 28.5086, 1470.39),
        Func = function()
            TpIfTooFarAway(Vector3.new(61163.85, 11.67, 1819.78), Vector3.new(61121.1, 17.9531, 1564.53))
        end,
    },
    [450] = {
        GiverPos = Vector3.new(-4721.89, 843.875, -1949.97),
        GiverID = "SkyExp1Quest",
        Option = 1,
        Enemy = "God's Guard [Lv. 450]",
        Sea = 1,
        Func = function()
            TpIfTooFarAway(Vector3.new(-4657.86, 872.568, -1764.68), Vector3.new(-4721.89, 843.875, -1949.97))
        end,
    },
    [475] = {
        GiverPos = Vector3.new(-7859.1, 5544.19, -381.476),
        GiverID = "SkyExp1Quest",
        Option = 2,
        Enemy = "Shanda [Lv. 475]",
        Sea = 1,
        WaitingPos = Vector3.new(-7664.76, 5555.52, -478.499),
        Func = function()
            TpIfTooFarAway(Vector3.new(-7894.61, 5547.14, -380.29), Vector3.new(-7859.1, 5544.19, -381.476))
        end,
    },
    [525] = {
        GiverPos = Vector3.new(-7906.82, 5634.66, -1411.99),
        GiverID = "SkyExp2Quest",
        Option = 1,
        Enemy = "Royal Squad [Lv. 525]",
        Sea = 1,
        WaitingPos = Vector3.new(-7671.16, 5616.9, -1456.53),
        Func = function()
            TpIfTooFarAway(Vector3.new(-4657.86, 872.568, -1764.68), Vector3.new(-7906.82, 5634.66, -1411.99))
        end,
    },
    [550] = {
        GiverPos = Vector3.new(-7906.82, 5634.66, -1411.99),
        GiverID = "SkyExp2Quest",
        Option = 2,
        Enemy = "Royal Soldier [Lv. 550]",
        Sea = 1,
        WaitingPos = Vector3.new(-7833.97, 5616.9, -1738.93),
        Func = function()
            TpIfTooFarAway(Vector3.new(-7894.61, 5547.14, -380.29), Vector3.new(-7906.82, 5634.66, -1411.99))
        end,
    },
    [625] = {
        GiverPos = Vector3.new(5259.82, 37.35, 4050.03),
        GiverID = "FountainQuest",
        Option = 1,
        Enemy = "Galley Pirate [Lv. 625]",
        Sea = 1,
        WaitingPos = Vector3.new(5567.56, 48.5644, 3986),
        Func = function()
            TpIfTooFarAway(Vector3.new(3864.68, 6.73, -1926.21), Vector3.new(5259.82, 37.35, 4050.03))
        end,
    },
    [650] = {
        GiverPos = Vector3.new(5259.82, 37.35, 4050.03),
        GiverID = "FountainQuest",
        Option = 2,
        Enemy = "Galley Captain [Lv. 650]",
        Sea = 1,
        WaitingPos = Vector3.new(5650.56, 48.5269, 4942.1),
        Func = function()
            TpIfTooFarAway(Vector3.new(3864.68, 6.73, -1926.21), Vector3.new(5259.82, 37.35, 4050.03))
        end,
    },
    [700] = {
        GiverPos = Vector3.new(-429.544, 71.77, 1836.18),
        GiverID = "Area1Quest",
        Option = 1,
        Enemy = "Raider [Lv. 700]",
        Sea = 2,
        WaitingPos = {Vector3.new(-730.8344116210938, 49.16558837890625, 2348.408935546875), Vector3.new(374.2578430175781, 49.1665153503418, 2345.503662109375)},
    },
    [725] = {
        GiverPos = Vector3.new(-429.544, 71.77, 1836.18),
        GiverID = "Area1Quest",
        Option = 2,
        Enemy = "Mercenary [Lv. 725]",
        Sea = 2,
        WaitingPos = {Vector3.new(-960.5191040039062, 89.7893295288086, 1691.6649169921875), Vector3.new(-1095.4127197265625, 89.96976470947266, 1154.6129150390625)},
    },
    [775] = {
        GiverPos = Vector3.new(638.438, 71.77, 918.283),
        GiverID = "Area2Quest",
        Option = 1,
        Enemy = "Swan Pirate [Lv. 775]",
        Sea = 2,
        WaitingPos = Vector3.new(927.8024291992188, 82.9854965209961, 1236.1392822265625),
    },
    [800] = {
        GiverPos = Vector3.new(638.438, 71.77, 918.283),
        GiverID = "Area2Quest",
        Option = 2,
        Enemy = "Factory Staff [Lv. 800]",
        Sea = 2,
        WaitingPos = {Vector3.new(632.5889282226562, 82.98555755615234, 118.16378784179688), Vector3.new(34.543148040771484, 82.98555755615234, -173.34385681152344)},
    },
    [875] = {
        GiverPos = Vector3.new(-2440.8, 71.7141, -3216.07),
        GiverID = "MarineQuest3",
        Option = 1,
        Enemy = "Marine Lieutenant [Lv. 875]",
        Sea = 2,
        WaitingPos = Vector3.new(-2830.90478515625, 82.9919204711914, -2996.27099609375),
    },
    [900] = {
        GiverPos = Vector3.new(-2440.8, 71.7141, -3216.07),
        GiverID = "MarineQuest3",
        Option = 2,
        Enemy = "Marine Captain [Lv. 900]",
        Sea = 2,
        WaitingPos = Vector3.new(-1874.1134033203125, 82.9919204711914, -3262.599365234375),
    },
    [950] = {
        GiverPos = Vector3.new(-5497.06, 47.5923, -795.237),
        GiverID = "ZombieQuest",
        Option = 1,
        Enemy = "Zombie [Lv. 950]",
        Sea = 2,
    },
    [975] = {
        GiverPos = Vector3.new(-5497.06, 47.5923, -795.237),
        GiverID = "ZombieQuest",
        Option = 2,
        Enemy = "Vampire [Lv. 975]",
        Sea = 2,
        WaitingPos = Vector3.new(-6037.6279296875, 16.402713775634766, -1312.5067138671875),
    },
    [1000] = {
        GiverPos = Vector3.new(609.859, 400.12, -5372.26),
        GiverID = "SnowMountainQuest",
        Option = 1,
        Enemy = "Snow Trooper [Lv. 1000]",
        Sea = 2,
    },
    [1050] = {
        GiverPos = Vector3.new(609.859, 400.12, -5372.26),
        GiverID = "SnowMountainQuest",
        Option = 2,
        Enemy = "Winter Warrior [Lv. 1050]",
        Sea = 2,
        WaitingPos = Vector3.new(1227.866943359375, 439.421875, -5137.8466796875),
    },
    [1100] = {
        GiverPos = Vector3.new(-6064.07, 15.2423, -4902.98),
        GiverID = "IceSideQuest",
        Option = 1,
        Enemy = "Lab Subordinate [Lv. 1100]",
        Sea = 2,
        WaitingPos = Vector3.new(-5720.47265625, 25.951770782470703, -4475.423828125),
    },
    [1125] = {
        GiverPos = Vector3.new(-6064.07, 15.2423, -4902.98),
        GiverID = "IceSideQuest",
        Option = 2,
        Enemy = "Horned Warrior [Lv. 1125]",
        Sea = 2,
        WaitingPos = Vector3.new(-6435.578125, 25.951772689819336, -5753.15673828125),
    },
    [1175] = {
        GiverPos = Vector3.new(-5428.03, 15.0623, -5299.43),
        GiverID = "FireSideQuest",
        Option = 1,
        Enemy = "Magma Ninja [Lv. 1175]",
        Sea = 2,
        WaitingPos = {Vector3.new(-5722.96923828125, 25.951770782470703, -5854.02197265625), Vector3.new(-5199.2431640625, 25.951894760131836, -6041.525390625)},
    },
    [1200] = {
        GiverPos = Vector3.new(-5428.03, 15.0623, -5299.43),
        GiverID = "FireSideQuest",
        Option = 2,
        Enemy = "Lava Pirate [Lv. 1200]",
        Sea = 2,
        WaitingPos = Vector3.new(-5205.0654296875, 61.10444259643555, -4715.8232421875),
    },
    [1250] = {
        GiverPos = Vector3.new(1041.1, 124.167, 32909.2),
        GiverID = "ShipQuest1",
        Option = 1,
        Enemy = "Ship Deckhand [Lv. 1250]",
        Sea = 2,
        Func = function()
            TpIfTooFarAway(Vector3.new(923.2125244140625, 126.97600555419922, 32852.83203125), Vector3.new(1041.1, 124.167, 32909.2))
        end,
    },
    [1275] = {
        GiverPos = Vector3.new(1041.1, 124.167, 32909.2),
        GiverID = "ShipQuest1",
        Option = 2,
        Enemy = "Ship Engineer [Lv. 1275]",
        Sea = 2,
        Func = function()
            TpIfTooFarAway(Vector3.new(923.2125244140625, 126.97600555419922, 32852.83203125), Vector3.new(1041.1, 124.167, 32909.2))
        end,
    },
    [1300] = {
        GiverPos = Vector3.new(971.373, 124.167, 33248.7),
        GiverID = "ShipQuest2",
        Option = 1,
        Enemy = "Ship Steward [Lv. 1300]",
        Sea = 2,
        Func = function()
            TpIfTooFarAway(Vector3.new(923.2125244140625, 126.97600555419922, 32852.83203125), Vector3.new(971.373, 124.167, 33248.7))
        end,
    },
    [1325] = {
        GiverPos = Vector3.new(971.373, 124.167, 33248.7),
        GiverID = "ShipQuest2",
        Option = 2,
        Enemy = "Ship Officer [Lv. 1325]",
        Sea = 2,
        Func = function()
            TpIfTooFarAway(Vector3.new(923.2125244140625, 126.97600555419922, 32852.83203125), Vector3.new(971.373, 124.167, 33248.7))
        end,
    },
    [1350] = {
        GiverPos = Vector3.new(5667.66, 26.7998, -6486.09),
        GiverID = "FrostQuest",
        Option = 1,
        Enemy = "Arctic Warrior [Lv. 1350]",
        Sea = 2,
        WaitingPos = Vector3.new(6123.8740234375, 38.366825103759766, -6215.982421875),
        Func = function()
            TpIfTooFarAway(Vector3.new(-6508.55810546875, 89.03499603271484, -132.83953857421875), Vector3.new(5667.66, 26.7998, -6486.09))
        end,
    },
    [1375] = {
        GiverPos = Vector3.new(5667.66, 26.7998, -6486.09),
        GiverID = "FrostQuest",
        Option = 2,
        Enemy = "Snow Lurker [Lv. 1375]",
        Sea = 2,
        WaitingPos = Vector3.new(5490.17626953125, 38.82008361816406, -6818.56591796875),
        Func = function()
            TpIfTooFarAway(Vector3.new(-6508.55810546875, 89.03499603271484, -132.83953857421875), Vector3.new(5667.66, 26.7998, -6486.09))
        end,
    },
    [1425] = {
        GiverPos = Vector3.new(-3054.44, 235.544, -10142.8),
        GiverID = "ForgottenQuest",
        Option = 1,
        Enemy = "Sea Soldier [Lv. 1425]",
        Sea = 2,
        WaitingPos = Vector3.new(-3382.336181640625, 28.238304138183594, -9720.0703125),
    },
    [1450] = {
        GiverPos = Vector3.new(-3054.44, 235.544, -10142.8),
        GiverID = "ForgottenQuest",
        Option = 2,
        Enemy = "Water Fighter [Lv. 1450]",
        Sea = 2,
        WaitingPos = Vector3.new(-3373.62353515625, 248.84613037109375, -10499.955078125),
    },
    [1500] = {
        GiverPos = Vector3.new(-290.075, 42.9035, 5581.59),
        GiverID = "PiratePortQuest",
        Option = 1,
        Enemy = "Pirate Millionaire [Lv. 1500]",
        Sea = 3,
    },
    [1525] = {
        GiverPos = Vector3.new(-290.075, 42.9035, 5581.59),
        GiverID = "PiratePortQuest",
        Option = 2,
        Enemy = "Pistol Billionaire [Lv. 1525]",
        Sea = 3,
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
    [1625] = {
        GiverPos = Vector3.new(5448.86, 601.516, 751.131),
        GiverID = "AmazonQuest2",
        Option = 1,
        Enemy = "Female Islander [Lv. 1625]",
        WaitingPos = {Vector3.new(5734.58349609375, 810.6190185546875, 909.4860229492188), Vector3.new(4731.80078125, 740.3595581054688, 715.1571655273438)},
        Sea = 3,
    },
    [1650] = {
        GiverPos = Vector3.new(5448.86, 601.516, 751.131),
        GiverID = "AmazonQuest2",
        Option = 2,
        Enemy = "Giant Islander [Lv. 1650]",
        WaitingPos = Vector3.new(5109.97509765625, 611.6016235351562, -38.159122467041016),
        Sea = 3,
    },
    [1700] = {
        GiverPos = Vector3.new(2180.54, 27.8157, -6741.55),
        GiverID = "MarineTreeIsland",
        Option = 1,
        Enemy = "Marine Commodore [Lv. 1700]",
        WaitingPos = {Vector3.new(2287.39599609375, 83.1754379272461, -6974.6572265625), Vector3.new(2836.604736328125, 83.16281127929688, -7841.82421875)},
        Sea = 3,
    },
    [1725] = {
        GiverPos = Vector3.new(2180.54, 27.8157, -6741.55),
        GiverID = "MarineTreeIsland",
        Option = 2,
        Enemy = "Marine Rear Admiral [Lv. 1725]",
        WaitingPos = Vector3.new(3648.591552734375, 170.54989624023438, -7016.57763671875),
        Sea = 3,
    },
    [1775] = {
        GiverPos = Vector3.new(-10581.7, 330.873, -8761.19),
        GiverID = "DeepForestIsland3",
        Option = 1,
        Enemy = "Fishman Raider [Lv. 1775]",
        Sea = 3,
    },
    [1800] = {
        GiverPos = Vector3.new(-10581.7, 330.873, -8761.19),
        GiverID = "DeepForestIsland3",
        Option = 2,
        Enemy = "Fishman Captain [Lv. 1800]",
        Sea = 3,
    },
    [1825] = {
        GiverPos = Vector3.new(-13234, 331.488, -7625.4),
        GiverID = "DeepForestIsland",
        Option = 1,
        Enemy = "Forest Pirate [Lv. 1825]",
        Sea = 3,
    },
    [1850] = {
        GiverPos = Vector3.new(-13234, 331.488, -7625.4),
        GiverID = "DeepForestIsland",
        Option = 2,
        Enemy = "Mythological Pirate [Lv. 1850]",
        WaitingPos = Vector3.new(-13563.560546875, 479.810791015625, -6897.8623046875),
        Sea = 3,
    },
    [1900] = {
        GiverPos = Vector3.new(-12680.4, 389.971, -9902.02),
        GiverID = "DeepForestIsland2",
        Option = 1,
        Enemy = "Jungle Pirate [Lv. 1900]",
        WaitingPos = Vector3.new(-12309.1, 341.764, -10449.8),
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

function EXPAND(v)
    if v:FindFirstChild("HumanoidRootPart") then 
        if v.Name ~= game.Players.LocalPlayer.Name then
            v.HumanoidRootPart.CanCollide = false
            v.HumanoidRootPart.Size = Vector3.new(50*2,v.HumanoidRootPart.Size.Y,50*2)
        end
    end
end

getgenv().AUTOCLICK = false

local d
d = game:GetService("RunService").Stepped:Connect(function()
    LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
        end
    end
    --AutoClicker
    if AUTOCLICK then
        VirUser:Button1Down(Vector2.new(0,0), game:GetService("Workspace").CurrentCamera.CFrame)
        VirUser:Button1Up(Vector2.new(0,0), game:GetService("Workspace").CurrentCamera.CFrame)
    end
    --Expand Hitboxes
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        EXPAND(v)
    end
    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
        EXPAND(v)
    end

    if not EEEE then
        d:Disconnect()
    end
end)

function GoTo(Position)
    LocalPlayer.Character.HumanoidRootPart.Anchored = false
    local Dist = (LocalPlayer.Character.HumanoidRootPart.Position - Position).Magnitude
    local Speed = speed
    
    if Dist > 1000 then
        Speed = math.clamp(speed, 0, 256)
    end
    TS:Create(
        LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Dist/Speed, Enum.EasingStyle.Linear),
        {["CFrame"] = CFrame.new(Position)}
    ):Play()
    wait(Dist/Speed)
    wait(0.1)
    LocalPlayer.Character.HumanoidRootPart.Anchored = true
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
    return LocalPlayer.PlayerGui.Main.Quest.Visible
end

while EEEE do
    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

    local QuestData = GetCurrentQuestData()
    local EnemyName = QuestData.Enemy
    local DoingQuest = true
    local WaitPosIndex = 1
    
    if QuestData.Func then
        QuestData.Func()
    end

    GoTo(QuestData.GiverPos + Vector3.new(0,10,0))
    StartQuest(QuestData.GiverID, QuestData.Option)
    wait(0.1)

    while DoingQuest and EEEE do
        if QuestData.WaitingPos then -- Head to a waiting Position
            if typeof(QuestData.WaitingPos) == "table" then
                GoTo(QuestData.WaitingPos[WaitPosIndex])
                
                WaitPosIndex += 1
                if WaitPosIndex > #QuestData.WaitingPos then
                    WaitPosIndex = 1
                end
            else
                GoTo(QuestData.WaitingPos)
            end
            wait(1.5)
        end

        for i,Enemy in pairs(Enemies:GetChildren()) do
            if Enemy.Name == EnemyName and Enemy:FindFirstChild("Humanoid") and Enemy.Humanoid.Health > 0 and Enemy:FindFirstChild("HumanoidRootPart") and DoingQuest and EEEE then
                local Timeout = 5
                local Health = Enemy.Humanoid.Health
                GoTo(Enemy.HumanoidRootPart.Position + Vector3.new(0,20,0))
                
                AUTOCLICK = true
                Timeout *= 100
                while DoingQuest and EEEE do
                    if not IsQuestActive() then
                        DoingQuest = false
                    end
                    if not Enemy:FindFirstChild("Humanoid") or not Enemy:FindFirstChild("Humanoid") or Enemy.Humanoid.Health <= 0 or not EEEE or Timeout <= 0 then
                        break;
                    end
                    if Enemy:FindFirstChild("HumanoidRootPart") and (LocalPlayer.Character.HumanoidRootPart.Position - Enemy.HumanoidRootPart.Position).Magnitude <= 30 then
                        --Bring Enemies to underneath the player in accordance to roblox's network ownership system
                        for i,v in pairs(Enemies:GetChildren()) do
                            if v.Name == EnemyName and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                local PlayerPos = LocalPlayer.Character.HumanoidRootPart.Position
                                local ClosestPlayer = true

                                --Check if you are the closest player
                                for i,Player in pairs(game:GetService("Players"):GetPlayers()) do
                                    if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                                        if (Player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < (v.HumanoidRootPart.Position - PlayerPos).Magnitude then
                                            ClosestPlayer = false
                                        end
                                    end
                                end

                                if (v.HumanoidRootPart.Position - PlayerPos).Magnitude < 384 and ClosestPlayer then
                                    v.HumanoidRootPart.CFrame = CFrame.new(PlayerPos - Vector3.new(0,20,0))
                                end
                            end
                        end
                    end
                    wait(0.01)
                    Timeout -= 1
                end
                AUTOCLICK = false
            end
        end
        wait()
    end
    wait()
end
LocalPlayer.Character.HumanoidRootPart.Anchored = false
