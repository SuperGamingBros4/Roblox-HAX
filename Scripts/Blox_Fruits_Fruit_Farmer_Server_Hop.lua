repeat task.wait() until game:IsLoaded()

local TpQueue = (syn and syn.queue_on_teleport) or queue_on_teleport
local httpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local CommF_ = game:GetService("ReplicatedStorage").Remotes["CommF_"]
local LocalPlayer = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")
local noclipLocalPlayer = false
local fruits = {}
local speed = 320
local DataFile = "Blox_Fruits_Fruit_Farmer_Servers.json"
local TpResultBlacklist = {
    [Enum.TeleportResult.Success] = true,
}

if not isfile(DataFile) then --Checks if the file doesn't exist
    writefile(DataFile, HttpService:JSONEncode({})) --creates a new file
end

local webhookurl = 'https://discord.com/api/webhooks/1162068142244233226/LRyE1QxQ8p-wp5NE0ttWB4PFuLlS7aXij3N1SPIrAaUOmNX0ylKk05cQ3-RmA8y-1P0w'

local TpLocations = {
	--First Sea
	[2753915549] = {
		Vector3.new(3864.68, 6.73, -1926.21),
		Vector3.new(-4955.88, 30.6778, 4009.56),
        Vector3.new(-4657.86, 872.568, -1764.68),
        Vector3.new(-4607.82, 874.39, -1667.56),
		Vector3.new(61163.85, 11.67, 1819.78),
		Vector3.new(-7894.61, 5547.14, -380.29)
	},
	--Second Sea
	[4442272183] = {
		Vector3.new(923.21, 126.98, 32852.83),
		Vector3.new(-6508.56, 109.03, -132.84)
	},
	--Third Sea
	[7449423635] = {
		Vector3.new(-5094, 465, -3158),
		Vector3.new(-12464, 426, -7566),
		Vector3.new(5747, 668, -285)
	}
}

function getDistance(point1, point2)
	return (point1 - point2).Magnitude
end

function GoTo(Position)
    if LocalPlayer.Character.PrimaryPart:FindFirstChild("SSSS") then
        LocalPlayer.Character.PrimaryPart:FindFirstChild("SSSS"):Destroy()
    end
    local SSSS = Instance.new("AlignPosition", LocalPlayer.Character.PrimaryPart)
    SSSS.Name = "SSSS"
    SSSS.MaxForce = math.huge
    SSSS.MaxVelocity = speed
    SSSS.Mode = Enum.PositionAlignmentMode.OneAttachment
    SSSS.Position = Position
    SSSS.Responsiveness = 200
    SSSS.Attachment0 = LocalPlayer.Character.PrimaryPart:FindFirstChild("RootRigAttachment")
    while SSSS and getDistance(LocalPlayer.Character.PrimaryPart.Position, Position) > 128 do
        task.wait()
    end
    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(Position)
end

function isFruit(instance)
    return (instance:FindFirstChild("Fruit") and instance:FindFirstChild("Handle"))
end

function StoreFruit(fruit)
    local IndexPos = string.find(string.lower(fruit.Name), "fruit")
    if IndexPos then
        task.wait(0.1)
        if fruit.Parent ~= LocalPlayer.Character then
            LocalPlayer.Character.Humanoid:EquipTool(fruit)
        end

        local FruitName = string.sub(fruit.Name, 0, IndexPos-2)
        local ColonIndex = string.find(FruitName, ":")
        local FormattedFruitName
        if ColonIndex then
            local Part1 = string.sub(FruitName, 0, ColonIndex-1)
            FormattedFruitName = Part1 .. "-" .. FruitName
        else
            FormattedFruitName = FruitName .. "-" .. FruitName
        end

        local index = table.find(fruits, fruit)
        if index then
            table.remove(fruits, index)
        end
        print("Storing fruit")
        CommF_:InvokeServer("StoreFruit", FormattedFruitName, fruit)
        task.wait(0.1)
    end
end

function getFruit(fruit)
	local closestTeleportLocation = nil
	local LocalPlayerPosition = LocalPlayer.Character.PrimaryPart.Position
    local fruitPosition = fruit.Handle.Position

	--Loop through and find the closest teleport location to the position
	for i,teleportLocation in pairs(TpLocations[game.PlaceId]) do
		if getDistance(teleportLocation, fruitPosition) > getDistance(LocalPlayerPosition, fruitPosition) then
			continue
		end
		if closestTeleportLocation and getDistance(teleportLocation, fruitPosition) > getDistance(closestTeleportLocation, fruitPosition) then
			continue
		end
		closestTeleportLocation = teleportLocation
	end

	--Teleport if a teleport location was found
	if closestTeleportLocation then
        print("Teleporting to (" .. tostring(closestTeleportLocation) .. ")")
		CommF_:InvokeServer("requestEntrance", closestTeleportLocation)
	end

	noclipLocalPlayer = true
    print("Getting fruit")
	repeat
		GoTo(fruitPosition)

		task.wait()
	until getDistance(LocalPlayer.Character.PrimaryPart.Position, fruitPosition) <= 2
	
	noclipLocalPlayer = false
	local AlignPosition = LocalPlayer.Character.PrimaryPart:FindFirstChild("SSSS")
	if AlignPosition then
		AlignPosition:Destroy()
	end
