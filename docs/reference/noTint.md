# noTint()

Removes the current tint set by tint().

`noTint()` restores images to their original colors.

## Examples

![noTint example 1](assets/noTint1.webp)

```lua
local img
-- Load the image.
function setup()
  size(100, 100)
  img = loadImage("assets/flower.jpg")
  windowTitle("noTint example")

  -- Left.
  -- Tint with a CSS color string.
  tint('red')
  image(img, 0, 0, 50, 100)

  -- Right.
  -- Remove the tint.
  noTint()
  image(img, 50, 0, 50, 100)

  describe('Two images of a flower side-by-side. The image on the left has a red tint.')
end
```

## Related

* [tint()](tint.md)
* [filter()](filter.md)
* [color()](color-object.md)
