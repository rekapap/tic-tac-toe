class Player
  attr_reader :name, :token
  def initialize(name, token)
    @name = name
    @token = token
  end
end

if __FILE__ == $PROGRAM_NAME
  require './cross'
  name = 'testname'
  token = Cross.new
  player = Player.new(name,token)
  raise 'not string name' unless player.name.is_a?(String)
  raise "no token" unless player.token.is_a?(Token)
  raise "wrong token" unless player.token == token
  raise "wrong name" unless player.name == name
end