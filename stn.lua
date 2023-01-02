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

        local chunks = mysplit(v, "\n")
        for _, k in ipairs(chunks) do
            local dx, dy = term.getCursorPos()
            if _==1 then
                term.write(string.sub(k, 3, string.len(k)))
            else
                term.write(string.sub(k, 1, string.len(k)))
            end
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