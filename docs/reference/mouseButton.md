# mouseButton()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A String system variable that contains the value of the last mouse button
pressed.

The `mouseButton` variable is either `LEFT`, `RIGHT`, or `CENTER`,
depending on which button was pressed last.

Note: Different browsers may track `mouseButton` differently. See
<a href="https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/buttons/" target="_blank">MDN</a>
for more information.

## Examples

![mouseButton example 1](assets/mouseButton1.webp)

```lua
function setup()
  size(100, 100)

  describe(
    'A gray square with black text at its center. The text changes from 0 to either "left" or "right" when the user clicks a mouse button.'
  )
end

function draw()
  background(200)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the mouse button.
  text(mouseButton, 50, 50)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
