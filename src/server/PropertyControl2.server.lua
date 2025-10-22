local Sand = game.Workspace.Sand 
local plate = game.Workspace.Baseplate
local status 

local function Start()
	--Data Type
	Sand.Transparency = 0.5 -- Number
	Sand.Color = Color3.new(255,3,2)
	Sand.Material = "Sand" -- String
	Sand.CastShadow = false  -- Bool
end

local function ChangePlate()
	status = true
	-- IF ELSE STRUCTURE
	if plate ~= nil then -- if plate not null
		plate.Material = "Brick"
	elseif plate.Transparency > 0 then
		plate.Material = "SmoothPlastic"
	else
		print("No Baseplate")
	end
end

local function Loop()
	-- WHILE AND FOR LOOP
	local j = 2
	for i = 1,10,1 do --for (1 = 1 ; i <= 3; i + 1)  
		while j <= 8 do
			print(i+j)	
			plate.BrickColor = BrickColor.new("Teal")
			task.wait(1)
			plate.BrickColor = BrickColor.new("Artichoke")
			task.wait(1)
			j += 2
		end
		if i == 4 then
			break
		end

	end
	
end

Start()
ChangePlate()
Loop()
