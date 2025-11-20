# max()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the largest value in a sequence of numbers.

The version of `max()` with one parameter interprets it as an array of
numbers and returns the largest number.

The version of `max()` with two or more parameters interprets them as
individual numbers and returns the largest number.

## Examples

![max example 1](assets/max1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Calculate the maximum of 10, 5, and 20.
  local m = max(10, 5, 20)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the max.
  text(m, 50, 50)

  describe('The number 20 written in the middle of a gray square.')
end
```

## Syntax

```lua
max(n0, n1)
```

## Parameters

| Parameter | |
| - | -- |
| n0 | Number: first number to compare. |
| n1 | Number: second number to compare. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
