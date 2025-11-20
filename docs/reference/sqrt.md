# sqrt()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the square root of a number.

A number's square root can be multiplied by itself to produce the original
number. For example, `sqrt(9)` returns 3 because 3 × 3 = 9. `sqrt()`
always returns a positive value. `sqrt()` doesn't work with negative arguments
such as `sqrt(-9)`.

## Examples

![sqrt example 1](assets/sqrt1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Top-left.
  local d = sqrt(16)
  circle(33, 33, d)

  -- Bottom-right.
  d = sqrt(1600)
  circle(67, 67, d)

  describe('Two white circles. The circle at the top-left is small. The circle at the bottom-right is ten times larger.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
