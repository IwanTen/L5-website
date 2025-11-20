# exp()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the value of Euler's number e (2.71828...) raised to the power
of a number.

## Examples

![exp example 1](assets/exp1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Top-left.
  local d = exp(1)
  circle(10, 10, d)

  -- Left-center.
  d = exp(2)
  circle(20, 20, d)

  -- Right-center.
  d = exp(3)
  circle(40, 40, d)

  -- Bottom-right.
  d = exp(4)
  circle(80, 80, d)

  describe('A series of circles that grow exponentially from top left to bottom right.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
