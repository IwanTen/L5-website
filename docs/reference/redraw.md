# redraw()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Runs the code in draw() once.

By default, draw() tries to run 60 times per
second. Calling noLoop() stops
draw() from repeating. Calling `redraw()` will
execute the code in the draw() function a set
number of times.

The parameter, `n`, is optional. If a number is passed, as in `redraw(5)`,
then the draw loop will run the given number of times. By default, `n` is
1.

## Examples

![redraw example 1](assets/redraw1.webp)

```lua
-- Double-click the canvas to move the circle.

local x = 0

function setup()
  size(100, 100)

  -- Turn off the draw loop.
  noLoop()

  describe(
    'A white half-circle on the left edge of a gray square. The circle moves a little to the right when the user double-clicks.'
  )
end

function draw()
  background(200)

  -- Draw the circle.
  circle(x, 50, 20)

  -- Increment x.
  x += 5
end

-- Run the draw loop when the user double-clicks.
function doubleClicked()
  redraw()
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
