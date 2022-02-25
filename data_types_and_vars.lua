--[[
    nil = NULL
    number 1, 1.24, 0.1, 44
    string "hello", 'hello world'
    boolean true, false
    table {}, {1, 2, 3}
]]

local a -- a variable in the local scope
print(a)

local b = 10 -- a local variable with a value
print(b)

local c = 2
print(c + 5) -- addition

local name = "jack"
print("Hello my name is " .. name .. ". I am 12 years old. I have decided that my name should not be " .. name .. " because the name " .. name .. " sucks")

-- 100+ line code

print(name)
name = nil -- clear the variable
name = 20
print(name)
name = false
print(name)

name = "jack"
local surname = "smitter"
local full_name = name .. " " .. surname
print(full_name)

local description = [[Colo
    Hello World
please
]] -- multi line string
print(description)

local old = true -- boolean
-- nil and false are both false values

C = 20 -- a global scope variable, global variables should be capitalized
local c = 20
print(C, c)

_G.Hello = "Hello there!" -- another way to create a global variable
x = 12
print(
    type(x)) -- get the type of the variable