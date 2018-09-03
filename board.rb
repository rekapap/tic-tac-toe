require './square'
require './map_maker'

class Board
  include MapMaker
  def initalize
  end

  def draw
  end

  def b_empty?
  end

  def set_token(row, col, token)
  end

  def b_full?
  end

  def erase
  end

  def get_token(row, col)
  end

end

# TESTS
if __FILE__ == $PROGRAM_NAME
  token1 = Cross.new
  token2 = Circle.new
  board = Board.new
  board.draw
  raise 'The board is empty' unless board.b_empty?
  board.set_token(1,1,token1)
  begin
    board.set_token(1,1,token2)
  rescue
    raise 'Dont allow tokens at the same position'
  end
  begin
    board.set_token(5,5,token1)
  rescue
    raise 'No such a position!'
  end
  raise 'The board  should not be full.' if board.b_full?
  board.erase
  raise 'token not in the correct pos.' unless board.get_token(1,1) == token1
end
