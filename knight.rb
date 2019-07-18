require_relative "piece.rb"
class Knight < Piece

  def move_diffs
    [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
  end

  def symbol
    if self.color == :white
      "♘"
    else
      "♞"
    end
  end
  
end