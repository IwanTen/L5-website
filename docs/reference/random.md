# random()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns a random number or a random element from an array.

`random()` follows uniform distribution, which means that all outcomes are
equally likely. When `random()` is used to generate numbers, all
numbers in the output range are equally likely to be returned. When
`random()` is used to select elements from an array, all elements are
equally likely to be chosen.

By default, `random()` produces different results each time a sketch runs.
The randomSeed() function can be used to
generate the same sequence of numbers or choices each time a sketch runs.

The version of `random()` with no parameters returns a random number from 0
up to but not including 1.

The version of `random()` with one parameter works one of two ways. If the
argument passed is a number, `random()` returns a random number from 0 up
to but not including the number. For example, calling `random(5)` returns
values between 0 and 5. If the argument passed is an array, `random()`
returns a random element from that array. For example, calling
`random(['🦁', '🐯', '🐻'])` returns either a lion, tiger, or bear emoji.

The version of `random()` with two parameters returns a random number from
a given range. The arguments passed set the range's lower and upper bounds.
For example, calling `random(-5, 10.2)` returns values from -5 up to but
not including 10.2.

## Examples

![random example 1](assets/random1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get random coordinates between 0 and 100.
  local x = random(0, 100)
  local y = random(0, 100)

  -- Draw a point.
  strokeWeight(5)
  point(x, y)

  describe('A black dot appears in a random position on a gray square.')
end
```

## Syntax

```lua
random([min], [max])
```

## Parameters

| Parameter | |
| - | -- |
| min | Number: lower bound (inclusive). |
| max | Number: upper bound (exclusive). |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
