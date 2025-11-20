# resizeCanvas()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Resizes the canvas to a given width and height.

`resizeCanvas()` immediately clears the canvas and calls
redraw(). It's common to call `resizeCanvas()`
within the body of windowResized() like
so:

<pre><code class="language-js">function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}
`</pre>
The first two parameters, `width` and `height`, set the dimensions of the
canvas. They also the values of the width and
height system variables. For example, calling
`resizeCanvas(300, 500)` resizes the canvas to 300×500 pixels, then sets
width to 300 and
height 500.

The third parameter, `noRedraw`, is optional. If `true` is passed, as in
`resizeCanvas(300, 500, true)`, then the canvas will be canvas to 300×500
pixels but the redraw() function won't be called
immediately. By default, redraw() is called
immediately when `resizeCanvas()` finishes executing.

## Examples

![resizeCanvas example 1](assets/resizeCanvas1.webp)

```lua
-- Double-click to resize the canvas.

function setup()
  size(100, 100)

  describe(
    'A white circle drawn on a gray background. The canvas shrinks by half the first time the user double-clicks.'
  )
end

function draw()
  background(180)

  -- Draw a circle at the center of the canvas.
  circle(width / 2, height / 2, 20)
end

-- Resize the canvas when the user double-clicks.
function doubleClicked()
  resizeCanvas(50, 50)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
