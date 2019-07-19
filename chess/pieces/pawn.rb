require_relative "piece"

class Pawn < Piece
  def symbol 
    ' ♟ '.colorize(color)
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