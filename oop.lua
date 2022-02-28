local t = {
    name = "Jack",
    age = 18,
    friends = {"Fred"}
}

print(t.name)

local function Pet(name)
    return {
        name = name or "Luis",
        status = "Hungry",
        
        feed = function (self)
            print(name .. " is fed")
            self.status = "Full"
        end
    }
end

local cat = Pet("Kitty") -- an object, an instance of the Pet (class)
local dog = Pet()

print(cat.name)
print(dog.name)

cat:feed() --  we use a colon to call a method
print(cat.status)
print(dog.status) -- the status is still "Hungry" because cat and dog are different objects

local function Dog(name, breed)
    local dog = Pet(name) -- inherits from Pet

    dog.breed = breed
    dog.loyalty = 0

    dog.isLoyal = function (self)
        return self.loyalty >= 10 -- if dog.loyalty >= 10, then return true
    end

    dog.feed = function (self) -- overrides the feed method from Pet
        print(name .. " is fed")
        self.status = "Full"
        self.loyalty = self.loyalty + 5
    end

    dog.bark = function (self)
        print("Woof Woof")
    end

    return dog -- after inheriting from Pet, we return the dog object
end

local lassy = Dog("Lassy", "Poodle")
print(lassy.breed)
lassy:bark()
print(lassy.status) -- We can still access the status property from Pet
lassy:feed()
lassy:feed()
if lassy:isLoyal() then
    print("Will protect against intruder")
else
    print("Will NOT protect against intruder")
end