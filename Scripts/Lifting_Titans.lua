local Remotes = game:GetService("ReplicatedStorage").Remotes


-- Globals
getgenv().AutoLift = false
getgenv().AutoSell = false

-- Key Listener
game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Home then
        if getgenv().AutoLift == true then
            getgenv().AutoLift = false
        else getgenv().AutoLift = true end
    end
    if inputObject.KeyCode == Enum.KeyCode.End then
        if getgenv().AutoSell == true then
            getgenv().AutoSell = false
        else getgenv().AutoSell = true end
    end
end)

-- Coroutines

local AutoLifting = coroutine.create(function()
    while wait(0.05) do
        if getgenv().AutoLift == true then
            Remotes.OnLift:FireServer()
        end
    end
end)

local AutoSelling = coroutine.create(function()
    while wait(0.05) do
        if getgenv().AutoSell == true then
            Remotes.Sell:FireServer()
        end
    end
end)

--Start courotines
coroutine.resume(AutoLifting)
coroutine.resume(AutoSelling)

-- Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "Instructions";
    Text = "Home is AutoLift, and End is AutoSell";
    Duration = "10";
    Button1 = "Ok"
})
