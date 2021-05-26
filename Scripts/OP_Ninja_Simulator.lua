local Player = game:GetService("Players").LocalPlayer
while true do wait(0.001)
	local Tool = Player.Character:FindFirstChildOfClass("Tool")
	if Tool ~= nil then
		for i, v in pairs(Tool:GetDescendants()) do
			if v.Name == "SwordSlash" then
				Tool:Activate()
			end
		end
	end
end
