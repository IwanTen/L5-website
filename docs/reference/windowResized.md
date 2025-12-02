# windowResized()
 
A function that's called when the window is resized.

Code placed in the body of `windowResized()` will run when the window's size changes. 

## Examples

![windowResized example 1](assets/windowResized1.webp)

```lua

function setup()
  windowTitle("windowResized example")
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
windowResized()
```

## Related

* [resizeWindow()](resizeWindow.md)
* [size()](size.md)
* [fullscreen()](fullscreen.md)
