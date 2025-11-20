# round()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the integer closest to a number.

For example, `round(133.8)` returns the value 134.

The second parameter, `decimals`, is optional. It sets the number of decimal places to use when rounding. For example, `round(12.34, 1)` returns 12.3. `decimals` is 0 by default.

## Examples

![round example 1](assets/round1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Round a number.
  local x = round(4.2)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the rounded number.
  text(x, 50, 50)

  describe('The number 4 written in middle of the canvas.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
