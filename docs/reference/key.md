# key()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `String` system variable that contains the value of the last key typed.

The key variable is helpful for checking whether an
<a href="https://en.wikipedia.org/wiki/ASCII#Printable_characters" target="_blank">ASCII</a>
key has been typed. For example, the expression `key === "a"` evaluates to
`true` if the `a` key was typed and `false` if not. `key` doesn’t update
for special keys such as `LEFT_ARROW` and `ENTER`. Use keyCode instead for
special keys. The keyIsDown() function should
be used to check for multiple different key presses at the same time.

## Examples

![key example 1](assets/key1.webp)

```lua
-- Click on the canvas to begin detecting key presses.

function setup()
  size(100, 100)

  describe(
    'A gray square. The last key pressed is displayed at the center.'
  )
end

function draw()
  background(200)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the last key pressed.
  text(key, 50, 50)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
