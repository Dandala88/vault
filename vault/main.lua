local sti = require "sti"

function love.load()
	spaced = false
	level = 1
	keys = loadKeys()
	exited = false
	map = sti("levels/map_01.lua")
	start = love.timer.getTime()
	timeRemaining = start 
	createPlayer()
	createCoins()
	music = love.audio.newSource("sounds/vault_01.wav", "stream")
	love.audio.play(music)
end

function love.update(dt)
	timeRemaining = math.floor(start+60-love.timer.getTime())
	if not exited and timeRemaining > 0 then 
		map:update(dt)
	end
end

function love.draw()
	love.graphics.setBackgroundColor(255, 255, 255)
	local player = map.layers["Sprites"].player
	local scale = 1
	local screen_width = love.graphics.getWidth() / scale
	local screen_height = love.graphics.getHeight() / scale
	if not exited and timeRemaining > 0 then
		
		local tx = math.floor(player.x - screen_width / 2)
		local ty = math.floor(player.y - screen_height / 2)
		
		map:draw(-tx, -ty, scale, scale)
		
		local cr, cb, cg, ca = love.graphics.getColor()
		love.graphics.setColor(0,0,0)
		love.graphics.print("Coins: "..player.coins, 16, 16, 0, 2, 2)
		love.graphics.print("Time: "..timeRemaining, 16, 64, 0, 2, 2)
		love.graphics.setColor(cr, cb, cg, ca)
	else
		love.graphics.setColor(0,0,0)
		local str = "You exited with "..player.coins.." coins!"
		love.graphics.print(str, (screen_width / 2)-150, screen_height / 2, 0, 2, 2)
		love.graphics.print("Press ESC to exit")
	end
end

function love.keypressed(key)
	local action = keys[key]
	if action then return action() end
end

function createPlayer()
	local layer = map:addCustomLayer("Sprites", 2)

	local player 
	for k, object in pairs(map.objects) do
		if object.name == "entry" then
			player = object
			break
		end
	end

	local sprite = love.graphics.newImage("sprites/robber.png")
	layer.player = {
		sprite = sprite,
		x	   = player.x,
		y	   = player.y,
		ox	   = 0,
		oy	   = 0,
		px	   = 0,
		py	   = 0,
		coins = 0,
		speed = 200,
		strength = 5
	}
	layer.update = function(self, dt)
		local speed = self.player.speed - (self.player.coins*self.player.strength)
		local exitBool = checkExit(self.player.x, self.player.y)
		--set original y to current y	
		self.player.py = self.player.y
	
		local steps = 5
		local stepSpeed = speed / steps
		for i=0, steps do
			
			if love.keyboard.isDown("up") then
				self.player.y = self.player.y - stepSpeed * dt
			end
			if love.keyboard.isDown("down") then
				self.player.y = self.player.y + stepSpeed * dt
			end
			
			--check for y axis collision correct position if true
			if collision(self.player.x, self.player.y) then
				self.player.y = self.player.py
			end	
			
			--set original x to current
			self.player.px = self.player.x

			if love.keyboard.isDown("left") then
				self.player.x = self.player.x - stepSpeed * dt
			end
			if love.keyboard.isDown("right") then
				self.player.x = self.player.x + stepSpeed * dt
			end

			--check x axis collision correct position if true
			if collision(self.player.x, self.player.y) then
				self.player.x = self.player.px
			end
		end
		if exitBool then
			if level < 2 then
				level = level + 1
				start = love.timer.getTime()
				timeRemaining = start 
				map = sti("levels/map_02.lua")
				createPlayer()
				createCoins()
			else
				exited = true
			end
		end	
	end

	layer.draw = function(self)
		love.graphics.draw(
			self.player.sprite,
			math.floor(self.player.x),
			math.floor(self.player.y),
			0,
			1,
			1,
			self.player.ox,
			self.player.oy
		)
	end
	
	map:removeLayer("spawnLayer")
end

function collide(x, y)
	local px, py = math.floor(x), math.floor(y)
	local tileX, tileY = map:convertPixelToTile(x, y)
	tileX, tileY = math.floor(tileX), math.floor(tileY)
--the convert tile to pixel converts to the location as if it were and array so the 1st tile is actually the 0th tile; the get Tile properties is asking for the actual tile as if it were on an axis so the top tile is actually 1,1 not 0,0; because of this we have to change tileX, tileY to be floored and add one; might need to either make a temp variable or just change it in the call for future use
	return map:getTileProperties("baseLayer", tileX+1, tileY+1)["collision"]
end

function checkExit(x, y)
	local tileX, tileY = map:convertPixelToTile(x+16, y+32)
	tileX, tileY = math.floor(tileX), math.floor(tileY)
	return map:getTileProperties("baseLayer", tileX+1, tileY+1)["exit"]
end

function collision(x,y)
	if collide(x+2, y+2) or collide(x+2,y+30) or collide(x+30,y+2) or collide(x+30, y+30) then
		return true
	end
	return false
end

function createCoins()
	local layer = map:addCustomLayer("coins", 3)
	local sprite = love.graphics.newImage("sprites/coin.png")
	local coins = {}
	for k, object in pairs(map.objects) do
		if object.name == "coin" then
			table.insert(coins, object)
		end
	end
	
	layer.update = function(self, dt)
		local px, py = map.layers["Sprites"].player.x, map.layers["Sprites"].player.y
		if love.keyboard.isDown(" ") and map.layers["Sprites"].player.coins > 0 then
			if not spaced then
				map.layers["Sprites"].player.coins = map.layers["Sprites"].player.coins - 1
				spaced = true
				object = {
					x = px,
					y = py
				}
				table.insert(coins, object)
			end
		end
		if not love.keyboard.isDown(" ") then
			spaced = false
		end
		for k, object in pairs(coins) do
			if collect(px+16, py+16, object.x, object.y) and not love.keyboard.isDown("d") then
				table.remove(coins, k)
				local sound = love.audio.newSource("sounds/coin_01.wav", "static")
				love.audio.stop()
				love.audio.play(sound)
				map.layers["Sprites"].player.coins = map.layers["Sprites"].player.coins + 1
			end
		end
	end
	layer.draw = function(self)
		for k, object in pairs(coins) do
			love.graphics.draw(sprite, object.x, object.y)
		end
	end

	map:removeLayer("collectLayer")
end

function collect(px, py, cx, cy)
	if px >= cx and px <= cx+32 and py >= cy and py <= cy+32 then
		return true
	end
	return false
end

function loadKeys()
	local keys = {
		escape = love.event.quit,
	}
	return keys
end
