# height()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` variable that stores the height of the canvas in pixels.

`height`'s default value is 100. Calling
createCanvas() or
resizeCanvas() changes the value of
`height`. Calling noCanvas() sets its value to
0.

## Examples

![height example 1](assets/height1.webp)

```lua
function setup()
  background(200)

  -- Display the canvas' height.
  text(height, 42, 54)

  describe('The number 100 written in black on a gray square.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
