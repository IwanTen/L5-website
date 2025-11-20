# mouseIsPressed()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Boolean` system variable that's `true` if the mouse is pressed and
`false` if not.

## Examples

![mouseIsPressed example 1](assets/mouseIsPressed1.webp)

```lua
function setup()
  size(100, 100)

  describe(
    'A gray square with the word "false" at its center. The word changes to "true" when the user presses a mouse button.'
  )
end

function draw()
  background(200)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the mouseIsPressed variable.
  text(mouseIsPressed, 25, 50)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
