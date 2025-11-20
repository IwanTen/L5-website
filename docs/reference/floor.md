# floor()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the closest integer value that is less than or equal to the
value of a number.

## Examples

![floor example 1](assets/floor1.webp)

```lua
function setup()
  size(100, 100)

  -- Use RGB color with values from 0 to 1.
  colorMode(RGB, 1)

  noStroke()

  -- Draw the left rectangle.
  local r = 0.8
  fill(r, 0, 0)
  rect(0, 0, 50, 100)

  -- Round r down to 0.
  r = floor(r)

  -- Draw the right rectangle.
  fill(r, 0, 0)
  rect(50, 0, 50, 100)

  describe('Two rectangles. The one on the left is bright red and the one on the right is black.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
