local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
gmt.__index = newcclosure(function(self, b)
   if b == "WalkSpeed" then
    if Player.Character ~= nil then
         return Player.Character:WaitForChild("Humanoid").WalkSpeed
    end
  end
  return oldindex(self, b)
end)
