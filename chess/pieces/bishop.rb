require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def move_dirs
    # bishop can move diagonal by any amount when not blocked by another piece
    diagonal_dirs
  end

  def symbol
    ' ♝ '.colorize(color)

    # if self.color == :white
    #   " ♗ "
    # else 
    #   " ♝ "
    # end
  end

end