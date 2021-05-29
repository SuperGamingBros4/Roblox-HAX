function kill() do
	game:GetService("ReplicatedStorage").GameRemotes.Attack:InvokeServer(Target.Character)
end

_G.Killaura = true
while _G.Killaura == true do
	for i, Target in pairs(game:GetService("Players"):GetChildren()) do
		if Target ~= game:GetService("Players").localPlayer then
			if Target.Name ~= "Wolfire67890"  then
				kill()
			elseif Target.Name == "SuperJumpMan63" then
				kill()
			end
		end
	end
	wait(.001)
end

--no fall damage
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
