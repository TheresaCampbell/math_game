require './turn_manager.rb'
require './question.rb'
require './player.rb'

class Turn

  def initialize(current_player)
    @current_player = current_player
    @question = Question.new
  end

  def ask
    puts "#{@current_player.name}: What is #{@question.int_a} plus #{@question.int_b}?"
  end

  def validate(response)
    if response == @question.answer
      puts "#{@current_player.name}: YES! You are correct!"
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.incorrect
    end
  end
end