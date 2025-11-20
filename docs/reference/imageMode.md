# imageMode()

Changes the location from which images are drawn when image() is called.

By default, the first two parameters of image() are the x- and y-coordinates of the image's upper-left corner. The next parameters are its width and height. This is the same as calling `imageMode(CORNER)`.

`imageMode(CORNERS)` also uses the first two parameters of image() as the x- and y-coordinates of the image's top-left corner. The third and fourth parameters are the coordinates of its bottom-right corner.

`imageMode(CENTER)` uses the first two parameters of image() as the x- and y-coordinates of the image's center. The next parameters are its width and height.

## Examples

![imageMode example 1](assets/imageMode1.webp)

```lua
local img
function setup()
  size(100, 100)
  windowTitle('imageMode example')
  img = loadImage('assets/flower.jpg')
  background(200)

  -- Use CORNER mode (default)
  imageMode(CORNER) -- already the default, so this could be skipped! 

  -- Display the image
  image(img, 10, 10, 50, 50)

  describe('A square image of a pink flower drawn at the top left of a gray square.')
end
```

![imageMode example 2](assets/imageMode2.webp)

```lua
function setup()
  size(100, 100)
  windowTitle('imageMode example')
  img = loadImage('assets/flower.jpg')
  background(200)

  -- Use CORNERS mode 
  imageMode(CORNERS) 

  -- Display the image
  image(img, 10, 10, 90, 40)

  describe('A square image of a pink flower drawn at the top left of a gray square.')
end
```

![imageMode example 3](assets/imageMode3.webp)

```lua
function setup()
  size(100, 100)
  windowTitle('imageMode example')
  img = loadImage('assets/flower.jpg')
  background(200)

  -- Use CENTER mode
  imageMode(CENTER) 

  -- Display the image
  image(img, 50, 50, 80, 80)

  describe('A square image of a pink flower drawn at the top left of a gray square.')
end
```

## Syntax

```lua
imageMode(mode)
```

## Parameters

| Parameter |                                                            |
| -         | --------------------------------------------------         |
| mode      | Constant: either CORNER (default), CORNERS, CENTER, RADIUS |


## Related

* [image()](image.md)
* [ellipseMode()](ellipseMode.md)
* [rectMode()](rectMode.md)
* [colorMode()](colorMode.md)
* [angleMode()](angleMode.md)
