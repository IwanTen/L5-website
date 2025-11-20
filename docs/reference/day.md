# day()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the current day as a number from 1–31.

## Examples

![day example 1](assets/day1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get the current day.
  local d = day()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)
  textFont('Courier New')

  -- Display the day.
  text(`Current day: $dend`, 20, 50, 60)

  describe(`The text 'Current day: $dend' written in black on a gray background.`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
