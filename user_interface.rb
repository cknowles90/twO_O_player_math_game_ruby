class UserInterface
  def initialize

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

  def display_winner(winning_player, losing_player)
    puts "#{winning_player.get_name} wins the battle with a score of #{winning_player.get_score} and #{winning_player.get_lives} lives remaining."
    puts "#{losing_player.get_name} is a loser, but managed to score #{losing_player.get_score} with #{losing_player.get_lives} lives remaining."
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end

  def display_scores(player1, player2)
    puts "#{player1.get_name}'s score: #{player1.get_score}, lives remaining: #{player1.get_lives}"
    puts "#{player2.get_name}'s score: #{player2.get_score}, lives remaining: #{player2.get_lives}"
  end

end
