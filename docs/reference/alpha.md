# alpha()

Gets the alpha (transparency) value of a color.

alpha() extracts the alpha value from a color object, an array of color components, or a CSS color string.

## Examples

![alpha example 1](assets/alpha1.webp)

```lua
function setup() 
  size(100, 100)

  background(200)

  -- Create a color object.
  c = color(0, 126, 255, 102)

  -- Draw the left rectangle.
  noStroke()
  fill(c)
  rect(15, 15, 35, 70)

  -- Set 'alphaValue' to 102.
  alphaValue = alpha(c)

  -- Draw the right rectangle.
  fill(alphaValue)
  rect(50, 15, 35, 70)

  describe('Two rectangles. The left one is light blue and the right one is charcoal gray.')
end
```

![alpha example 2](assets/alpha2.webp)

```lua
function setup() 
  size(100, 100)

  background(200)

  -- Create a color array.
  local c = {0, 126, 255, 102}

  -- Draw the left rectangle.
  noStroke()
  fill(c)
  rect(15, 15, 35, 70)

  -- Set 'alphaValue' to 102.
  local alphaValue = alpha(c)

  -- Draw the left rectangle.
  fill(alphaValue)
  rect(50, 15, 35, 70)

  describe('Two rectangles. The left one is light blue and the right one is charcoal gray.')
end
```

## Syntax

```lua
alpha(color)
```

## Parameters

| Parameter |                                                                 |
| -         | --------------------------------------------------              |
| color     | Color/Number/String. |

## Related

* [colorMode()](colorMode.md)
* [color()](color-object.md)
* [red()](red.md)
* [green()](green.md)
* [blue()](blue.md)
