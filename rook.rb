require_relative "piece.rb"
require_relative "slideable.rb"

class Rook < Piece
  include Slideable 

  def move_dirs
    # rook can move horizontal and vertical by any amount when not blocked by another piece

    hv_dirs
  end

  def symbol
    if self.color == :white 
      "♖"
    else
      "♜"
    end
  end

end