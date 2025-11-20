# resetMatrix()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Clears all transformations applied to the coordinate system.

## Examples

![resetMatrix example 1](assets/resetMatrix1.webp)

```lua
function setup()
  size(100, 100)

  describe(
    'Two circles drawn on a gray background. A blue circle is at the top-left and a red circle is at the bottom-right.'
  )
end

function draw()
  background(200)

  -- Translate the origin to the center.
  translate(50, 50)

  -- Draw a blue circle at the coordinates (25, 25).
  fill('blue')
  circle(25, 25, 20)

  -- Clear all transformations.
  -- The origin is now at the top-left corner.
  resetMatrix()

  -- Draw a red circle at the coordinates (25, 25).
  fill('red')
  circle(25, 25, 20)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
