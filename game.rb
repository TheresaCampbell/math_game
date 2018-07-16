require './game.rb'
require './player.rb'
require './question.rb'
require './turn.rb'
require './turn_manager.rb'

def initialize
  @player1 = Player.new("Player 1")
end

puts "player1 from main: #{@player1}"

