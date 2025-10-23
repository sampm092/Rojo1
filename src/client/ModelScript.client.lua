-- local model = script.Parent -- the same with game.workspace.Model
local model = game.workspace.Model

-- find child 'Part1' inside model
local part1 = model:FindFirstChild("Part1") 

part1.Touched:Connect(function()
    part1.BrickColor = BrickColor.new("Teal")
end)
-- this used to avoid error log

--[[ 
	local part1 = model.Part1 
	this give error log if Part1 is not exist
]]

-- detect Part2 inside model
local part2 = model:WaitForChild("Part2")
part2.Touched:Connect(function()
    part2.Material = "Mud"
    print("Material changed")
end)
-- If there's no Part2, it will wait until it's added