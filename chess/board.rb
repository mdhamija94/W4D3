require_relative 'pieces'

class Board
  attr_reader :rows
  def initialize
    @rows = Array.new(8) { Array.new(8, NullPiece.instance)}
    fill_board
  end

  def fill_board
    @rows.each_with_index do |row, y|
      if y == 0
        row.each_with_index do |row_el, x|
          case x 
          when 0, 7
            self[[y,x]] = Rook.new(:black, @rows, [y,x])
          when 1, 6 
            self[[y,x]] = Knight.new(:black, @rows, [y,x])
          when 2, 5
            self[[y,x]] = Bishop.new(:black, @rows, [y,x])
          when 3
            self[[y,x]] = King.new(:black, @rows, [y,x])
          when 4
            self[[y,x]] = Queen.new(:black, @rows, [y,x])
          end
        end
      elsif y == 7
        row.each_with_index do |row_el, x|
          case x 
          when 0, 7
            self[[y,x]] = Rook.new(:white, @rows, [y,x])
          when 1, 6 
            self[[y,x]] = Knight.new(:white, @rows, [y,x])
          when 2, 5
            self[[y,x]] = Bishop.new(:white, @rows, [y,x])
          when 3
            self[[y,x]] = King.new(:white, @rows, [y,x])
          when 4
            self[[y,x]] = Queen.new(:white, @rows, [y,x])
          end
        end
      elsif
        y == 1
        row.each_with_index do |row_el, x|
          self[[y,x]] = Pawn.new(:black, @rows, [y,x])
        end
      elsif
        y == 6
        row.each_with_index do |row_el, x|
          self[[y,x]] = Pawn.new(:white, @rows, [y,x])
        end
      end
    end
  end

  def [](pos)
    x, y = pos
    @rows[x][y]
  end

  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise "There's no piece at this position."
    end

    if !self[end_pos].is_a?(NullPiece)
      raise "This piece cannot move to that position"
    end
    
    self[end_pos], self[start_pos] = self[start_pos], NullPiece.instance
  end

  def valid_pos?(pos)
    pos.all? { |place_on_board| place_on_board.between?(0, 7) }
  end
end 

# board = Board.new
# board.move_piece([0,0],[3,3])
# p board.rows