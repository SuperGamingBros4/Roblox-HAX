getgenv().Farm = true

local Player = game:GetService("Players").LocalPlayer
local MainGui = Player.PlayerGui.MainGui
local respawnButton = MainGui.SpawnF.SpawnImgBtn
local buttonContainers = {
    "Ascend",
    "Class",
    "Shuriken",
    "Sword"
}

local mainLoop
mainLoop = game:GetService("RunService").Stepped:Connect(function()
    if respawnButton.Visible then
        getconnections(respawnButton.MouseButton1Down)[1].Function()
        return
    elseif not MainGui.UpgradeF.Visible then
        return
    end

    for i, button in (buttonContainers) do
        getconnections(MainGui.UpgradeF[button .. "F"][button .. "ImgBtn"].MouseButton1Down)[1].Function()
    end
    
	local sword = nil
    for i,tool in pairs(Player.Backpack:GetChildren()) do
        if tool:FindFirstChild("Handle") and tool.Handle:findFirstChild("SwordSlash") then
            sword = tool
        end
    end
    if sword == nil then
        sword = Player.Character:FindFirstChildOfClass("Tool")
    end
        
	if sword ~= nil then
		for i, v in pairs(sword:GetDescendants()) do
			if v.Name == "SwordSlash" then
                Player.Character.Humanoid:EquipTool(sword)
				sword:Activate()
			end
		end
	end
    
    if not Farm then
        mainLoop:Disconnect()
    end
end)
