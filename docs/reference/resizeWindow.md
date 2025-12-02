# resizeWindow()
 
Resizes the canvas to a given width and height.

`resizeWindow()` immediately clears the canvas and calls redraw(). 

The two parameters, `width` and `height`, set the dimensions of the resized window. They are also the values of the width and height system variables. For example, calling `resizeWindow(300, 500)` resizes the window to 300×500 pixels, then sets `width` to 300 and `height` 500.

## Examples

![resizeWindow example 1](assets/resizeWindow1.webp)

```lua
function setup()
  windowTitle("resizeWindow example")
  text("Welcome",width/2,height/2)
  textAlign(CENTER)

  describe('A default sized gray canvas with text "Welcome" at its center. When clicked to resize the text changes to say "Resized".')
end

function mousePressed()
  resizeWindow(200,200)
end

-- Called when window resized
function windowResized()
  text("Resized",width/2,height/2)
end
```

## Syntax

```lua
resizeWindow(width, height)
```

## Parameters

| Parameter | |
| - | -- |
| width | Number: width of the canvas.  |
| height | Number: height of the canvas. |


## Related

* [size()](size.md)
* [windowResized()](windowResized.md)
