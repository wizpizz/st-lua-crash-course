print(os.time()) -- returns the number of seconds since the epoch
local past = os.time({ -- returns the number of seconds since the epoch up until the given time
    year = 2000,
    month = 10,
    day = 1,
    hour = 13,
    min = 20,
    sec = 10
})

print(os.difftime(os.time(), past)) -- returns the number of seconds between the two times

print(os.date()) -- returns a string representing the current date and time

print(os.getenv("PATH")) -- returns the value of the given environment variable

os.rename("myfile.txt", "newname.js") -- renames the given file
os.remove("newname.js") -- removes the given file

os.execute("whoami") -- runs the given command

local start = (os.clock()) -- starts a timer

for i = 1, 100000000 do
    local x = 10
end

print(os.clock() - start) -- returns the time since the timer was started

os.exit() -- exits the program