--[[
    a table is a container for multiple values.
]]

local arr = {10, true, "hello world"} -- any type of value can be stored in a table
local x, y, z = 10, 15, 20
print(arr) -- returns the location of the table in memory
print(arr[1]) -- returns the value at index 1
print(arr[4]) -- returns nil, because there is no value at index 4
print(arr[#arr]) -- returns the last value in the table

local arr2 = {10, 15, 23, 50, 0, 12, 1, 7, 9}
table.sort(arr2) -- sorts the table

table.insert(arr2, 2, "lol") -- inserts a value at index 2
table.remove(arr2, 3) -- removes the value at index 2

for i = 1, #arr2 do
    print(arr2[i])
end

local arr3 = {"hello", "world", "I", "am steve"}

print(table.concat(arr3, " ")) -- concatenates the table into a string

local arr4 = { -- a multi-dimensional table
    {1, 2, 3},
    {6, 8, 0},
    {9, 99, 989}
}
print(arr4[2][2]) -- returns the value at index 2, index 2

for i = 1, #arr4 do -- iterating through a multi-dimensional table
    for j = 1, #arr4[i] do -- for every table in the multi-dimensional table
        print(arr4[i][j])
    end
end