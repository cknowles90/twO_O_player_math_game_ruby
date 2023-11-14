require_relative 'player'
require_relative 'user_interface'
require_relative 'question'
require_relative 'turn'
require_relative 'game'

# Collect player information/settings
puts "Welcome to the Game!"
puts "Player 1, please enter your name: "
player1_name = gets.chomp
puts "Enter your starting score: "
player1_score = gets.chomp.to_i
puts "Enter the number of lives you want: "
player1_lives = gets.chomp.to_i

puts "Player 2, please enter your name: "
player2_name = gets.chomp
puts "Enter your starting score: "
player2_score = gets.chomp.to_i
puts "Enter the number of lives you want: "
player2_lives = gets.chomp.to_i

# Create the player instances with the associated UserInterface instances and custom messages
ui_player1 = UserInterface.new
ui_player2 = UserInterface.new

player1 = Player.new(player1_name, player1_score, player1_lives)
player2 = Player.new(player2_name, player2_score, player2_lives)

# Create the Question, Tun and Game class instances
question = Question.new
turn = Turn.new(player1)
game = Game.new(player2)

# Example usage with game logic
while player1.get_lives > 0 && player2.get_lives > 0
  # Generate a question
  new_question, answer = question.new_question

  # Player1's turn
  ui_player1.display_question(new_question)
  player1_answer = ui_player1.collect_player_answer

  if player1_answer == answer.to_s
    player1.increase_score
    ui_player1.display_correct_answer_feedback(player1, player2)
  else
    player1.decrease_lives
    ui_player1.display_incorrect_answer_feedback(player1, player2)
  end

  # Continue the game with new questions and turns
  break if player1.get_lives == 0 || player2.get_lives == 0

  # Generate a new question
  new_question, answer = question.new_question

  # Player2's turn
  ui_player2.display_question(new_question)
  player2_answer = ui_player2.collect_player_answer

  if player2_answer == answer.to_s
    player2.increase_score
    ui_player2.display_correct_answer_feedback(player1, player2)
  else
    player2.decrease_lives
    ui_player2.display_incorrect_answer_feedback(player1, player2)
  end
end

# Game ends, and display the winner
if player1.get_lives == 0
  winning_player = player2
  losing_player = player1
  ui_player2.display_winner(winning_player, losing_player)
else 
  winning_player = player1
  losing_player = player2
  ui_player1.display_winner(winning_player, losing_player)
end
