require_relative "piece.rb"
require_relative "slideable.rb"

class Bishop < Piece
  include Slideable

  def move_dirs
    # bishop can move diagonal by any amount when not blocked by another piece
    diagonal_dirs
  end

end