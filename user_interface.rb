class UserInterface
  def initialize
    @input = input
    @output = output
  end

  def display_question(question)
    puts question
  end

  def collect_player_answer
    print "Your answer: "
    gets.chomp
  end

  def display_correct_answer_feedback(player1, player2)
    puts "Phew! You got that one right luckily!"
    display_scores(player1, player2)
    puts "----- NEW TURN -----"
  end

  def display_incorrect_answer_feedback(player1, player2)
    puts "Seriously? That's the wrong asnwer you fool!"
    display_scores(player1, player2)
    puts "----- NEW TURN ------"
  end

  def display_winner(player)
    puts "#{player.get_name} wins the battle with a score of #{player.get_score} and #{player.get_lives} lives remaining."
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end

  def display_scores(player1, player2)
    puts "#{player.get_name}'s score: #{player.get_score}, lives remaining: #{player.get_lives}"
  end

end
