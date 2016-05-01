local game = state:new()

function game.load(params)
  
  print(params.message)
  
end

function game.update(dt)
  
  --update
  
end

function game.draw()
  
  love.graphics.setBackgroundColor(20, 40, 80)
  
end

function game.unload()
  
  print("Bye!")
  
end

return game