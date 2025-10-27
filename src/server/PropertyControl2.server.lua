local Sand = game.Workspace.Sand
local plate = game.Workspace.Baseplate
local status

local function Start()
    -- Data Type
    Sand.Transparency = 0.5 -- Number
    Sand.Color = Color3.new(255, 3, 2)
    Sand.Material = "Sand" -- String
    Sand.CastShadow = false -- Bool
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
    for i = 1, 10, 1 do -- for (1 = 1 ; i <= 3; i + 1)  
        while j <= (8 + i) do
            print(i + j)
            plate.BrickColor = BrickColor.new("Teal")
            task.wait(1)
            plate.BrickColor = BrickColor.new("Artichoke")
            task.wait(1)
            j = j + 2
            local randomNumber = math.random(1, 6) -- a normal random function
            print("This is random - ", randomNumber)
        end
    end

end

local function tryLoop()
    for i = 1, 1000 do
        if i == 10 then
            print("i is printed")
        end

        if i == 200 then
            break
        end

        print("This the last")
    end
end

local function array()
    local myArray = {5, "Steak", false, "ore"}
    for i = 1, #myArray do -- # = length
        print(myArray[index])
    end

    -- inserting to array
    table.insert(myArray, 22) -- value
    -- removing from array
    table.remove(myArray, 4) -- position
    -- searching from array
    table.find(myArray, 5) -- output boolean
end

local function dictionary()
    local menu = {
        ["a"] = 15,
        ["b"] = 12,
        ["c"] = 20,
        ["d"] = 30
    }
    local younu = {
        a = 12,
        b = 33,
        c = 10,
        d = 5
    }
    print(menu["a"]) -- output 15
    print(menu["a"], menu["b"]) -- output 4
    print(younu.a) -- output 12

    menu["a"] = 20 -- replace 15

    for value1, value2 in pairs(menu) do -- randomly print out value1 value 2 pairs
        print(value1, value2)
    end

	for i, v in ipairs(younu) do -- print out value1 value 2 pairs as it is
		print(i,v)
	end
end

Start()
ChangePlate()
Loop()
-- tryLoop()
