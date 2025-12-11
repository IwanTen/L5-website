# Developer info: How does L5 work?

L5 is built with the [Love2d](https://www.love2d.org/) framework in Lua. It uses a modified `love.run()` that adds double buffering and custom events and sets global defaults used internally by L5 and accessible by the programmer. Internally used global defaults are held within the `L5_env` table.

By default Love only allows drawing commands within `love.draw()`, which calls a user's custom `draw()` function. In order to achieve parity with Processing and p5.js so that drawing graphics can happen anywhere, L5 modifies `love.run()` to allow drawing graphics anywhere.

`love.load()` has been modified to set the global default width and height as well as the display width and height, and to create the double buffers, and seed the pseudorandom number generator. Double buffering and initially clearing the buffers has been added to prevent screen flickering and other visual artifacts that were a result of modifying `love.run()`. Shader, canvas and color defaults are set here.

`love.update()` has been modified to track mouse positioning, last key pressed, and status of currently playing videos if present in a sketch.

`love.draw()` now tracks user events such as mouse and keyboard events. Most user events have been modified to track global variables in the L5_env table. The user's draw() function is called or not, depending on loop() or noLoop() or redraw().

`filter()` is implemented through GLSL shader code.

## Roadmap

* [X] Winter 2025/2026 - Alpha release 0.1
* [ ] Winter 2025/2026 - L5 mode added to Processing IDE
* [ ] Winter 2025/2026 - Code refactor
* [ ] Spring 2026 - Comprehensive Error message system implemented
* [ ] Summer 2026 - L5sound and L5camera libraries release
* [ ] Fall 2026 - Add support for 3D
