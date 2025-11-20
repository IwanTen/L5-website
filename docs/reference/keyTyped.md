# keyTyped()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called once when keys with printable characters are pressed.

Declaring the function `keyTyped()` sets a code block to run once
automatically when the user presses any key with a printable character such
as `a` or 1. Modifier keys such as `SHIFT`, `CONTROL`, and the arrow keys
will be ignored:

<pre><code class="language-js">function keyTyped() {
  // Code to run.
}
`</pre>
The key and keyCode
variables will be updated with the most recently released value when
`keyTyped()` is called by p5.js:

<pre><code class="language-js">function keyTyped() {
  // Check for the "c" character using key.
  if (key === 'c') {
    // Code to run.
  }

  // Check for "c" using keyCode.
  if (keyCode === 67) {
    // Code to run.
  }
}
`</pre>
The parameter, `event`, is optional. `keyTyped()` is always passed a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/" target="_blank">KeyboardEvent</a>
object with properties that describe the key press event:

<pre><code class="language-js">function keyReleased(event) {
  // Code to run that uses the event.
  console.log(event);
}
`</pre>
Note: Use the keyPressed() function and
keyCode system variable to respond to modifier
keys such as `ALT`.

Browsers may have default behaviors attached to various key events. To
prevent any default behavior for this event, add `return false;` to the end
of the function.

## Examples

![keyTyped example 1](assets/keyTyped1.webp)

```lua
-- Click on the canvas to begin detecting key presses.
-- Note: Pressing special keys such as SPACE have no effect.

local value = 0

function setup()
  size(100, 100)

  describe(
    'A gray square with a white square at its center. The inner square changes color when the user presses a key.'
  )
end

function draw()
  background(200)

  -- Style the square.
  fill(value)

  -- Draw the square.
  square(25, 25, 50)
end

-- Toggle the square's color when the user types a printable key.
function keyTyped()
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
