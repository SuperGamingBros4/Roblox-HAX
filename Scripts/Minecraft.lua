game:GetService("RunService").RenderStepped:Connect(function()
	for i, Target in pairs(game:GetService("Players"):GetChildren()) do
		local distance = (game:GetService("Players").LocalPlayer.Character.Torso.Position - Target.Character.Torso.Position).Magnitude
		if distance <= 50 then
			if Target ~= game:GetService("Players").localPlayer then
				if Target.Name ~= "wolfire67890" and Target.Name ~= "SuperJumpMan63"then
					game:GetService("ReplicatedStorage").GameRemotes.Attack:InvokeServer(Target.Character)
				end
			end
		end
	end
end)


local BlockedRemotes = {
    "RequestDamage",
}

local Events = {
    Fire = true, 
    Invoke = true, 
    FireServer = true, 
    InvokeServer = true,
}

local gameMeta = getrawmetatable(game)
local psuedoEnv = {
    ["__index"] = gameMeta.__index,
    ["__namecall"] = gameMeta.__namecall;
}
setreadonly(gameMeta, false)
gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
    if Events[index] then
        for i,v in pairs(BlockedRemotes) do
            if v == self.Name and not checkcaller() then return nil end
        end
    end
    return psuedoEnv.__index(self, index, ...)
end)
setreadonly(gameMeta, true)
