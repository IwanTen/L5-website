# millis()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the number of milliseconds since a sketch started running.

`millis()` keeps track of how long a sketch has been running in
milliseconds (thousandths of a second). This information is often
helpful for timing events and animations.

## Examples

![millis example 1](assets/millis1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get the number of milliseconds the sketch has run.
  local ms = millis()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(10)
  textFont('Courier New')

  -- Display how long it took setup() to be called.
  text(`Startup time: $round(ms, 2)end ms`, 5, 50, 90)

  describe(
    `The text 'Startup time: $round(ms, 2)end ms' written in black on a gray background.`
  )
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
