local str = "22"
local str2 = "22a"

print(type(tonumber(str))) -- cast string to number and print its type
print(type(tonumber(str2))) --  returns nil because string contains a letter and therefore cannot be cast to number


-- basic math functions
print(5 + 5 + 5 + 5 + 1)
print(20 - 5 - 7 - 22)
print(2 ^ 5)
print(5 * 9 * (2 + 5))
print(100 / 3.14)
print(10 % 3) -- remainder operator
print((5 + 2) * 10 / 2)

-- using the math module
print(math.pi) -- print pi
print(math.random()) -- this is not quite random
math.randomseed(os.time()) -- that's why we can use the time as a seed to always keep the seed different
print(math.random())
print(os.time())
print(math.random(10, 50)) -- specify the range of the random number
print(math.min(10, 20, 30, 40, 50)) -- returns the minimum value of the given parameters
print(math.floor(3.14)) -- rounds down to the nearest integer
print(math.ceil(3.14)) -- rounds up to the nearest integer
print(math.cos(20)) -- cosine function
print(math.sin(20)) -- sine function
print(math.tan(20)) -- tangent function