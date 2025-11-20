# setup()
 
A function that's called once when the sketch begins running.

Declaring the function `setup()` sets a code block to run once
automatically when the sketch starts running. It's used to perform
setup tasks such as creating the canvas and initializing variables:

```lua
function setup() 
  -- Code to run once at the start of the sketch.
end
```

Code placed in `setup()` will run once before code placed in
draw() begins looping. 

Note: `setup()` doesn’t have to be declared, but it’s common practice to do so.

## Examples

![setup example 1](assets/setup1.webp)

```lua
function setup()
  size(100, 100)
  windowTitle('setup example')

  background(200)

  -- Draw the circle.
  circle(50, 50, 40)

  describe('A white circle on a gray background.')
end
```

## Related

* [draw()](draw.md)
* [noLoop()](noLoop.md)
* [mousePressed()](mousePressed.md)
* [keyPressed()](keyPressed.md)
