# cos()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the cosine of an angle.

`cos()` is useful for many geometric tasks in creative coding. The values
returned oscillate between -1 and 1 as the input angle increases. `cos()`
calculates the cosine of an angle, using radians by default, or according to
if angleMode() setting (RADIANS or DEGREES).

## Examples

![cos example 1](assets/cos1.webp)

```lua
function setup()
  size(100, 100)

  describe('A white ball on a string oscillates left and right.')
end

function draw()
  background(200)

  -- Calculate the coordinates.
  local x = 30 * cos(frameCount * 0.05) + 50
  local y = 50

  -- Draw the oscillator.
  line(50, y, x, y)
  circle(x, y, 20)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
