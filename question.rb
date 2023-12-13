require "./players"

class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_question
    puts "What does #{@num1} + #{@num2} equal?"
    gets.chomp.to_i
  end

  def correct?(response)
    response == @answer
  end
end