--[[
    Booleans are either;
    true
    or
    false = nil
]]

if true then
    print("Statement was true")
end

-- These two statements are skipped because they are false
if false then
    print("Statement was false")
end
if nil then
    print("Statement was nil")
end

--[[
    >   greater than
    <   less than
    >=  greater than or equal to
    <=  less than or equal to
    ==  equal to
    ~=  not equal to
]]

local age = 30

if (age >= 17) and (age < 60) then -- only execute if age is between 17 and 60
    print("Age is between 17 and 60")
end

age = 9
if (age > 17) or (age < 60) then -- only execute if age is either greater than 17 or less than 60
    print("Age is either greater than 17 or less than 60")
end

--[[
    and: both statements must be true
    or: either statement must be true
]]

if age ~= 20 then -- if age is not equal to 20
    print("Age is not equal to 20")
end

local name = "Tom"
if name == "Tom" then -- if age is not equal to 20
    print("Name is Tom")
end

age = 20
if not (age < 18) then -- execute if the statement is false
    print("Age is not less than 18")
end

age = 11
if age > 20 then
    print("You are old")
    if type(age) == "number" then
        print("Age is a number value")
    end
elseif age > 10 then -- check this statement if the previous one is not true
    print("You are not old or young")
else -- execute this statement if the previous statements are not true; a default statement
    print("You are young")
end

age = 33

local old = false

if age > 30 then
    old = true
end

old = age > 30 and true or false

print(old)