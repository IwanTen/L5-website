# unhex()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `String` with a hexadecimal value to a  `Number`.

`unhex()` converts a string with its hexadecimal number value to a number.
Hexadecimal (hex) numbers are base-16, which means there are 16 unique
digits. Hex extends the numbers 0–9 with the letters A–F. For example, the
number `11` (eleven) in base-10 is written as the letter `B` in hex.

The first parameter, `n`, is the hex string to convert. For example,
`unhex('FF')`, returns the number 255. If an array is passed, as in
`unhex(['00', '80', 'FF'])`, an array of numbers is returned.

## Examples

![unhex example 1](assets/unhex1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a a hex string variable
  local original = 'FF'

  -- Convert the hex string to a number.
  local converted = unhex(original)

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(16)

  -- Display the original and converted values.
  text(`$originalend = $convertedend`, 50, 50)

  describe('The text "FF = 255" written in black on a gray background.')
end
```

## Syntax

```lua
unhex(n)
```

## Parameters

| Parameter | |
| - | -- |
| n | String: value to convert. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
