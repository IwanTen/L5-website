# fullscreen()
 
Toggles full-screen mode. Calling `fullscreen()` makes the sketch full-screen or if already set fullscreen it returns to its original size.

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
  fullscreen()
end
```

## Syntax

```lua
fullscreen()
```

## Related

* [size()](size.md)
* [mousePressed()](mousePressed.md)
* [displayWidth](displayWidth.md)
* [displayHeight](displayHeight.md)
