stager
==============

stager is a state manager for LÖVE. It makes it easier to set up different screens/scenes for your game.

Setup
----------------

Require the library
```lua
local state = require "stager"
```

Set up love.update and love.draw
```lua
function love.update(dt)
  state:update(dt)
end

function love.draw()
  state:draw()
end
```

Switch state
```lua
state:switch("game")
```

Creating a new state
----------------

A state consists in a file that contains the **state** object, along with its load/unload, update and draw methods.
It should follow this structure:

game.lua
```lua
local game = state:new()

function game.load()
  createPlayer()
end

function game.update(dt)
  movePlayer(dt)
end

function game.draw()
  drawPlayer()
end

function game.unload()
  destroyPlayer()
end

return game
```

Methods
----------------

Update and draw
```lua
state:update(dt)

state:draw()
```

Switch state
```lua
state:switch(path, params) --path to the state .lua file
```

Create a new state
```lua
state:new()
```
