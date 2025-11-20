# if()

A way to choose whether to run a block of code.

`if` statements are helpful for running a block of code based on a
condition. For example, an `if` statement makes it easy to express the
idea "Draw a circle if the mouse is pressed.":

<pre><code class="language-js">if (mouseIsPressed === true) {
  circle(mouseX, mouseY, 20);
}
`</pre>
The statement header begins with the keyword `if`. The expression in
parentheses `mouseIsPressed === true` is a `Boolean` expression that's
either `true` or `false`. The code between the curly braces `{}` is the if
statement's body. The body only runs if the `Boolean` expression is `true`.

The mouseIsPressed system variable is
always `true` or `false`, so the code snippet above could also be written
as follows:

<pre><code class="language-js">if (mouseIsPressed) {
  circle(mouseX, mouseY, 20);
}
`</pre>
An `if`-`else` statement adds a block of code that runs if the `Boolean`
expression is `false`. For example, here's an `if`-`else` statement that
expresses the idea "Draw a circle if the mouse is pressed. Otherwise,
display a message.":

<pre><code class="language-js">if (mouseIsPressed === true) {
  // When true.
  circle(mouseX, mouseY, 20);
} else {
  // When false.
  text('Click me!', 50, 50);
}
`</pre>
There are two possible paths, or branches, in this code snippet. The
program must follow one branch or the other.

An `else`-`if` statement makes it possible to add more branches.
`else`-`if` statements run different blocks of code under different
conditions. For example, an `else`-`if` statement makes it easy to express
the idea "If the mouse is on the left, paint the canvas white. If the mouse
is in the middle, paint the canvas gray. Otherwise, paint the canvas
black.":

<pre><code class="language-js">if (mouseX < 33) {
  background(255);
} else if (mouseX < 67) {
  background(200);
} else {
  background(0);
}
`</pre>
`if` statements can add as many `else`-`if` statements as needed. However,
there can only be one `else` statement and it must be last.

`if` statements can also check for multiple conditions at once. For
example, the `Boolean` operator `&&` (AND) checks whether two expressions
are both `true`:

<pre><code class="language-js">if (keyIsPressed === true && key === 'p') {
  text('You pressed the "p" key!', 50, 50);
}
`</pre>
If the user is pressing a key AND that key is `'p'`, then a message will
display.

The `Boolean` operator `||` (OR) checks whether at least one of two
expressions is `true`:

<pre><code class="language-js">if (keyIsPressed === true || mouseIsPressed === true) {
  text('You did something!', 50, 50);
}
`</pre>
If the user presses a key, or presses a mouse button, or both, then a
message will display.

The body of an `if` statement can contain another `if` statement. This is
called a "nested `if` statement." For example, nested `if` statements make
it easy to express the idea "If a key is pressed, then check if the key is
`'r'`. If it is, then set the fill to red.":

<pre><code class="language-js">if (keyIsPressed === true) {
  if (key === 'r') {
    fill('red');
  }
}
`</pre>
See Boolean and Number
to learn more about these data types and the operations they support.

## Examples

![if example 1](assets/if1.webp)

```lua
-- Click the mouse to show the circle.

function setup()
  size(100, 100)

  describe(
    'A white circle on a gray background. The circle follows the mouse user clicks on the canvas.'
  )
end

function draw()
  background(200)

  if (mouseIsPressed == true) 
    circle(mouseX, mouseY, 20)
  end
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