end
function onCharacterAdded(character)
    character.ChildAdded:Connect(function(fruit)
        if not (fruit:FindFirstChild('Fruit') and fruit:FindFirstChild('Handle')) then
            return
        end
        local data = string.format([[{
            "username": "%s",
            "content": null,
            "embeds": [
                {
                "title": "Found a %s.",
                "color": null,
                "author": {
                    "name": "%s",
                    "url": "https://roblox.com/users/%i/profile"
                }
                }
            ],
            "attachments": []
        }]], LocalPlayer.Name, fruit.Name, LocalPlayer.DisplayName, LocalPlayer.UserId)
        local headers = {
            ['content-type'] = 'application/json'
        }

        httpRequest({Url = webhookurl, Method = 'POST', Body = data, Headers = headers})
    end)
end
function ServerHop()
    TpQueue([[repeat task.wait() until game:IsLoaded(); loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Scripts/Blox_Fruits_Fruit_Farmer_Server_Hop.lua"))()]])
    local Servers = HttpService:JSONDecode(readfile(DataFile))
    Servers[game.JobId] = os.time()
    for i,v in pairs(Servers) do
        if os.time()-v > 900 then
            Servers[i] = nil
        end
    end

    writefile(DataFile, HttpService:JSONEncode(Servers))

    local serverData = game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")

    while true do
        local x = {}
        for _, v in ipairs(HttpService:JSONDecode(serverData).data) do
            pcall(function()
                if type(v) == "table" and v.maxPlayers > v.playing and Servers[v.id] == nil then
                    x[#x + 1] = v.id
                end
            end)
        end
        if #x > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
            break
        else
            serverData = game:HttpGetAsync(string.format("https://games.roblox.com/v1/games/%i/servers/Public?sortOrder=Asc&limit=100&cursor=%s", game.PlaceId, serverData.nextPageCursor))
        end
        task.wait()
    end
end


game:GetService("TeleportService").TeleportInitFailed:Connect(function(Result)
    if not TpResultBlacklist[Result] then
        ServerHop()
    end
end)

game:GetService("RunService").Stepped:Connect(function()
	if noclipLocalPlayer == false then
		return
	end

	for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BasePart") and v.CanCollide == true then
			v.CanCollide = false
		end
	end
end)

workspace.ChildAdded:Connect(function(fruit)
    --Filter out anything that is not a fruit.
    if not isFruit(fruit) then
        return
    end
    print("Found fruit")
    table.insert(fruits, fruit)
end)
workspace.ChildRemoved:Connect(function(fruit)
    --Do nothing if this is not apart of {fruits}.
    local index = table.find(fruits, fruit)
    if not index then
        return
    end
    print("Fruit removed")
    table.remove(fruits, index)
end)
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

--REALLY, REALLY LONG HIERARCHY
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Main = PlayerGui:WaitForChild("Main")
local ChooseTeamGui = Main:WaitForChild("ChooseTeam")
local ChooseTeamContainer = ChooseTeamGui:WaitForChild("Container")
local ChooseTeamPirates = ChooseTeamContainer:WaitForChild("Pirates")
local ChooseTeamPiratesFrame = ChooseTeamPirates:WaitForChild("Frame")
local ChooseTeamPiratesViewportFrame = ChooseTeamPiratesFrame:WaitForChild("ViewportFrame")
local ChooseTeamPiratesButton = ChooseTeamPiratesViewportFrame:WaitForChild("TextButton")

repeat
    for i,v in pairs(getconnections(ChooseTeamPiratesButton.Activated)) do
        v.Function()
    end
    task.wait()
until LocalPlayer.Character:FindFirstChild("CharacterReady")

for i,instance in pairs(workspace:GetChildren()) do
    if not isFruit(instance) then
        continue
    end
    table.insert(fruits, instance)
end
for i, fruit in pairs(fruits) do
    repeat
        getFruit(fruit)
    until not table.find(fruits, fruit)
    for i2,fruit2 in pairs(LocalPlayer.Character:GetChildren()) do
        if not isFruit(fruit) then
            continue
        end
        StoreFruit(fruit2)
    end
end
task.wait(0.1)
ServerHop()
