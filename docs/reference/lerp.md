# lerp()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates a number between two numbers at a specific increment.

The `amt` parameter is the amount to interpolate between the two numbers. 0.0 is equal to the first number, 0.1 is very near the first number, 0.5 is half-way in between, and 1.0 is equal to the second number. The `lerp()` function is convenient for creating motion along a straight path and for drawing dotted lines.

If the value of `amt` is less than 0 or more than 1, `lerp()` will return a number outside of the original interval. For example, calling `lerp(0, 10, 1.5)` will return 15.

## Examples

![lerp example 1](assets/lerp1.webp)

```lua

function setup() 
  size(100, 100)
  windowTitle("Lerp example")
  background(200)

  -- Declare variables for coordinates.
  local a = 20
  local b = 80
  local c = lerp(a, b, 0.2)
  local d = lerp(a, b, 0.5)
  local e = lerp(a, b, 0.8)

  strokeWeight(5)

  -- Draw the original points in black.
  stroke(0)
  point(a, 50)
  point(b, 50)

  -- Draw the lerped points in gray.
  stroke(100)
  point(c, 50)
  point(d, 50)
  point(e, 50)

  describe('Five points in a horizontal line. The outer points are black and the inner points are gray.')
end
```

## Related

* [round()](round.md)
* [map()](map.md)
* [constrain()](constrain.md)
