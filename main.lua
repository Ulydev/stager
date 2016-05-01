state = require "stager" --require the library

function love.load()
  
  state:switch("game", { message = "Hi!" }) --switch state
  
end

-- set up love.update and love.draw

function love.update(dt)
  state:update(dt)
end

function love.draw()
  state:draw()
end