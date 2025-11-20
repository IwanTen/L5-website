# sq()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the square of a number.

Squaring a number means multiplying the number by itself. For example,
`sq(3)` evaluates 3 × 3 which is 9. `sq(-3)` evaluates -3 × -3
which is also 9. Multiplying two negative numbers produces a positive
number. The value returned by `sq()` is always positive.

## Examples

![sq example 1](assets/sq1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Top-left.
  local d = sq(3)
  circle(33, 33, d)

  -- Bottom-right.
  d = sq(6)
  circle(67, 67, d)

  describe('Two white circles. The circle at the top-left is small. The circle at the bottom-right is four times larger.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
