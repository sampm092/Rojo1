local sun = Workspace.Sun:FindFirstChild("Sun")

while true do
    local r = math.random(0,255)
    local g = math.random(0,255)
    local b = math.random(0,255)

    sun.Color = Color3.fromRGB(r,g,b) --changing color with rgb

    task.wait(2)
end