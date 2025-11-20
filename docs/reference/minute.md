# minute()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the current minute as a number from 0–59.

## Examples

![minute example 1](assets/minute1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get the current minute.
  local m = minute()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)
  textFont('Courier New')

  -- Display the minute.
  text(`Current minute: $mend`, 10, 50, 80)

  describe(`The text 'Current minute: $mend' written in black on a gray background.`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
