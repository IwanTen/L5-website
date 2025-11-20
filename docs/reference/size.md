# createCanvas()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Creates a canvas element on the web page.

`createCanvas()` creates the main drawing canvas for a sketch. It should
only be called once at the beginning of setup().
Calling `createCanvas()` more than once causes unpredictable behavior.

The first two parameters, `width` and `height`, are optional. They set the
dimensions of the canvas and the values of the
width and height system
variables. For example, calling `createCanvas(900, 500)` creates a canvas
that's 900×500 pixels. By default, `width` and `height` are both 100.

The third parameter is also optional. If either of the constants `P2D` or
`WEBGL` is passed, as in `createCanvas(900, 500, WEBGL)`, then it will set
the sketch's rendering mode. If an existing
<a href="https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/" target="_blank">HTMLCanvasElement</a>
is passed, as in `createCanvas(900, 500, myCanvas)`, then it will be used
by the sketch.

The fourth parameter is also optional. If an existing
<a href="https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/" target="_blank">HTMLCanvasElement</a>
is passed, as in `createCanvas(900, 500, WEBGL, myCanvas)`, then it will be
used by the sketch.

Note: In WebGL mode, the canvas will use a WebGL2 context if it's supported
by the browser. Check the webglVersion
system variable to check what version is being used, or call
`setAttributes({ version: 1 })` to create a WebGL1 context.

## Examples

![createCanvas example 1](assets/createCanvas1.webp)

```lua
function setup()
  size(100, 100)

  background(180)

  -- Draw a diagonal line.
  line(0, 0, width, height)

  describe('A diagonal line drawn from top-left to bottom-right on a gray background.')
end
```

## Syntax

```lua
createCanvas([width], [height], [renderer], [canvas])
```

## Parameters

| Parameter | |
| - | -- |
| width | Number: width of the canvas. Defaults to 100. |
| height | Number: height of the canvas. Defaults to 100. |
| renderer | Constant: either P2D or WEBGL. Defaults to `P2D`. |
| canvas | HTMLCanvasElement: existing canvas element that should be used for the sketch. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
