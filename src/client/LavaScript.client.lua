local lavaModel = workspace.Lava

-- Loop through every child in the model
for _, part in ipairs(lavaModel:GetDescendants()) do
	if part:IsA("BasePart") then
		part.Touched:Connect(function(otherPart)
			local character = otherPart.Parent
			if not character then return end

			local humanoid = character:FindFirstChild("Humanoid")
			if humanoid then
				humanoid.Health = 0
			end
		end)
	end
end
