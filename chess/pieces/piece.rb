class Piece
  attr_reader :color, :symbol
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color # :black, :white
    @board = board
    @pos = pos
  end

  def inspect
    puts "#{self.class.name}, #{self.symbol}"
  end

  def moves 

  end

  def symbol
    
  end

end