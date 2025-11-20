# updatePixels()

Updates the canvas with the RGBA values in the
pixels array.

`updatePixels()` only needs to be called after changing values in the pixels array. Such changes can be made directly after calling loadPixels() or by calling set().

## Examples

![updatePixels example 1](assets/updatePixels1.webp)

```lua
local img
function setup()
  size(100, 100)
  windowTitle('updatePixels example')
  -- Load the image
  img = loadImage('assets/rockies.jpg')
  -- Display the image.
  image(img, 0, 0, 100, 100)

  -- Get the pixel density.
  local d = pixelDensity()

  -- Calculate the halfway index in the pixels array.
  local halfImage = 4 * (d * width) * (d * height / 2)

  -- Load the pixels array.
  loadPixels()

  -- Copy the top half of the canvas to the bottom.
  for i=0,halfImage do
    pixels[i + halfImage] = pixels[i]
  end

  -- Update the canvas.
  updatePixels()

  describe('Two identical images of mountain landscapes, one on top of the other.')
end
```

## Syntax

```lua
updatePixels()
```

## Related

* [loadPixels()](loadPixels.md)
* [pixels()](pixels.md)
* [set()](set.md)
* [get()](get.md)
* [blend()](blend.md)
* [copy()](copy.md)
