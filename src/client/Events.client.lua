--[[
THE DEFAULT FORMAT :
game.Players.PlayerAdded:Connect(function()
	
end)
]]
local sand = game.Workspace.Sand

-- declare function for simplicity
local function playerAdded(player)  -- Player Added event
	print(player, "has joined")
end

local touchStatus = false
local function touched(otherpart) -- Touched event
	if touchStatus == false then
		print(otherpart.Name) -- Parts of player
		touchStatus = true
		task.wait(2)
		touchStatus = false
	end
end


game.Players.PlayerAdded:Connect(playerAdded)
sand.Touched:Connect(touched)
