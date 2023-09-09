getgenv().Farm = true

local Player = game:GetService("Players").LocalPlayer
local cam = game:GetService("Workspace").CurrentCamera
local vu = game:GetService("VirtualUser")
local MainGui = Player.PlayerGui.MainGui
local buttonContainers = {
    "Ascend",
    "Class",
    "Shuriken",
    "Sword"
}

--Anti-AFK
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:CaptureController()
    vu:Button2Down(Vector2.new(0,0), cam.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0), cam.CFrame)
end)

function getTool(textureId)
    local tool = Player.Character:FindFirstChildOfClass("Tool")

    if tool ~= nil and tool.TextureId == textureId then
        --If the player is holding the tool.
        return tool
    end

    --If the player is not holding the tool.
    for i,object in pairs(Player.Backpack:GetChildren()) do
        if object.TextureId == textureId then
            return object
        end
    end

    --If the tool is not found
    return nil
end

local mainLoop
mainLoop = game:GetService("RunService").Stepped:Connect(function()
    if MainGui.SpawnF.Visible then
        print("Respawning.")
        getconnections(MainGui.SpawnF.SpawnImgBtn.MouseButton1Down)[1].Function()
        return
    elseif not MainGui.UpgradeF.Visible then
        return
    end

    --Loop through and press every upgade button.
    for i, button in (buttonContainers) do
        getconnections(MainGui.UpgradeF[button .. "F"][button .. "ImgBtn"].MouseButton1Down)[1].Function()
    end
    
    --Get the sword using the getTool() function
	local sword = getTool("http://www.roblox.com/asset/?id=1078764870")
        
	if sword ~= nil then
        Player.Character.Humanoid:EquipTool(sword)
        sword:Activate()
	end
    
    if not Farm then
        mainLoop:Disconnect()
    end
end)
