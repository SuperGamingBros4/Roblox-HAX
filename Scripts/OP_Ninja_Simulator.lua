local Player = game:GetService("Players").LocalPlayer
while true do wait(0.001)
	local Tool = Player.Character:FindFirstChildOfClass("Tool")
	if Tool ~= nil then
		if Tool.Handle ~= nil then
			if (Tool.Handle:FindFirstChild("SwordSlash")) or (Tool:FindFirstChild("SwordSlash")) then
				Tool:Activate()
			end
		end
	end
end
