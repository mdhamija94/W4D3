module Steppable
  def moves
    results = []

    move_diffs.each do |move_diff|
      start_pos = self.pos
      end_pos = [pos.first + move_diff.first, pos.last + move_diff.last]
      moves << end_pos if board[end_pos].is_a?(NullPiece)
    end

    results
  end

  def move_diffs

  end
end