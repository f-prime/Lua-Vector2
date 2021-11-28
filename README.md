# Lua Vector2

A simple Vector2 implementation in Lua. For use in my Love2D projects.

All operations are immutable.

# Example

```
local Vector2 = require("vector2")
local v1 = Vector2:new(5, 5)
local v2 = Vector2:new(2, 3)

local v3 = v1 + v2
print(v3) -- (7, 8)

v3 = v3 * 2
print(v3) -- (14, 16)

print(v2:mag())
```

# Methods

### mag() -> number

Calculate the magnitude of the vector.

### normalize() -> Vector2

Returns a unit vector

### direction(Vector2) -> number

Returns the tan(theta) to another vector. Taking the arctan of the
value returned by this function will give the angle between the two vectors.

### distance(Vector2) -> number

Returns the Euclidean distance between two vectors

### dot(Vector2) -> number

Returns the dot product between two vectors

### rotate(theta) -> Vector2

Returns a new vector that is rotated by some angle, theta. 
