local Object = require 'libs.classic'

---@class Randomizer: Object
---@field possible_pieces string[]
local Randomizer = Object:extend()

function Randomizer:new()
	self.possible_pieces = {"I", "J", "L", "O", "S", "T", "Z"}
	self:initialize()
end

--- Get the next piece
---
--- The default implementation calls `generatePiece()`.
---@return string
function Randomizer:nextPiece()
	return self:generatePiece()
end

--- Initialize the randomizer
---
--- The default implementation does nothing.
function Randomizer:initialize() end

--- Generate a random piece
---
--- The default implementation generates an uniformly random piece out of the `possible_pieces`.
---@return string
function Randomizer:generatePiece()
	return self.possible_pieces[love.math.random(7)]
end

return Randomizer
