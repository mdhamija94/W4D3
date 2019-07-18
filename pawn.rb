require_relative "piece.rb"
class Pawn < Piece


  def symbol 
    if self.color == :white
      "♙"
    else
      "♟"
    end
  end

  def move_dirs 
    if self.color == :white
      [0, -1]
    else
      [0, 1]
    end
  end 
  
private 
  def diagonal_moves
    if self.color == :white
      [[1, -1], [-1, -1]]
    else
      [[-1, 1], [1, 1]]
    end
  end
end