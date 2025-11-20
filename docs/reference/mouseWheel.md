# mouseWheel()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called once when the mouse wheel moves.

Declaring the function `mouseWheel()` sets a code block to run
automatically when the user scrolls with the mouse wheel:

<pre><code class="language-js">function mouseWheel() {
  // Code to run.
}
`</pre>
The mouse system variables, such as mouseX and
mouseY, will be updated with their most recent
value when `mouseWheel()` is called by p5.js:

<pre><code class="language-js">function mouseWheel() {
  if (mouseX < 50) {
    // Code to run if the mouse is on the left.
  }

  if (mouseY > 50) {
    // Code to run if the mouse is near the bottom.
  }
}
`</pre>
The parameter, `event`, is optional. `mouseWheel()` is always passed a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/" target="_blank">MouseEvent</a>
object with properties that describe the mouse scroll event:

<pre><code class="language-js">function mouseWheel(event) {
  // Code to run that uses the event.
  console.log(event);
}
`</pre>
The `event` object has many properties including `delta`, a `Number`
containing the distance that the user scrolled. For example, `event.delta`
might have the value 5 when the user scrolls up. `event.delta` is positive
if the user scrolls up and negative if they scroll down. The signs are
opposite on macOS with "natural" scrolling enabled.

Browsers may have default behaviors attached to various mouse events. For
example, some browsers highlight text when the user moves the mouse while
pressing a mouse button. To prevent any default behavior for this event,
add `return false;` to the end of the function.

Note: On Safari, `mouseWheel()` may only work as expected if
`return false;` is added at the end of the function.

## Examples

![mouseWheel example 1](assets/mouseWheel1.webp)

```lua
local circleSize = 0

function setup()
  size(100, 100)

  describe(
    'A gray square. A white circle at its center grows up when the user scrolls the mouse wheel.'
  )
end

function draw()
  background(200)

  -- Draw the circle
  circle(50, 50, circleSize)
end

-- Increment circleSize when the user scrolls the mouse wheel.
function mouseWheel()
  circleSize += 1
  -- Uncomment to prevent any default behavior.
  -- return false
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
