# noCursor()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Hides the cursor from view.

## Examples

![noCursor example 1](assets/noCursor1.webp)

```lua
function setup()
  -- Hide the cursor.
  noCursor()
end

function draw()
  background(200)

  circle(mouseX, mouseY, 10)

  describe('A white circle on a gray background. The circle follows the mouse as it moves. The cursor is hidden.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
