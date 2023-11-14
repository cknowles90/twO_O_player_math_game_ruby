require_relative 'player'
require_relative 'question'

class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def play_turn
    display_question
    player_answer = get_player_answer
    check_answer(player_answer)
  end

  def display_question(new_question)
    question, _ = new_question
    puts question
  end

  def get_player_answer
    print "Your answer: "
    gets.chomp
  end

  def check_answer(player_answer)
    if @question.correct_answer?(player_answer)
      player.increase_score
    else
      player.decrease_lives
    end
  end
end

# # Test cases
# player = Player.new("Bob", 0. 3)
# turn = Turn.new(player)
# # Simulate a turn
# puts "Turn for #{player.get_name}"
# turn.play_turn
# # Test with incorrect answer
# player = Player.new("Claire", 0, 3)
# turn = Turn.new(player)
# puts "Turn for #{player.get_name}"
# puts "Simulating an incorrect answer"
# turn.check_answer("42") 