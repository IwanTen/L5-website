# windowResized()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called when the browser window is resized.

Code placed in the body of `windowResized()` will run when the
browser window's size changes. It's a good place to call
resizeCanvas() or make other
adjustments to accommodate the new window size.

The `event` parameter is optional. If added to the function declaration, it
can be used for debugging or other purposes.

## Examples

![windowResized example 1](assets/windowResized1.webp)

```lua
function setup()
  size(windowWidth, windowHeight)

  describe('A gray canvas with a white circle at its center. The canvas takes up the entire browser window. It changes size to match the browser window.')
end

function draw()
  background(200)

  -- Draw a circle at the center.
  circle(width / 2, height / 2, 50)
end

-- Resize the canvas when the
-- browser's size changes.
function windowResized()
  resizeCanvas(windowWidth, windowHeight)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
