local function addTableValues(v1, v2)
    return {x = v1.x + v2.x, y = v1.y + v2.y}
end

local tbl1 = {x = 10, y = 20}
local tbl2 = {x = 5, y = 9}

-- local ans = tbl1 + tbl2 -- error, because + operator is not defined for tables
local ans2 = addTableValues(tbl1, tbl2)

local metatable = {
    __add = addTableValues, -- change the + operator to addTableValues
    __sub = function (v1, v2)
        return {x = v1.x - v2.x, y = v1.y - v2.y}
    end
    --[[
        __add = +
        __sub = -
        __mul = *
        __div = /
        __mod = %
        __pow = ^
        __concat = ..
        __len = #
        __eq = ==
        __lt = <
        __le = <=
        __gt = >
        __ge = >=
    ]]
}

setmetatable(tbl1, metatable) --  whenever tbl1 is involved in an operation, it will use the __add metamethod

-- now we get no errors
local ans3 = tbl1 + tbl2
local ans4 = tbl1 - tbl2
print(ans3, ans4)

local vec = tbl1 + tbl2
print("x: " .. vec.x .. "\ny: " .. vec.y)