# noWindow()

Removes the default canvas.

By default, a 800×600 pixels canvas is created without needing to call
createCanvas(). `noWindow()` removes the
default canvas for sketches that don't need it. No graphics can be drawn. 

**Important: No code in `draw` can continue to run without a window. To have code continue to execute, you must add a `update()` function and place your code there.**

*To stop a continuosly updating program from running you may have to figure out another way to quit your program. If launched from the terminal, you can use control-C to cancel/quit.*

## Examples

```lua
function setup() 
  noWindow()
end

function update()
  print("running headless")
end
```

## Related

* [fullscreen()](fullscreen.md)
* [size()](size.md)
