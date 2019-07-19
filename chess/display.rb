require "colorize"
require_relative "cursor.rb"
require_relative "board.rb"
require "byebug"

class Display
  def initialize(cursor, board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    board = []

    @board.rows.each do |row|
      array = row.map do |piece|
        # debugger
        piece.symbol    
      end

      board << array
    end

    board.each do |row|
      row.each do |element|
        print element
      end

      puts
    end
  end

end

b = Board.new
c = Cursor.new([0,0], b)
d = Display.new(c, b)

while true 
  d.render
  c.get_input
  system("clear")
end