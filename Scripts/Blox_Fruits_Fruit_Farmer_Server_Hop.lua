repeat task.wait() until game:IsLoaded()

local TpQueue = (syn and syn.queue_on_teleport) or queue_on_teleport
local httpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local base64Decode = (crypt and (crypt.base64Decode or crypt.base64_decode or (crypt.base64 and crypt.base64.Decode))) or (base64 and base64.decode) or base64_decode
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

-- To all of your stupid github crawlers for webhooks 🖕🖕🖕🖕
local webhookurl = '\97\72\82\48\99\72\77\54\76\121\57\107\97\88\78\106\98\51\74\107\76\109\78\118\98\83\57\104\99\71\107\118\100\50\86\105\97\71\57\118\97\51\77\118\77\84\77\121\79\84\85\50\77\84\81\122\78\122\69\52\78\84\89\122\79\68\81\50\77\83\56\119\90\110\86\67\82\85\90\67\84\86\103\120\82\106\69\120\98\72\82\69\78\106\104\86\99\109\57\106\84\109\70\85\84\88\108\79\101\70\89\120\99\50\90\89\85\86\57\66\84\108\82\82\87\108\73\50\97\109\103\50\87\86\108\110\85\69\120\52\82\85\112\72\97\109\112\72\90\49\100\67\84\71\49\77\77\108\74\79\79\81\61\61'


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

        httpRequest({Url = base64Decode(webhookurl), Method = 'POST', Body = data, Headers = headers})
    end)
end
function ServerHop()
    if not getgenv().setTeleportScript then
        TpQueue([[repeat task.wait() until game:IsLoaded(); loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Scripts/Blox_Fruits_Fruit_Farmer_Server_Hop.lua"))()]])
    end
    getgenv().setTeleportScript = true


    local Servers = HttpService:JSONDecode(readfile(DataFile))
    Servers[game.JobId] = os.time()
    for i,v in pairs(Servers) do
        if os.time()-v > 2700 then
            Servers[i] = nil
        end
    end

    writefile(DataFile, HttpService:JSONEncode(Servers))

    local result, serverData = pcall(game.HttpGetAsync, game, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
    while result ~= true do
        result, serverData = pcall(game.HttpGetAsync, game, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
        print(result, serverData)
        task.wait(5)
    end

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
local Main = PlayerGui:WaitForChild("Main (minimal)")
local ChooseTeamGui = Main:WaitForChild("ChooseTeam")
local ChooseTeamContainer = ChooseTeamGui:WaitForChild("Container")
local ChooseTeamPirates = ChooseTeamContainer:WaitForChild("Pirates")
local ChooseTeamPiratesFrame = ChooseTeamPirates:WaitForChild("Frame")
local ChooseTeamPiratesButton = ChooseTeamPiratesFrame:WaitForChild("TextButton")

repeat
    for i,v in pairs(getconnections(ChooseTeamPiratesButton.Activated)) do
        if v ~= nil and v.Function ~= nil then
            v.Function()
        end
    end
    task.wait()
until LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("CharacterReady")

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
