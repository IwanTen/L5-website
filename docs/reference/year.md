# year()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the current year as a number such as 1999.

## Examples

![year example 1](assets/year1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get the current year.
  local y = year()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)
  textFont('Courier New')

  -- Display the year.
  text(`Current year: $yend`, 10, 50, 80)

  describe(`The text 'Current year: $yend' written in black on a gray background.`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
