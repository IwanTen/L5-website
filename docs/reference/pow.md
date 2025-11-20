# pow()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates exponential expressions such as <var>2<sup>3</sup></var>.

For example, `pow(2, 3)` evaluates the expression
2 × 2 × 2. `pow(2, -3)` evaluates 1 ÷
(2 × 2 × 2).

## Examples

![pow example 1](assets/pow1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Set the base of the exponent.
  local base = 3

  -- Top-left.
  local d = pow(base, 1)
  circle(10, 10, d)

  -- Left-center.
  d = pow(base, 2)
  circle(20, 20, d)

  -- Right-center.
  d = pow(base, 3)
  circle(40, 40, d)

  -- Bottom-right.
  d = pow(base, 4)
  circle(80, 80, d)

  describe('A series of circles that grow exponentially from top left to bottom right.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
