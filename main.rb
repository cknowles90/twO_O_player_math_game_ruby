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

player1 = Player.new(player1_name, player1_score, player1_lives, ui_player1)
player2 = Player.new(player2_name, player2_score, player2_lives, ui_player2)

# Create the Question, Tun and Game class instances
question = Question.new
turn = Turn.new
game = Game.new

# Example usage with game logic
question1 = "What does 5 + 5 equal?"
player1.ui.display_question(player1, question1)
player1_answer = player1.ui.collect_player_answer

if player1_answer == "10"
  player1.increase_score
  player1.ui.display_correct_answer_feedback(player1, player2)
else
  player1.decrease_lives
  player1.ui.display_incorrect_answer_feedback(player1, player2)
end

# Continue the game with new questions and turns

# Game ends, and display the winner
if player1.get_score > player2.get_score
  player1.ui.display_winner(player1)
else
  player2.ui.display_winner(player2)
end