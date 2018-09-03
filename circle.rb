require './token'

class Circle < Token
  @@symbol = '⭕'
  def symbol
    @@symbol
  end
end

# TESTS
if __FILE__ == $PROGRAM_NAME
  token = Circle.new
  token_sym = token.symbol
  raise 'not string' unless token_sym.is_a?(String)
  raise 'not token' unless token.is_a?(Token)
  raise "wrong symbol" unless token_sym == '⭕'
end