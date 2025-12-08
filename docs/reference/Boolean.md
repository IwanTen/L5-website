## Boolean

A value that's either `true` or `false`.

Boolean values help to make decisions in code. They appear any time a logical condition is checked. For example, the condition "Is a mouse button being pressed?" must be either true or false:

```lua
-- If the user presses the mouse, draw a circle at
-- the mouse's location.
if mouseIsPressed == true then
  circle(mouseX, mouseY, 20)
end
```

The `if` statement checks whether `mouseIsPressed` is `true` and draws a circle if it is. `Boolean` expressions such as `mouseIsPressed == true` evaluate to one of the two possible Boolean values: `true` or `false`.

The `==` operator (EQUAL) checks whether two values are equal. If they are, the expression evaluates to `true`. Otherwise, it evaluates to `false`.

The `mouseIsPressed` system variable is always `true` or `false`, so the code snippet above could also be written as follows:

```lua
if mouseIsPressed then
  circle(mouseX, mouseY, 20)
end
```

The `~=` operator (NOT EQUAL) checks whether two values are not equal, as in the following example:

```lua
if 2 + 2 ~= 4 then
  text('War is peace.', 50, 50)
end
```

Starting from the left, the arithmetic expression `2 + 2` produces the value `4`. The Boolean expression `4 ~= 4` evaluates to `false` because `4` is equal to itself. As a result, the `if` statement's body is skipped.

The `Boolean` operator `and` checks whether two expressions are both `true`:

```lua
if keyIsPressed == true and key == 'p' then
  text('You pressed the "p" key!', 50, 50)
end
```

If the user is pressing a key AND that key is `'p'`, then a message will display.

The `Boolean` operator `or` checks whether at least one of two expressions is true:

```lua
if keyIsPressed == true or mouseIsPressed == true then
  text('You did something!', 50, 50)
end
```

If the user presses a key, or presses a mouse button, or both, then a message will display.

The following truth table summarizes a few common scenarios with `and` and `or`:

```lua
true and true  -- true
true and false -- false
false and false -- false
true or true  -- true
true or false -- true
false or false -- false
```

The relational operators `>`, `<`, `>=`, and `<=` also produce Boolean values:

```lua
2 > 1 -- true
2 < 1 -- false
2 >= 2 -- true
2 <= 2 -- true
```

See [if](if.md) for more information about `if` statements and [number](Number.md) for more information about numbers.


---

*This reference page contains content adapted from [p5.js](https://p5js.org/) and [Processing](https://processing.org) by [p5.js Contributors](https://github.com/processing/p5.js?tab=readme-ov-file#contributors) and [Processing Foundation](https://processingfoundation.org/people), licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).*
