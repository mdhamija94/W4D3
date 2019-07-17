require "colorize"
require_relative "cursor.rb"
class Display
  def initialize(cursor)
    @cursor = Cursor.new([0,0])
  end

end