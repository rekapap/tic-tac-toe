require 'square'

# Board
class Board
  def initalize
    @data = Array.new(3) { Array.new(3) { Square.new } }
  end

  def b_empty?
    @data.flatten.count { |square| !square.token.nil? }.zero?
  end

  def set_token(row, col, token)
    raise unless @data[row][col].token.nil?
    @data[row][col].token = token
  end

  def b_full?
    @data.flatten.count { |square| square.token.nil? }.zero?
  end

  def erase
    initalize
  end

  def get_token(row, col)
    @data[row][col].token
  end
end
