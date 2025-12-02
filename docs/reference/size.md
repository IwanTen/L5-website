# size()
 
Creates a window at a specified size. Without size() function the default created window is created, generally at 800x600 pixels.

`size()` creates the main drawing window for a sketch. It should only be called once at the beginning of setup(). 

The first two parameters, `width` and `height` set the dimensions of the canvas and the values of the width and height system variables. For example, calling `size(900, 500)` creates a window that's 900×500 pixels. 

## Examples

![size example 1](assets/size1.webp)

```lua
function setup()
  size(100, 100)

  background(180)

  -- Draw a diagonal line.
  line(0, 0, width, height)

  describe('A diagonal line drawn from top-left to bottom-right on a gray background.')
end
```

![size example 2](assets/size2.webp)

```lua
function setup() 
  size(100, 50)
  windowTitle("size example")

  background(180)

  -- Draw a diagonal line.
  line(0, 0, width, height)

  describe('A diagonal line drawn from top-left to bottom-right on a gray background.')
end
```

## Syntax

```lua
size(width, height)
```

## Parameters

| Parameter | |
| - | -- |
| width | Number: width of the canvas. |
| height | Number: height of the canvas. |

## Related

* [fullscreen()](fullscreen.md)
* [width](width.md)
* [height](height.md)
* [resizeWindow()](resizeWindow.md)
* [windowResized()](windowResized.md)
