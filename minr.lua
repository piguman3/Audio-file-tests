local args = {...}

local ores = {
    "minecraft:coal_ore",
    "minecraft:deepslate_coal_ore",
    "minecraft:diamond_ore",
    "minecraft:deepslate_diamond_ore",
    "minecraft:iron_ore",
    "minecraft:deepslate_iron_ore",
    "minecraft:copper_ore",
    "minecraft:deepslate_copper_ore",
    "minecraft:gold_ore",
    "minecraft:deepslate_gold_ore",
    "minecraft:emerald_ore",
    "minecraft:deepslate_emerald_ore",
    "minecraft:lapis_ore",
    "minecraft:deepslate_redstone_ore",
    "minecraft:redstone_ore",
    "minecraft:deepslate_lapis_ore",
    "minecraft:ancient_debris",
    "minecraft:magma_block",
    "minecraft:diorite",
    "minecraft:andesite",
    "create:zinc_ore",
    "create:deepslate_zinc_ore",
    "mekanism:tin_ore",
    "mekanism:deepslate_tin_ore",
    "mekanism:uranium_ore",
    "mekanism:deepslate_uranium_ore",
    "mekanism:fluorite_ore",
    "mekanism:deepslate_fluorite_ore"
}

local depth = 0

print("Tunnel length:")
local tunnellen = tonumber(args[1])

print("Depth to mine at: (from bedrock)")
local minedepth = tonumber(args[2])

print("Turtle has " .. turtle.getFuelLevel() .. " fuel points left, continue?")
io.read()

local function dig()
    repeat
        turtle.dig()
    until turtle.detect()==false
end

local moves = {}

local function check(side)
    local success, data = nil

    if side=="up" then
        success, data = turtle.inspectUp()
    elseif side=="down" then
        success, data = turtle.inspectDown()
    else
        success, data = turtle.inspect()
    end

    for k,v in pairs(ores) do
        if data.name == v then
            if side=="up" then
                repeat
                    turtle.digUp()
                until turtle.detectUp()==false
            elseif side=="down" then
                repeat
                    turtle.digDown()
                until turtle.detectDown()==false
            else
                repeat
                    turtle.dig()
                until turtle.detect()==false
            end
            return true
        end
    end
    return false
end

local function backTrack()
    local move = moves[#moves]
    for k,m in pairs(move) do
        if m=="back" then
            turtle.back()
        elseif m=="right" then
            turtle.turnRight()
        elseif m=="left" then
            turtle.turnLeft()
        elseif m=="up" then
            turtle.up()
        elseif m=="down" then
            turtle.down()
        end
    end

    table.remove(moves, #moves)
end

local function turnCheck()
    turtle.turnLeft()

    if check() then
        table.insert(moves, {"back", "right"})
        turtle.forward()
        return false
    end

    turtle.turnRight()
    if check() then
        table.insert(moves, {"back"})
        turtle.forward()
        return false
    end

    turtle.turnRight()
    if check() then
        table.insert(moves, {"back", "left"})
        turtle.forward()
        return false
    end

    turtle.turnLeft()

    if check("up") then
        table.insert(moves, {"down"})
        turtle.up()
        return false
    end

    if check("down") then
        table.insert(moves, {"up"})
        turtle.down()
        return false
    end

    if #moves>0 then
        backTrack()
    else
        return true
    end
end

local function tunnel(t)
    for x=1,tunnellen do
        moves = {}
        repeat
        until turnCheck()
        turtle.dig()
        turtle.forward()
        if (t==false) and (x%5==0) then
            turtle.turnLeft()
            tunnel(true)
            turtle.turnRight()
        end
    end

    turtle.turnLeft()
    turtle.turnLeft()

    for x=1,tunnellen do
        turtle.dig()
        turtle.forward()
    end

    turtle.turnLeft()
    turtle.turnLeft()
end

while 1 do
    turtle.digDown()
    turtle.down()
    depth = depth + 1
    for x=1,4,1 do
        local success, data = turtle.inspect()
        for k,v in pairs(ores) do
            if data.name == v then
                turtle.dig()
            end
        end
        turtle.turnRight()
    end
    local success, data = turtle.inspectDown()
    if data.name == "minecraft:bedrock" then
        for x=1,minedepth do
            turtle.digUp()
            turtle.up()
        end
        for x=1,4 do
            tunnel(false)
            turtle.turnLeft()
        end
        for x=1,depth-minedepth do
            turtle.digUp()
            turtle.up()
        end
        break
    end
end