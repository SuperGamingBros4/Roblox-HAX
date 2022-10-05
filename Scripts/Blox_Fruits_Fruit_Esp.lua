local Player = game:GetService("Players").LocalPlayer
local Fruits = {}

getgenv().FruitEsp = true
while FruitEsp do
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:FindFirstChild("Fruit") and v:FindFirstChild("Handle") then
            local Handle = v.Handle

            if not Handle:FindFirstChild("BillboardGui") then
                local Gui = Instance.new("BillboardGui", Handle)
                local Text = Instance.new("TextLabel", Gui)

                --Gui Variables
                Gui.AlwaysOnTop = true -- Makes the Gui Visible through all walls
                Gui.Size = UDim2.new(0, 200, 0, 25) -- Sets the size of the gui to 400 px wide, and 50 px tall
                Gui.StudsOffset = Vector3.new(0, 3, 0)

                --Text Variables
                Text.BackgroundTransparency = 1
                Text.Size = UDim2.new(1, 0, 1, 0)
                Text.TextScaled = true
                Text.TextColor3 = Color3.fromRGB(math.random(1,2)*127, math.random(0,2)*127, math.random(0,2)*127)
            elseif Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                local Text = Handle.BillboardGui.TextLabel
                local Dist = (Player.Character.HumanoidRootPart.Position - Handle.Position).Magnitude
                Text.Text = v.Name .. ", Dist:" .. tostring(math.floor(Dist))
            end
        end
    end
    
    --Destroy all Esps that a player is holding
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character then
            for i2,v2 in pairs(v.Character:GetDescendants()) do
                if v2.Name == "BillboardGui" then
                    v2:Destroy()
                end
            end
        end
    end
    wait()
end
