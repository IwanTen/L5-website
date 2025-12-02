# deltaTime()
 
A `Number` variable that tracks the number of milliseconds it took to draw the last frame.

`deltaTime` contains the amount of time it took draw() to execute during the previous frame. It's useful for simulating physics.

## Examples

![deltaTime example 1](assets/deltaTime1.webp)

```lua
local x = 0
local speed = 0.05  

function setup()
  size(100, 100)
  windowTitle("deltaTime example")
  frameRate(30)
  describe('A white circle moves from left to right on a gray background. It reappears on the left side when it reaches the right side.')
end

function draw()
  background(200)
  local deltaX = speed * deltaTime
  x = x + deltaX
  if x > 100 then
    x = 0
  end
  circle(x, 50, 20)
end

```

## Related

* [frameRate()](frameRate.md)
* [cursor()](cursor.md)
* [describe()](describe.md)
