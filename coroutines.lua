local routine_1 = coroutine.create(function () -- coroutine with an anonymous function
    for i = 1, 10, 1 do
        print("(Routine 1): " .. i)

        if i == 5 then
            coroutine.yield()
        end
    end
end)

local routine_func = function ()
    for i = 11, 20 do
        print("(Routine 2): " .. i)
    end
end

local routine_2 = coroutine.create(routine_func) -- coroutine with a normal function

coroutine.resume(routine_1) -- starts routine_1 and it is suspended when i reaches 5
coroutine.resume(routine_2) -- starts routine_2
if coroutine.status(routine_1) == "suspended" then -- returns "suspended" because it is still waiting for the yield
    coroutine.resume(routine_1) -- resumes routine_1 and in the first iteration i is 6, that's why the routine runs until i reaches 10
end 
print(coroutine.status(routine_1)) -- returns "dead" because it has finished

--[[
    coroutines can be useful because you can pause a function and resume it later
    while a function is paused, another ones can run
]]