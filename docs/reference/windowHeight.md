# windowHeight()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` variable that stores the height of the browser's viewport.

The <a href="https://developer.mozilla.org/en-US/docs/Glossary/Layout_viewport/" target="_blank">layout viewport</a>
is the area within the browser that's available for drawing.

## Examples

![windowHeight example 1](assets/windowHeight1.webp)

```lua
function setup()
  -- Set the canvas' width and height
  -- using the browser's dimensions.
  size(windowWidth, windowHeight)

  background(200)

  describe('A gray canvas that takes up the entire browser window.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
