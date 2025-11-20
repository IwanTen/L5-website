# displayDensity()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the display's current pixel density.

## Examples

![displayDensity example 1](assets/displayDensity1.webp)

```lua
function setup()
  size(100,100)
  -- Create a canvas and draw
  -- a circle.
  background(200)
  circle(50, 50, 70)

  describe('A fuzzy white circle drawn on a gray background. The circle becomes sharper when the mouse is pressed.')
end

function mousePressed()
  -- Get the current display density.
  local d = displayDensity()
  -- And print it out
  print(d)

  -- Paint the background and
  -- draw a circle.
  background(200)
  circle(50, 50, 70)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
