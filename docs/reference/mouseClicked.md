# mouseClicked()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called once after a mouse button is pressed and released.

Declaring the function `mouseClicked()` sets a code block to run
automatically when the user releases a mouse button after having pressed
it:

<pre><code class="language-js">function mouseClicked() {
  // Code to run.
}
`</pre>
The mouse system variables, such as mouseX and
mouseY, will be updated with their most recent
value when `mouseClicked()` is called by p5.js:

<pre><code class="language-js">function mouseClicked() {
  if (mouseX < 50) {
    // Code to run if the mouse is on the left.
  }

  if (mouseY > 50) {
    // Code to run if the mouse is near the bottom.
  }
}
`</pre>
The parameter, `event`, is optional. `mouseClicked()` is always passed a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/" target="_blank">MouseEvent</a>
object with properties that describe the mouse click event:

<pre><code class="language-js">function mouseClicked(event) {
  // Code to run that uses the event.
  console.log(event);
}
`</pre>
On touchscreen devices, `mouseClicked()` will run when a user’s touch
ends if touchEnded() isn’t declared. If
touchEnded() is declared, then
touchEnded() will run when a user’s touch
ends and `mouseClicked()` won’t.

Browsers may have default behaviors attached to various mouse events. For
example, some browsers highlight text when the user moves the mouse while
pressing a mouse button. To prevent any default behavior for this event,
add `return false;` to the end of the function.

Note: mousePressed(),
mouseReleased(),
and `mouseClicked()` are all related.
mousePressed() runs as soon as the user
clicks the mouse. mouseReleased() runs as
soon as the user releases the mouse click. `mouseClicked()` runs
immediately after mouseReleased().

## Examples

![mouseClicked example 1](assets/mouseClicked1.webp)

```lua
local value = 0

function setup()
  size(100, 100)

  describe(
    'A gray square with a black square at its center. The inner square changes color when the user presses and releases a mouse button.'
  )
end

function draw()
  background(200)

  -- Style the square.
  fill(value)

  -- Draw the square.
  square(25, 25, 50)
end

-- Toggle the square's color when the user clicks.
function mouseClicked()
  if (value == 0) 
    value = 255
  end else 
    value = 0
  end
  -- Uncomment to prevent any default behavior.
  -- return false
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
