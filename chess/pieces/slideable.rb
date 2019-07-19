module Slideable
  HV_DIRS = [
    [1, 0], 
    [-1, 0], 
    [0, 1], 
    [0, -1]
  ].freeze

  DIAGONAL_DIRS = [
    [1, 1], 
    [1, -1], 
    [-1, 1],
    [-1 ,-1]
  ].freeze

  def moves 
    results = []
    move_dirs.each do |move_dir|
      results.concat(self.grow_unblocked_moves_in_dir(move_dir.first, move_dir.last))
    end
    results
  end 

  def hv_dirs
    HV_DIRS
  end

  def diagonal_dirs 
    DIAGONAL_DIRS
  end

  def move_dirs
    
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    moves = []
    start_pos = self.pos
    end_pos = [start_pos.first + dx, start_pos.last + dy]
    until !board[end_pos].is_a?(NullPiece)
      moves << end_pos 
      end_pos = [end_pos.first + dx, end_pos + dy]
    end
    moves
  end
end