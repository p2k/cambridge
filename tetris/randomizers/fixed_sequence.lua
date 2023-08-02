local Randomizer = require 'tetris.randomizers.randomizer'

---@class Sequence: Randomizer
---@field sequence string|string[]
---@field counter number
local Sequence = Randomizer:extend()

function Sequence:initialize()
    self.sequence = "IJLOT"
    self.counter = 0
end

function Sequence:generatePiece()
    local piece
    local sequence = self.sequence -- helps type checking
    if type(sequence) == "string" then
        piece = string.sub(sequence, self.counter + 1, self.counter + 1)
    else
        piece = sequence[self.counter + 1]
    end
    self.counter = (self.counter + 1) % (#sequence)
    return piece
end

return Sequence
