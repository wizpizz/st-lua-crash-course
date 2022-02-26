local function displayAge(age)
    age = age or 5 -- age is 5 if it is not passed in
    print("You are " .. age .. " years old")
    print("You will be " .. age+2 .. " years old in 2 years")
    print("You were " .. age-1 .. " years old last year\n")
end

displayAge()
displayAge(25)


local function sum(num1, num2)
    local y = num1 + num2
    _G.z = y
    return y
    -- nothing after return will be executed
end

local x = sum(2, 3)
print(x)
-- print(y) -- cannot access y because it is local to the function, so it returns nil
print(z) -- can access z because it is global
        -- it retuns 5 because the function was last called with 2 and 3
        -- if the functions wasn't called with 2 and 3, it would return nil

local add10 = function (number)
    local outcome = number + 10
    return number, outcome -- multiple return values
end
local stored, output = add10(5)
local _, stored2 = add10(5) -- underscore is used to ignore the first return value
print(stored .. " had 10 added to it: " .. output)

local function counter(number, end_num) -- recursive function
    local count = number + 1 -- add 1 to the number
    if (count < end_num) then -- if the count is less than the end_num
        print(count) -- print the count
        return counter(count, end_num) -- call the function again with the new count
    end
    return count -- return the count
end
print(counter(10, 15))

local function counter2()
    local count = 0

    return function() -- anonymous function
        count = count +1
        return count
    end
end

print(counter2()) -- returns the location of the function
local x = counter2()
print(x()) -- calls the function, returns 1
print(x())
print(x())
print(x())
print(x()) -- count is initialized to 0, so it will return 1, 2, 3, 4, 5

local function sum2(...) -- unknown amount of arguments
    local sums = 0
    for key, value in pairs({...}) do -- since the arguments aren't really a table, we use curly braces to make it one
        -- key is the index, value is the value at that index
        -- ... is the arguments passed in
        -- pairs({...}) is a table with the arguments as the keys and the values
        print(key, value)
        sums = sums + value
    end
    for i = 1, #{...} do -- another way to do the same thing

    end
    print(...) -- prints all the arguments in form of a table
    return sums
end

print(sum2(10, 5, 9, 0, 14))