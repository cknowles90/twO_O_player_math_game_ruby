require_relative 'player'
require_relative 'turn'
require_relative 'game'

class Question
  attr_reader :num_1, :num_2, :operator

  def initialize
  end

  def new_question
    @num_1 = rand(1..25)
    @num_2 = rand(1..25)
    @operator = ['*', '+', '-', '/'].sample

    @question = "What is #{self.num_1} #{self.operator} #{self.num_2}?"
    @answer = num_1.send(operator, num_2)
    return @question, @answer
  end

  def correct_answer?(player_answer)
    player_answer == @answer
  end

  def incorrect_answer?(player_answer)
    player_answer == @answer
  end
end

# # Test cases
# q1 = Question.new
# question, answer = q1.new_question
# puts question
# puts "Correct answer: #{answer}"
# puts "Is 10 the correct answer? #{q1.correct_answer?('10')}"
