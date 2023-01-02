local monitor
print("Using monitor? [y/n]")

local input = io.read()
local modem = peripheral.find("modem") or error("No modem attached", 0)

print("CHANNEL of station: ")
local stationid = tonumber(io.read())
modem.open(stationid)

local rx = 51
local ry = 19

if (input == "y") then
    monitor = peripheral.find("monitor")
    monitor.setCursorPos(1,1)
    monitor.setTextScale(0.5)
    term.redirect(monitor)
end

term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.clear()

function mysplit (inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end


function printD(text, x, y) --Function to print with color
    local colorchunks = mysplit(text, "¡")

    term.setCursorPos(x, y)

    --Color chunk = 8 color \159 char \159 char
    for _, v in ipairs(colorchunks) do --Iterate through chunks
        --print(string.sub(v, 1, 1))
        local color = 2^tonumber(string.sub(v, 1, 2)) --Get color
        term.setBackgroundColor(color) --Set color
        
        local dx, dy = term.getCursorPos()
        if string.find(string.sub(v, 3, string.len(v)), "\n") then --Check if text is going outside and go to the next line using the \n character
            local dif = 0
            repeat
                local dx, dy = term.getCursorPos()
                local pos, endpos = string.find(string.sub(v, 3+dif, string.len(v)), "\n")
                if pos == nil then
                    term.write(string.sub(v, 3+dif, string.len(v)))
                    break
                end
                term.write(string.sub(v, 3+dif, pos+1+dif)) --Print everything but the color value up yo the \n
                term.setCursorPos(x, dy+1) --Go to next line
                term.write(string.sub(v, endpos+3+dif, string.len(v))) --finish
                dif = dif + (string.len(v)-endpos+3)
            until string.find(string.sub(v, endpos+3, string.len(v)),"\n") == nil
        else
            term.write(string.sub(v, 3, string.len(v))) --Print everything but the color value
        end
    end
end

while 1 do
    local event, side, channel, replyChannel, message, distance
    repeat
        event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message") --Receive transmission
    until channel == stationid
    if input=="y" then --If monitor
        monitor.setCursorPos(1,1)
    end
    
    printD(message, 1, 1) -- Print message to term
    --print("pastebin get ApzjWepByN stn.lua TV program")
    --print("Channel: 3737")
    sleep()
end