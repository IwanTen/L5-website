# height
 
A `Number` variable that stores the height of the canvas in pixels.

`height`'s default value is 600. Calling size() or
resizeWindow() changes the value of `height`. 

## Examples

![height example 1](assets/height1.webp)

```lua
function setup()
  background(200)

  -- Display the canvas' height.
  text(height, 42, 54)

  describe('The number 100 written on a gray square.')
end
```

## Syntax

```lua
height
```

## Related

* [width()](width.md)
* [size()](size.md)
* [displayWidth](displayWidth.md)
* [displayHeight](displayHeight.md)
* [fullscreen()](fullscreen.md)
