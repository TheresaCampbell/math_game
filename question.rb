class Question

  attr_reader :int_a, :int_b, :answer

  def initialize
    @int_a = rand(1..20)
    @int_b = rand(1..20)
  end

  def answer
    @int_a + @int_b
  end

end
