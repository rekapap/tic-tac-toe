class Square
  attr_reader :row, :col
  attr_writer :token
  def initialize(row, col, token = nil)
    @row = row
    @col = col
    @token = token
end

if __FILE__ == $PROGRAM_NAME
  row = 0
  col = 0
  square = Square.new(row, col)
  cross = Cross.new
  raise 'Should not have token' unless square.token.is_a?(nil)
  square.token=(cross)
  raise 'Token is not a cross' unless square.token.is_a?(Cross)
end
