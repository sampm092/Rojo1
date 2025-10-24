game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder") -- adding 'a' folder 
	leaderstats.Name = "leaderstats" -- naming it leaderstats, and in this context is a must
	leaderstats.Parent = player -- make it added into player object as child
	
	local coins = Instance.new("IntValue") -- adding an intValue
	coins.Name = "Coins"
	coins.Value = 0
	coins.Parent = leaderstats -- adding it to leaderstat folder
	
end)