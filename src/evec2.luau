local function evec2(x, y)
    if not y then y = x end
    local retv = {
        X = x,
        Y = y,
        tovec2 = function (self) return vec2(self.X, self.Y) end,
        add = function (self, value)
            if typeof(value) == "number" then
                self.X = self.X + value
                self.Y = self.Y + value
                return self
            end
            self.X = self.X + value.X
            self.Y = self.Y + value.Y
            return self
        end,
        subtract = function (self, value)
            if typeof(value) == "number" then
                self.X = self.X - value
                self.Y = self.Y - value
                return self
            end
            self.X = self.X - value.X
            self.Y = self.Y - value.Y
            return self
        end,
        multiply = function (self, value)
            if typeof(value) == "number" then
                self.X = self.X * value
                self.Y = self.Y * value
                return self
            end
            self.X = self.X * value.X
            self.Y = self.Y * value.Y
            return self
        end,
        divide = function (self, value)
            if typeof(value) == "number" then
                self.X = self.X / value
                self.Y = self.Y / value
                return self
            end
            self.X = self.X / value.X
            self.Y = self.Y / value.Y
            return self
        end,
        equals = function (self, value)
            if typeof(value) == "number" then
                return self.X == value and self.Y == value
            end
            return self.X == value.X and self.Y == value.Y
        end,
        greather = function (self, value)
            if typeof(value) == "number" then return self.X > value and self.Y > value end
            return self.X > value.X and self.Y > value.Y
        end,
        less = function (self, value)
            if typeof(value) == "number" then return self.X < value and self.Y < value end
            return self.X < value.X and self.Y < value.Y
        end,
        unm = function(self)
            self.X = -self.X
            self.Y = -self.Y
            return self
        end
    }
    setmetatable(retv, {
        __index = function(self, key)
            if key == 1 then return self.X end
            if key == 2 then return self.Y end
            return nil
        end,
        __tostring = function(self)
            return self.X .. " " .. self.Y
        end,
        __len = function(self)
            return 2
        end,
        __unm = function(self, value)
            return evec2(-self.X, -self.Y)
        end,
        __add = function(self, value)
            if typeof(value) == "number" then value = evec2(value) end
            return evec2(self.X + value.X, self.Y + value.Y)
        end,
        __sub = function(self, value)
            if typeof(value) == "number" then value = evec2(value) end
            return evec2(self.X - value.X, self.Y - value.Y)
        end,
        __mul = function(self, value)
            if typeof(value) == "number" then value = evec2(value) end
            return evec2(self.X * value.X, self.Y * value.Y)
        end,
        __div = function(self, value)
            if typeof(value) == "number" then value = evec2(value) end
            return evec2(self.X / value.X, self.Y / value.Y)
        end,
        __mod = function(self, value)
            if typeof(value) == "number" then value = evec2(value) end
            return evec2(self.X % value.X, self.Y % value.Y)
        end,
        __pow = function(self, value)
            if typeof(value) == "number" then value = evec2(value) end
            return evec2(self.X ^ value.X, self.Y ^ value.Y)
        end,
        __eq = function(self, value)
            return self:equals(value)
        end,
        __lt = function(self, value)
            return self:less(value)
        end,
        __le = function(self, value)
            if typeof(value) == "number" then return self.X <= value and self.Y <= value end
            return self.X <= value.X and self.Y <= value.Y
        end
    })
    return retv
end
return evec2