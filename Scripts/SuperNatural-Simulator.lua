local RemoteEvent = game:GetService("ReplicatedStorage").RemoteEvent
while true do
	wait(0.01)
	RemoteEvent:FireServer({"GainMuscle"})
end
