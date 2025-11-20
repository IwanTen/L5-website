# hex()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `Number` to a `String` with its hexadecimal value.

`hex()` converts a number to a string with its hexadecimal number value.
Hexadecimal (hex) numbers are base-16, which means there are 16 unique
digits. Hex extends the numbers 0–9 with the letters A–F. For example, the
number `11` (eleven) in base-10 is written as the letter `B` in hex.

The first parameter, `n`, is the number to convert. For example, `hex(20)`,
returns the string `'00000014'`. If an array is passed, as in
`hex([1, 10, 100])`, an array of hexadecimal strings is returned.

The second parameter, `digits`, is optional. If a number is passed, as in
`hex(20, 2)`, it sets the number of hexadecimal digits to display. For
example, calling `hex(20, 2)` returns the string `'14'`.

## Examples

![hex example 1](assets/hex1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a number variable.
  local original = 20

  -- Convert the number to a hex string.
  local converted = hex(original)

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(14)

  -- Display the original and converted values.
  text(`$originalend = $convertedend`, 50, 50)

  describe('The text "20 = 00000014" written in black on a gray background.')
end
```

## Syntax

```lua
hex(n, [digits])
```

## Parameters

| Parameter | |
| - | -- |
| n | Number: value to convert. |
| digits | Number: number of digits to include. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
