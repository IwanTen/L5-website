# deltaTime()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` variable that tracks the number of milliseconds it took to draw the last frame.

`deltaTime` contains the amount of time it took draw() to execute during the previous frame. It's useful for simulating physics.

## Examples

![deltaTime example 1](assets/deltaTime1.webp)

```lua
local x = 0
local speed = 5

function setup()
  size(100, 100)

  -- Set the frameRate to 30.
  frameRate(30)

  describe('A white circle moves from left to right on a gray background. It reappears on the left side when it reaches the right side.')
end

function draw()
  background(200)

  -- Use deltaTime to calculate
  -- a change in position.
  local deltaX = speed * deltaTime

  -- Update the x variable.
  x = x + deltaX

  -- Reset x to 0 if it's
  -- greater than 100.
  if x > 100 then
    x = 0
  end

  -- Use x to set the circle's
  -- position.
  circle(x, 50, 20)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
