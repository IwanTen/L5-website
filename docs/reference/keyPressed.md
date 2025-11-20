# keyPressed()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A function that's called once when any key is pressed.

Declaring the function `keyPressed()` sets a code block to run once
automatically when the user presses any key:

<pre><code class="language-js">function keyPressed() {
  // Code to run.
}
`</pre>
The key and keyCode
variables will be updated with the most recently typed value when
`keyPressed()` is called by p5.js:

<pre><code class="language-js">function keyPressed() {
  if (key === 'c') {
    // Code to run.
  }

  if (keyCode === ENTER) {
    // Code to run.
  }
}
`</pre>
The parameter, `event`, is optional. `keyPressed()` is always passed a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent/" target="_blank">KeyboardEvent</a>
object with properties that describe the key press event:

<pre><code class="language-js">function keyPressed(event) {
  // Code to run that uses the event.
  console.log(event);
}
`</pre>
Browsers may have default behaviors attached to various key events. For
example, some browsers may jump to the bottom of a web page when the
`SPACE` key is pressed. To prevent any default behavior for this event, add
`return false;` to the end of the function.

## Examples

![keyPressed example 1](assets/keyPressed1.webp)

```lua
-- Click on the canvas to begin detecting key presses.

local value = 0

function setup()
  size(100, 100)

  describe(
    'A gray square with a black square at its center. The inner square changes color when the user presses a key.'
  )
end

function draw()
  background(200)

  -- Style the square.
  fill(value)

  -- Draw the square.
  square(25, 25, 50)
end

-- Toggle the background color when the user presses a key.
function keyPressed()
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
