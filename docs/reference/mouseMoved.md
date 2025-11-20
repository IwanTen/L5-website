# mouseMoved()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called when the mouse moves.

Declaring the function `mouseMoved()` sets a code block to run
automatically when the user moves the mouse without clicking any mouse
buttons:

<pre><code class="language-js">function mouseMoved() {
  // Code to run.
}
`</pre>
The mouse system variables, such as mouseX and
mouseY, will be updated with their most recent
value when `mouseMoved()` is called by p5.js:

<pre><code class="language-js">function mouseMoved() {
  if (mouseX < 50) {
    // Code to run if the mouse is on the left.
  }

  if (mouseY > 50) {
    // Code to run if the mouse is near the bottom.
  }
}
`</pre>
The parameter, `event`, is optional. `mouseMoved()` is always passed a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/" target="_blank">MouseEvent</a>
object with properties that describe the mouse move event:

<pre><code class="language-js">function mouseMoved(event) {
  // Code to run that uses the event.
  console.log(event);
}
`</pre>
Browsers may have default behaviors attached to various mouse events. For
example, some browsers highlight text when the user moves the mouse while
pressing a mouse button. To prevent any default behavior for this event,
add `return false;` to the end of the function.

## Examples

![mouseMoved example 1](assets/mouseMoved1.webp)

```lua
local value = 0

function setup()
  size(100, 100)

  describe(
    'A gray square with a black square at its center. The inner square becomes lighter as the mouse moves.'
  )
end

function draw()
  background(200)

  -- Style the square.
  fill(value)

  -- Draw the square.
  square(25, 25, 50)
end

function mouseMoved()
  -- Update the grayscale value.
  value += 5

  -- Reset the grayscale value.
  if (value > 255) 
    value = 0
  end
  -- Uncomment to prevent any default behavior.
  -- return false
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
