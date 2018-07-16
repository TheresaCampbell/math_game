prng = Random.new

class Question

  def initialize(int_a, int_b)
    @int_a = int_a
    @int_b = int_b
  end

  def ask
    puts "What is #{@int_a} plus #{@int_b}?"

    response = $stdin.gets.chomp

    if response == "#{@int_a + @int_b}"
      puts "Correct!"
    else
      puts "Incorrect!"
    end
  end

end

question1 = Question.new(prng.rand(1..20),  prng.rand(1..20))
# question1.ask