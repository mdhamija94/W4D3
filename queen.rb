require_relative "piece.rb"
require_relative "slideable.rb"

class Queen < Piece
  include Slideable

  def move_dirs
    # queen can move in any direction by any amount when not blocked by another piece
    hv_dirs.concat(diagonal_dirs)
  end

end