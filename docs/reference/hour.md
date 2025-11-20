# hour()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the current hour as a number from 0–23.

## Examples

![hour example 1](assets/hour1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get the current hour.
  local h = hour()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)
  textFont('Courier New')

  -- Display the hour.
  text(`Current hour: $hend`, 20, 50, 60)

  describe(`The text 'Current hour: $hend' written in black on a gray background.`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
