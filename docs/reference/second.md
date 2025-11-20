# second()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the current second as a number from 0–59.

## Examples

![second example 1](assets/second1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get the current second.
  local s = second()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)
  textFont('Courier New')

  -- Display the second.
  text(`Current second: $send`, 10, 50, 80)

  describe(`The text 'Current second: $send' written in black on a gray background.`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
