# displayWidth
 
A `Number` variable that stores the width of the screen display.

`displayWidth` is useful for running full-screen programs. Its value depends on the current pixelDensity().

Note: The actual screen width can be computed as `displayWidth * pixelDensity()`.

## Examples

![displayWidth example 1](assets/displayWidth1.webp)

```lua
function setup()
  -- Set the canvas' width and height
  -- using the display's dimensions.
  size(displayWidth, displayHeight)

  background(200)

  describe('A gray canvas that is the same size as the display.')
end
```

## Related

* [displayHeight](displayHeight.md)
* [displayDensity()](displayDensity.md)
* [size()](size.md)
* [fullscreen()](fullscreen.md)
