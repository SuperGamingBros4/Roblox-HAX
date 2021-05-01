_G.Lift = false
coroutine.resume(coroutine.create(function()
    while wait(0.00001) do
        if _G.Lift == true then
            game:GetService("ReplicatedStorage").StrengthEvent2:FireServer()
        end
    end
end))

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Instructions";
    Text = "Press Home for SUPER STRENGTH";
    Duration = 10;
    Button1 = "Ok";
})

game:GetService("UserInputService").InputBegan:Connect(function(info, gameProccessedEvent)
    if info.KeyCode == Enum.KeyCode.Home then
        if _G.Lift == true then
            _G.Lift = false
        else _G.Lift = true
        end
    end
end)

while wait() do game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 128 end
