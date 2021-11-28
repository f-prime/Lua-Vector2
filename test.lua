local vector2 = require("vector2")

local v1 = vector2:new(2, 4)
local v2 = vector2:new(1, 5)

local sum = v1 + v2
local diff = v1 - v2
local scaled_up = v1 * 2
local scaled_down = v1 / 2 

assert(sum.x == 3 and sum.y == 9, tostring(sum) .. " != (3, 9)")
assert(diff.x == 1 and diff.y == -1, tostring(diff) .. " != (1, -1)")
assert(scaled_up.x == 4 and scaled_up.y == 8, tostring(scaled_up) .. " != (4, 8)")
assert(scaled_down.x == 1 and scaled_down.y == 2, tostring(scaled_down) .. " != (1, 2)")

local v3 = vector2:new(4, 4)

local mag = v3:mag()
local normalize = v3:normalize()
local direction = v3:direction(v2)
local distance = v3:distance(v1)
local dot = v3:dot(v1)

assert(math.floor(normalize.x * 1000) == 707 and math.floor(normalize.y * 1000) == 707, "normalize returned " .. tostring(normalize)) 
assert(math.floor(direction * 1000) == -334, "direction returned " .. tostring(direction)) 
assert(dot == 24, dot, "dot returned " .. dot)
assert(math.floor(mag * 100) == 565, mag, "mag returned " .. mag) 

local v4 = vector2:new(3, 2)
local rotated = v4:rotate(90)
assert(rotated.x == 2 and rotated.y == -3, tostring(rotated))
