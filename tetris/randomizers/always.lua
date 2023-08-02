local Randomizer = require 'tetris.randomizers.randomizer'

--- A randomizer which is the fever dream of every Tetris player. It only generates I pieces.
---@class AlwaysRandomizer: Randomizer
local AlwaysRandomizer = Randomizer:extend()

function AlwaysRandomizer:generatePiece()
	return "I"
end

return AlwaysRandomizer
