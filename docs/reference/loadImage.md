# loadImage()

Loads an image from a specified file path. Possible image formats accepted are: `.jpg`, `.jpeg`, `.png`, `.bpm`, `.tga`, `.hdr`, `.pic`, `.exr`. **Unsupported filetypes include `.png` and `.gif`.**

Alternatively, `loadImage()` can also take a [FileData, ImageData, CompressedImageData or ByteData object](https://www.love2d.org/wiki/love.graphics.newImage) via underlying Love2d framework. 

## Examples

![loadImage example 1](assets/loadImage1.webp)

```lua
local img
function setup()
  size(100, 100)
  windowTitle('loadImage example')
  -- Load the image
  img = loadImage('assets/flower.jpg')
  -- Draw the image.
  image(img, 0, 0, width, height)

  describe('Image of a pink flower in bloom.')
end
```

## Syntax

```lua
loadImage(path)
```

## Parameters

| Parameter |                                                                         |
| -         | --------------------------------------------------                      |
| path      | String: path of the image to be loaded or alternate love2d data object |

## Related

* [image()](image.md)
* [imageMode()](imageMode.md)
