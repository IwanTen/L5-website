# tan()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the tangent of an angle.

`tan()` is useful for many geometric tasks in creative coding. The values
returned range from -Infinity to Infinity and repeat periodically as the
input angle increases. `tan()` calculates the tan of an angle, using radians
by default, or according to
if angleMode() setting (RADIANS or DEGREES).

## Examples

![tan example 1](assets/tan1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  describe('A series of identical curves drawn with black dots. Each curve starts from the top of the canvas, continues down at a slight angle, flattens out at the middle of the canvas, then continues to the bottom.')
end

function draw()
  -- Calculate the coordinates.
  local x = frameCount
  local y = 5 * tan(x * 0.1) + 50

  -- Draw the point.
  point(x, y)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
