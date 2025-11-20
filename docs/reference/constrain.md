# constrain()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Constrains a number between a minimum and maximum value.

## Examples

![constrain example 1](assets/constrain1.webp)

```lua
function setup()
  size(100, 100)

  describe('A black dot drawn on a gray square follows the mouse from left to right. Its movement is constrained to the middle third of the square.')
end

function draw()
  background(200)

  local x = constrain(mouseX, 33, 67)
  local y = 50

  strokeWeight(5)
  point(x, y)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
