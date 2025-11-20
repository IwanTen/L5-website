# mouseDragged()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called when the mouse moves while a button is pressed.

Declaring the function `mouseDragged()` sets a code block to run
automatically when the user clicks and drags the mouse:

<pre><code class="language-js">function mouseDragged() {
  // Code to run.
}
`</pre>
The mouse system variables, such as mouseX and
mouseY, will be updated with their most recent
value when `mouseDragged()` is called by p5.js:

<pre><code class="language-js">function mouseDragged() {
  if (mouseX < 50) {
    // Code to run if the mouse is on the left.
  }

  if (mouseY > 50) {
    // Code to run if the mouse is near the bottom.
  }
}
`</pre>
The parameter, `event`, is optional. `mouseDragged()` is always passed a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent/" target="_blank">MouseEvent</a>
object with properties that describe the mouse drag event:

<pre><code class="language-js">function mouseDragged(event) {
  // Code to run that uses the event.
  console.log(event);
}
`</pre>
On touchscreen devices, `mouseDragged()` will run when a user moves a touch
point if touchMoved() isn’t declared. If
touchMoved() is declared, then
touchMoved() will run when a user moves a
touch point and `mouseDragged()` won’t.

Browsers may have default behaviors attached to various mouse events. For
example, some browsers highlight text when the user moves the mouse while
pressing a mouse button. To prevent any default behavior for this event,
add `return false;` to the end of the function.

## Examples

![mouseDragged example 1](assets/mouseDragged1.webp)

```lua
local value = 0

function setup()
  size(100, 100)

  describe(
    'A gray square with a black square at its center. The inner square becomes lighter as the user drags the mouse.'
  )
end

function draw()
  background(200)

  -- Style the square.
  fill(value)

  -- Draw the square.
  square(25, 25, 50)
end

function mouseDragged()
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
