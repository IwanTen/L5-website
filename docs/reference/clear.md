# clear()

Clears the pixels on the canvas.

`clear()` makes every pixel 100% transparent. 

## Examples

![clear example 1](assets/clear1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  describe('A gray square. White circles are drawn as the user moves the mouse. The circles disappear when the user presses the mouse.')
end

function draw()
  circle(mouseX, mouseY, 20)
end

function mousePressed()
  clear()
  background(200)
end
```

## Syntax

```lua
clear()
```

## Related

* [background()](background.md)
