function love.load()
	Player = {}
	Player.x = 100
	Player.y = 200
	Player.width = 50
	Player.height = 80
	Player.speed = 100
end

function love.update(dt)
	-- MovePlayer(Player.x, Player.y, dt)
end

function love.draw()
	love.graphics.rectangle("line", Player.x, Player.y, Player.width, Player.height)
end

function MovePlayer(x, y)
	Player.x = Player.x + x
	Player.y = Player.y + y
end

function love.keypressed(key)
	local dx, dy = 0, 0
	if key == "l" then -- move right
		dx = dx + 10
	elseif key == "h" then -- move left
		dx = dx - 10
	elseif key == "k" then -- move up
		dy = dy - 10
	elseif key == "j" then -- move down
		dy = dy + 10
	end
	MovePlayer(dx, dy)
end
