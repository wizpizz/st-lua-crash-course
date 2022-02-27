io.output("myFile.txt") -- creates or overwrites the file

io.write("Hello World! 88") -- writes to the file

io.close() -- closes the file, if file is not closed it might lead to memory leaks

io.input("myFile.txt") -- opens the file for reading

local file = io.read(5) -- reads 5 characters from the file
print(file)

file = io.read("*number") -- reads a number from the file
print(file)

file = io.read("*line") -- reads a line from the file
print(file)

file = io.read("*all") -- reads the whole file
print(file)

local myfile = io.open("myFile.txt", "w")
--[[
    "r" -- Read mode.
    "w" -- Write mode.
    "a" -- Append mode.
    "r+" -- Update mode, all previous data is preserved.
    "w+" -- Update mode, all previous data is erased.
    "a+" -- Append update mode, previous data is preserved, writing is only allowed at the end of file.
    "rb" -- Read mode. (in binary mode.)
    "wb" -- Write mode. (in binary mode.)
    "ab" -- Append mode. (in binary mode.)
    "r+b" -- Update mode, all previous data is preserved. (in binary mode.)
    "w+b" -- Update mode, all previous data is erased. (in binary mode.)
    "a+b" -- Append update mode, previous data is preserved, writing is only allowed at the end of file. (in binary mode.)
]]

myfile:write("My name is Netsu")
myfile:close()

myfile = io.open("myFile.txt", "a")

myfile:write("\nJack: He is old!\nNetsu: Yeah, I know.")
myfile:close()

myfile = io.open("myFile.txt", "r")

local reads = myfile:read("*all")
print(reads)
myfile:close()