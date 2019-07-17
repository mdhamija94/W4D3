# require_relative "board.rb"
class Piece
  attr_reader :color, :symbol
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color # :black, :white
    @board = board
    @pos = pos
  end

  def moves 

  end
end