# push()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Begins a drawing group that contains its own styles and transformations.

By default, styles such as fill() and
transformations such as rotate() are applied to
all drawing that follows. The `push()` and pop()
functions can limit the effect of styles and transformations to a specific
group of shapes, images, and text. For example, a group of shapes could be
translated to follow the mouse without affecting the rest of the sketch:

<pre><code class="language-js">// Begin the drawing group.
push();

// Translate the origin to the mouse's position.
translate(mouseX, mouseY);

// Style the face.
noStroke();
fill('green');

// Draw the face.
circle(0, 0, 60);

// Style the eyes.
fill('white');

// Draw the left eye.
ellipse(-20, -20, 30, 20);

// Draw the right eye.
ellipse(20, -20, 30, 20);

// End the drawing group.
pop();

// Draw a bug.
let x = random(0, 100);
let y = random(0, 100);
text('🦟', x, y);
`</pre>
In the code snippet above, the bug's position isn't affected by
`translate(mouseX, mouseY)` because that transformation is contained
between `push()` and pop(). The bug moves around
the entire canvas as expected.

Note: `push()` and pop() are always called as a
pair. Both functions are required to begin and end a drawing group.

`push()` and pop() can also be nested to create
subgroups. For example, the code snippet above could be changed to give
more detail to the frog’s eyes:

<pre><code class="language-js">// Begin the drawing group.
push();

// Translate the origin to the mouse's position.
translate(mouseX, mouseY);

// Style the face.
noStroke();
fill('green');

// Draw a face.
circle(0, 0, 60);

// Style the eyes.
fill('white');

// Draw the left eye.
push();
translate(-20, -20);
ellipse(0, 0, 30, 20);
fill('black');
circle(0, 0, 8);
pop();

// Draw the right eye.
push();
translate(20, -20);
ellipse(0, 0, 30, 20);
fill('black');
circle(0, 0, 8);
pop();

// End the drawing group.
pop();

// Draw a bug.
let x = random(0, 100);
let y = random(0, 100);
text('🦟', x, y);
`</pre>
In this version, the code to draw each eye is contained between its own
`push()` and pop() functions. Doing so makes it
easier to add details in the correct part of a drawing.

`push()` and pop() contain the effects of the
following functions:

<ul>
<li>fill()</li>
<li>noFill()</li>
<li>noStroke()</li>
<li>stroke()</li>
<li>tint()</li>
<li>noTint()</li>
<li>strokeWeight()</li>
<li>strokeCap()</li>
<li>strokeJoin()</li>
<li>imageMode()</li>
<li>rectMode()</li>
<li>ellipseMode()</li>
<li>colorMode()</li>
<li>textAlign()</li>
<li>textFont()</li>
<li>textSize()</li>
<li>textLeading()</li>
<li>applyMatrix()</li>
<li>resetMatrix()</li>
<li>rotate()</li>
<li>scale()</li>
<li>shearX()</li>
<li>shearY()</li>
<li>translate()</li>
</ul>
In WebGL mode, `push()` and pop() contain the
effects of a few additional styles:

<ul>
<li>setCamera()</li>
<li>ambientLight()</li>
<li>directionalLight()</li>
<li>pointLight() texture()</li>
<li>specularMaterial()</li>
<li>shininess()</li>
<li>normalMaterial()</li>
<li>shader()</li>
</ul>

## Examples

![push example 1](assets/push1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Draw the left circle.
  circle(25, 50, 20)

  -- Begin the drawing group.
  push()

  -- Translate the origin to the center.
  translate(50, 50)

  -- Style the circle.
  strokeWeight(5)
  stroke('royalblue')
  fill('orange')

  -- Draw the circle.
  circle(0, 0, 20)

  -- End the drawing group.
  pop()

  -- Draw the right circle.
  circle(75, 50, 20)

  describe(
    'Three circles drawn in a row on a gray background. The left and right circles are white with thin, black borders. The middle circle is orange with a thick, blue border.'
  )
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
