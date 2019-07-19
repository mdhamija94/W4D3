require_relative "piece"
require_relative "steppable"

class Knight < Piece
  include Steppable

  def move_diffs
    [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
  end

  def symbol
    ' ♞ '.colorize(color)
  end
  
end