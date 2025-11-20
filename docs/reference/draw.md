# draw()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called repeatedly while the sketch runs.

Declaring the function `draw()` sets a code block to run repeatedly
once the sketch starts. It’s used to create animations and respond to
user inputs:

<pre><code class="language-js">function draw() {
  // Code to run repeatedly.
}
`</pre>
This is often called the "draw loop" because p5.js calls the code in
`draw()` in a loop behind the scenes. By default, `draw()` tries to run
60 times per second. The actual rate depends on many factors. The
drawing rate, called the "frame rate", can be controlled by calling
frameRate(). The number of times `draw()`
has run is stored in the system variable
frameCount().

Code placed within `draw()` begins looping after
setup() runs. `draw()` will run until the user
closes the sketch. `draw()` can be stopped by calling the
noLoop() function. `draw()` can be resumed by
calling the loop() function.

## Examples

![draw example 1](assets/draw1.webp)

```lua
function setup()
  size(100, 100)

  -- Paint the background once.
  background(200)

  describe(
    'A white circle on a gray background. The circle follows the mouse as the user moves, leaving a trail.'
  )
end

function draw()
  -- Draw circles repeatedly.
  circle(mouseX, mouseY, 40)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
