# month()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the current month as a number from 1–12.

## Examples

![month example 1](assets/month1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get the current month.
  local m = month()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)
  textFont('Courier New')

  -- Display the month.
  text(`Current month: $mend`, 10, 50, 80)

  describe(`The text 'Current month: $mend' written in black on a gray background.`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
