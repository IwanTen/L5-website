# function()
    
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A named group of statements.

[Functions](http://lua-users.org/wiki/FunctionsTutorial) help with organizing and reusing code. For example, functions make it easy to express the idea "Draw an @ symbol.":

```lua
function drawChar()
  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(20)

  -- Draw a flower emoji.
  text('@', 50, 50)
end
```

The function header begins with the keyword `function`. The function's name, `drawLetter`, is followed by parentheses `()`. The code after the function's name and parenthesis, before the closing end, is called the function's body. The function's body runs when the function is called like so:

```lua
drawLetter()
```

Functions can accept inputs by adding parameters to their headers. Parameters are placeholders for values that will be provided when the function is called. For example, the `drawLetter()` function could include
a parameter for the flower's size:

```lua
function drawLetter(size) 
  -- Style the text.
  textAlign(CENTER, CENTER)

  -- Use the size parameter.
  textSize(size)

  -- Draw a @ char .
  text('@', 50, 50)
end
```

Parameters are part of the function's declaration. Arguments are provided by the code that calls a function. When a function is called, arguments are assigned to parameters:

```lua
--The argument 20 is assigned to the parameter size.
drawLetter(20)
```

Functions can have multiple parameters separated by commas. Parameters can have any type. For example, the `drawLetter()` function could accept `Number` parameters for the flower's x- and y-coordinates along with its size:

```lua
function drawLetter(x, y, size) 
  -- Style the text.
  textAlign(CENTER, CENTER)

  -- Use the size parameter.
  textSize(size)

  -- Draw a flower emoji.
  -- Use the x and y parameters.
  text('@', x, y)
end
```

Functions can also produce outputs by adding a `return` statement:

```lua
function double(x) 
  local answer = 2 * x
  return answer
end
```

The expression following `return` can produce an output that's used elsewhere. For example, the output of the `double()` function can be assigned to a variable:

```lua
local six = double(3)
text("3 x 2 = "..six, 50, 50)
```

## Examples

![function example 1](assets/function1.webp)

```lua
function setup()
  size(100, 100)

  describe('A black @ on a gray background.')
end

function draw()
  background(200)

  -- Call the drawLetter() function.
  drawChar()
end

-- Declare a function that draws the '@' char at the
-- center of the canvas.
function drawChar()
  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(20)

  -- Draw an @ symbol.
  fill("black")
  text('@', 50, 50)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
