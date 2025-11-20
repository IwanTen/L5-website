# width()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` variable that stores the width of the canvas in pixels.

`width`'s default value is 100. Calling
createCanvas() or
resizeCanvas() changes the value of
`width`. Calling noCanvas() sets its value to
0.

## Examples

![width example 1](assets/width1.webp)

```lua
function setup()
  background(200)

  -- Display the canvas' width.
  text(width, 42, 54)

  describe('The number 100 written in black on a gray square.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
