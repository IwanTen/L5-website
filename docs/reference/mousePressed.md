# mousePressed()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called once when a mouse button is pressed.

Declaring the function `mousePressed()` sets a code block to run
automatically when the user presses a mouse button:

<pre><code class="language-js">function mousePressed() {
  // Code to run.
}
`</pre>
The mouse system variables, such as mouseX and
mouseY, will be updated with their most recent
value when `mousePressed()` is called by p5.js:

<pre><code class="language-js">function mousePressed() {
  if (mouseX < 50) {
    // Code to run if the mouse is on the left.
  }

  if (mouseY > 50) {
    // Code to run if the mouse is near the bottom.
  }
}
`</pre>
The parameter, `event`, is optional. `mousePressed()` is always passed a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/" target="_blank">MouseEvent</a>
object with properties that describe the mouse press event:

<pre><code class="language-js">function mousePressed(event) {
  // Code to run that uses the event.
  console.log(event);
}
`</pre>
On touchscreen devices, `mousePressed()` will run when a user’s touch
begins if touchStarted() isn’t declared. If
touchStarted() is declared, then
touchStarted() will run when a user’s touch
begins and `mousePressed()` won’t.

Browsers may have default behaviors attached to various mouse events. For
example, some browsers highlight text when the user moves the mouse while
pressing a mouse button. To prevent any default behavior for this event,
add `return false;` to the end of the function.

Note: `mousePressed()`, mouseReleased(),
and mouseClicked() are all related.
`mousePressed()` runs as soon as the user clicks the mouse.
mouseReleased() runs as soon as the user
releases the mouse click. mouseClicked()
runs immediately after mouseReleased().

## Examples

![mousePressed example 1](assets/mousePressed1.webp)

```lua
local value = 0

function setup()
  size(100, 100)

  describe(
    'A gray square with a black square at its center. The inner square becomes lighter when the user presses a mouse button.'
  )
end

function draw()
  background(200)

  -- Style the square.
  fill(value)

  -- Draw the square.
  square(25, 25, 50)
end

function mousePressed()
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
