require './game.rb'
require './player.rb'
require './question.rb'
require './turn.rb'
require './turn_manager.rb'

class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]
    @turn_manager = Turn_Manager.new(@players)
  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def play

    while !game_over?
      @turn1 = Turn.new(@turn_manager.current_player)
      @turn1.ask
      response = gets.chomp.to_i
      @turn1.validate(response)
      puts "P1: #{@player1.lives}/3 VS P2: #{@player2.lives}/3"
      @turn_manager.new_turn
    end
    if @player1.lives == 0
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
    else
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
    end
    puts "GAME OVER"
    puts "Goodbye"
    exit
  end
end



my_game = Game.new
my_game.play