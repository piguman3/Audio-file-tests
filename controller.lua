local scanner = peripheral.find("plethora:scanner")

local sensor = peripheral.find("plethora:sensor")

local addup = 9
local range = 17

local w, h = term.getSize()

local function cursorReverse(x, y)
    term.setCursorPos(x,range-y)
end

while 1 do
    print("Command:")
    local input = io.read()
    if string.sub(input,1,2)=="e " then
        shell.run(string.sub(input,3,-1))
    end

    if input=="exit" then
        return
    end

    if input=="terminate" then
        shell.run("delete controller.lua")
        shell.run("delete startup")
        shell.run("delete startup.lua")
        shell.run("reboot")
    end

    if string.sub(input,1,4)=="say " then
        os.setComputerLabel(string.sub(input,5,-1))
    end

    if input=="scan" then
        for _, block in pairs(scanner.scan()) do
            print(("The block at %d, %d, %d is %s"):format(block.x, block.y, block.z, block.name))
        end
    end

    if input=="sense" then
        for _, entity in pairs(sensor.sense()) do
            print(entity.name)
        end
    end

    if string.sub(input, 1, 6)=="sense " then
        local id = string.sub(input, 7, -1)
        print(id)
        for _, entity in pairs(sensor.sense()) do
            if (entity.key == id) or (entity.name == id) then
                print(("We found an entity (name: %s)"):format(entity.name))
                print(entity.x .. " " .. entity.y .. " " .. entity.z)
            end
        end
    end

    if string.sub(input, 1, 5)=="scan " then
        local id = string.sub(input, 6, -1)
        print(id)
        for _, block in pairs(scanner.scan()) do
            if (block.name == id) then
                print(("The block at %d, %d, %d is %s"):format(block.x, block.y, block.z, block.name))
            end
        end
    end

    if input=="map" then
        for _, block in pairs(scanner.scan()) do
            if block.z+addup<=h then
                if block.y==0 then
                    cursorReverse(block.z+addup,block.x+addup)
                    if block.name == "minecraft:air" then
                        term.setBackgroundColor(colors.black)
                        term.write(" ")
                    elseif (block.name == "computercraft:turtle_normal") or (block.name == "computercraft:turtle_advanced") then
                        term.setBackgroundColor(colors.yellow)
                        term.write(" ")
                    else
                        term.setBackgroundColor(colors.white)
                        term.write(" ")
                    end
                end
            end
        end
        if sensor then
            for _, entity in pairs(sensor.sense()) do
                if entity.z+addup<=h then
                    cursorReverse(entity.z+addup,entity.x+addup)
                    term.setBackgroundColor(colors.green)
                    term.write(" ")
                end
            end
        end
    term.setBackgroundColor(colors.black)
    term.setCursorPos(18,1)
    end

    if string.sub(input, 1, 4)=="map " then
        local id = string.sub(input, 5, -1)
        for _, block in pairs(scanner.scan()) do
            if block.z+addup<=h then
                if block.y==0 then
                    cursorReverse(block.z+addup,block.x+addup)
                    if block.name == "minecraft:air" then
                        term.setBackgroundColor(colors.black)
                        term.write(" ")
                    elseif (block.name == "computercraft:turtle_normal") or (block.name == "computercraft:turtle_advanced") then
                        term.setBackgroundColor(colors.yellow)
                        term.write(" ")
                    elseif block.name == id then
                        term.setBackgroundColor(colors.red)
                        term.write(" ")
                    else
                        term.setBackgroundColor(colors.white)
                        term.write(" ")
                    end
                end
            end
        end
        if sensor then
            for _, entity in pairs(sensor.sense()) do
                if entity.z+addup<=h then
                    cursorReverse(entity.z+addup,entity.x+addup)
                    if (entity.name == id) or (entity.key == id) then
                        term.setBackgroundColor(colors.orange)
                        term.write(" ")
                    else
                        term.setBackgroundColor(colors.green)
                        term.write(" ")
                    end
                end
            end
        end
    term.setBackgroundColor(colors.black)
    term.setCursorPos(1,1)
    end
end