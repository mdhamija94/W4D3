require_relative "piece"
require_relative "steppable"

class King < Piece
  include Steppable

  def move_diffs
    [[1, 0], [-1, 0], [0, 1], [0, -1], [1, 1], [1, -1], [-1, 1],[-1 ,-1]]
  end

  def symbol
    ' ♚ '.colorize(color)
  end

end