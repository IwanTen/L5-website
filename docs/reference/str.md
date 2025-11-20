# str()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `Boolean` or `Number` to `String`.

`str()` converts values to strings. See the
String reference page for guidance on using
template literals instead.

The parameter, `n`, is the value to convert. If `n` is a Boolean, as in
`str(false)` or `str(true)`, then the value will be returned as a string,
as in `'false'` or `'true'`. If `n` is a number, as in `str(123)`, then its
value will be returned as a string, as in `'123'`. If an array is passed,
as in `str([12.34, 56.78])`, then an array of strings will be returned.

## Examples

![str example 1](assets/str1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a Boolean variable.
  local original = false

  -- Convert the Boolean to a string.
  local converted = str(original)

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(16)

  -- Display the original and converted values.
  text(`$originalend : $convertedend`, 50, 50)

  describe('The text "false : false" written in black on a gray background.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
