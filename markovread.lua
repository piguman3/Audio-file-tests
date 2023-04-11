local markov_name = "markov.txt"

dofile(markov_name)

--print(Markov)

local words={}
local n=0

for k,v in pairs(Markov) do
  n=n+1
  words[n]=k
end

local sentence = {}

sentence[1] = words[math.random(#words)]

for x=2,10,1 do
    local lastword = sentence[x-1]
    if not (Markov[lastword] == nil) then
      sentence[x] = Markov[lastword][math.random(#Markov[lastword])]
    end
end

local output = ""
for k,v in pairs(sentence) do
    output = output .. v .. " "
end

print(output)