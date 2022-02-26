--[[
    start, end, step
    start with the value 1, end with the value 10, and step with the value 1
]]
for i = 1, 10, 1 do
    print(i)
end

for i = 2, 100, 2 do -- step 2
    print(i)
end

for i = 10, 1, -1 do -- count down
    print(i)
end

local start_val, end_val, step_val = 1, 10, 1
for i = start_val, end_val, step_val do -- values are contained in variables
    print(i)
end

local arr = {2, 3, 45, 65676, 34, 32, 2, 30}
for i = 1, #arr do -- for length of array
    print(arr[i])
end

local peeps = 10
while peeps > 0 do
    peeps = peeps - 1
    print("People left are party " .. peeps)
end

--[[
while true do -- an infinite loop
    print("LOOP")
end
]]

local run = true
local runtime = 0
while run do -- run until the loop is ran 10 times
    print("running")

    if runtime == 10 then
        run = false
    end

    runtime = runtime + 1
end

local x = 11

-- repeat loops are like while loops but they run at least once
repeat -- repeat this until x is 10
    print("Hey there!")
    x = x + 1
until x > 10 -- until this statement is true

--[[ another way to write an infinite loop
repeat
    print("Hello")
until false -- the false statement is never true
]]

--[[
    while loops work with true values
    repeat loops work with false values

]]