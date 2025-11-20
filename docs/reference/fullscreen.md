# fullscreen()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Toggles full-screen mode or returns the current mode.

Calling `fullscreen()` makes the sketch full-screen. Calling
`fullscreen()` makes the sketch its original size.

Calling `fullscreen()` without an argument returns `true` if the sketch
is in full-screen mode and `false` if not.

Note: Due to browser restrictions, `fullscreen()` can only be called with
user input such as a mouse press.

## Examples

![fullscreen example 1](assets/fullscreen1.webp)

```lua
function setup()
  background(200)

  describe('A gray canvas that switches between default and full-screen display when clicked.')
end

-- If the mouse is pressed,
-- toggle full-screen mode.
function mousePressed()
  if (mouseX > 0  and  mouseX < width  and  mouseY > 0  and  mouseY < height) 
    local fs = fullscreen()
    fullscreen(!fs)
  end
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
