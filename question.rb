class Question
  attr_reader :num_1, :num_2, :operator

  def initialize
    @num_1 = rand(1..25)
    @num_2 = rand(1..25)
    @operator = ['*', '+', '-', '/'].sample
  end

  def new_question
    @question = "What is #{self.num_1} #{self.operator} #{self.num_2}?"
    @answer = num_1.send(operator, num_2)
    return @question, @answer
  end
end

q1 = Question.new_question

puts q1.new_question