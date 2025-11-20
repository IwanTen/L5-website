# atan2()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the angle formed by a point, the origin, and the positive x-axis.

`atan2()` is most often used for orienting geometry to the mouse's position, as in `atan2(mouseY, mouseX)`. The first parameter is the point's y-coordinate and the second parameter is its x-coordinate.

By default, `atan2()` returns values in the range -π (about -3.14) to π (3.14). If the angleMode() is `DEGREES`, then values are returned in the range -180 to 180.

## Examples

![atan2 example 1](assets/atan21.webp)

```lua
function setup() 
  size(100, 100)
  windowTitle("atan2 example")
  describe('A rectangle at the top-left of the canvas rotates with mouse movements.')
end

function draw() 
  background(200)
  -- Calculate the angle between the mouse
  -- and the origin.
  local a = atan2(mouseY, mouseX)

  -- Rotate.
  rotate(a)

  -- Draw the shape.
  rect(0, 0, 60, 10)
end
```

## Related

* [atan()](atan.md)
* [tan()](tan.md)
