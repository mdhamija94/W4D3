require_relative "piece"
require_relative "slideable"

class Rook < Piece
  include Slideable 

  def move_dirs
    # rook can move horizontal and vertical by any amount when not blocked by another piece

    hv_dirs
  end

  def symbol
    ' ♜ '.colorize(color)
  end

end