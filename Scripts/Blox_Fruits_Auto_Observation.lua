wait()
    end
    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(Position)
end

repeat task.wait() until LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("CharacterReady")

local ClosestEnemy = nil
repeat
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if ClosestEnemy == nil then
            ClosestEnemy = v
        elseif (LocalPlayer.Character.PrimaryPart.Position - ClosestEnemy.PrimaryPart.Position).Magnitude > (LocalPlayer.Character.PrimaryPart.Position - v.PrimaryPart.Position).Magnitude then
            ClosestEnemy = v
        end
    end
    task.wait()
until ClosestEnemy ~= nil

GoTo(ClosestEnemy.PrimaryPart.Position + Vector3.new(1,1,1))
game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)

local MaxTime = 2000
repeat
    task.wait(0.01)
    MaxTime -= 1
until LocalPlayer.Character.Humanoid.Health < LocalPlayer.Character.Humanoid.MaxHealth or MaxTime <= 0

syn.queue_on_teleport(loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Scripts/Blox_Fruits_Auto_Observation.lua")))
if #game:GetService("Players"):GetPlayers() <= 1 then
    LocalPlayer:Kick("\nRejoining...")
    wait()
    game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
else
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
end
