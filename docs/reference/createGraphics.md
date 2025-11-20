# createGraphics()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Creates an offscreen canvas that can be rendered to the window later.

`createGraphics()` creates an offscreen drawing canvas (graphics buffer) and returns it as a graphics object. Drawing to a separate graphics buffer can be helpful for performance and for organizing code.

The first two parameters, `width` and `height`, are optional. They set the dimensions of the offscreen canvas object. For example, calling `createGraphics(900, 500)` creates an offscreen canvas that's 900×500 pixels. By default the offscreen canvas is the same size as the window.

Note that L5's createGraphics() implementation is similar to Processing rather than p5.js. All drawing to the offscreen buffer should happen between the `:beginDraw()` and `:endDraw()` methods and can be display in the window with `:getCanvas()`.

## Examples

![createGraphics example 1](assets/createGraphics1.webp)

```lua
function setup()
  size(400,400)

  -- Create offscreen buffer same size as window
  offscreenCanvas = createGraphics()
end

function draw()
  -- start drawing offscreen
  -- nothing is displayed until clicking
  offscreenCanvas:beginDraw() 
  -- drawn to offScreenCanvas
  line(pmouseX,pmouseY,mouseX,mouseY)
  offscreenCanvas:endDraw()
end

function mousePressed()
  -- display offscreenCanvas on screen
  image(offscreenCanvas:getCanvas(), 0,0,width,height)
end
```

## Syntax

```lua
createGraphics([width], [height])
```

## Parameters

| Parameter |                                                 |
| -         | --                                              |
| width     | Number: optional width of the graphics buffer.  |
| height    | Number: optional height of the graphics buffer. |

## Related

* [image()](image.md)
