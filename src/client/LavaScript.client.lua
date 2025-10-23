local lava = Workspace.Lava

lava.Touched:Connect(function(otherPart)
	local humanoid = otherPart.Parent:WaitForChild("Humanoid")
	
	if humanoid then
		humanoid.Health = 0
	end
end
)