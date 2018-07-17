require './player.rb'
require './game.rb'

class Turn_Manager

  attr_reader :current_player

  def initialize(player_array)
    @player_array = player_array
  end

  def current_player
    @player_array[0]
  end

  def new_turn
    @player_array.rotate!
  end

end

