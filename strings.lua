local str = "Hello World!"
print(str)
print(type(str))

str = [[
    Hello World!
    my name is jack
]]

print(#str) -- length of string
str = #"Hello World!" -- putting # before a string returns the length of the string
print(str)

str = "Hello" .. " World!" -- use .. to concatenate strings
print(str)

str = "Hello World"
local x = 22
local y = tostring(x)
print(type(x), type(y))

print("Hello")
print("World!") -- use 2 prints to print in 2 lines
print([[
Hello
World!
]]) -- use [[ ]] to print in 2 line with 1 print
print("Hello\nWorld!") -- use an escape character to print in 2 lines
print("Hello\nWorld\t!!!!!!\vI am \"Steve\\Netsu\"") -- \v is a vertical tab, \\ for a backslash, \" for a double quote
print('Hello\nWorld\t!!!!!!\vI am "Steve\\Netsu"') -- single quotes can be used too so that you don't have to escape the double quotes

print(string.lower(str)) -- lowercase a string
print(string.upper(str)) -- uppercase a string
print(#str) -- length of string
print(string.len(str)) -- length of string

print(string.sub(str, 1, 3)) -- get a substring from 1st to 3rd character

print(string.char(97)) -- get the character for a number
print(string.byte("a")) -- get the number for a character
print(string.byte(str, 1, 99)) -- get number values of all the characters in a string

print(string.rep("Hello!", 10, ",")) -- repeat a string 10 times with a comma between each

print(string.format("pi: %.10f\nMy age: %i", math.pi, 18)) -- format a string, 10 means 10 decimal places

print(string.find(str, "llo")) -- find a string in a string, returns the starting and ending index of the string, in this case 3 and 5

print(string.match(str, "llo")) -- match a string in a string, returns the string if it is found, in this case "llo"

local begin, ending = string.find(str, "llo")
print("Begin: " .. begin .. " Ending: " .. ending)

print(string.gsub(str, "l", "!")) -- replace all l with !