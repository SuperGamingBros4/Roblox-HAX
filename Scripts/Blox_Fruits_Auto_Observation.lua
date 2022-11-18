repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam:FindFirstChild("Container")
wait(1)
for i,v in pairs(getconnections(game:GetService("Players").LGBTQFurryCommunity.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
    v.Function()
end

local LocalPlayer = game:GetService("Players").LocalPlayer
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
    while EEEE and PlayerCheck() and (LocalPlayer.Character.PrimaryPart.Position - Position).Magnitude > 128 do
        wait()
    end
    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(Position)
end

repeat wait() until LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("CharacterReady")

local ClosestEnemy = nil
repeat
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if ClosestEnemy == nil then
            ClosestEnemy = v
        elseif (LocalPlayer.Character.PrimaryPart.Position - ClosestEnemy.PrimaryPart.Position).Magnitude > (LocalPlayer.Character.PrimaryPart.Position - v.PrimaryPart.Position).Magnitude then
            ClosestEnemy = v
        end
    end
    wait()
until ClosestEnemy ~= nil

GoTo(ClosestEnemy.PrimaryPart.Position + Vector3.new(1,1,1))
game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)

repeat wait() until LocalPlayer.Character.Humanoid.Health < LocalPlayer.Character.Humanoid.MaxHealth

syn.queue_on_teleport(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Scripts/Blox_Fruits_Auto_Observation.lua"))
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
