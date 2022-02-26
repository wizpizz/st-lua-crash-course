print("What is 10 + 5?") -- print statements put new line by default
local ans = io.read()
print("\nYour Answer: " .. ans)

io.write("Input 10 + 5: ") -- io.write doesn't put new line by default
local ans = io.read()
print("\nYour Answer: " .. ans)

local num1, num2 = 10, 5
local true_ans = num1 + num2
io.write("Input " .. num1 .. " + " .. num2 .. ": ")
local ans = io.read()
    if tonumber(ans) == true_ans then
        print("You are correct!")
    else
        print("\nYour answer, " .. ans .. ", is incorrect! Try again!")
end