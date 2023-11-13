require_relative 'player'

class Game
  def initialize(player)
    @player = player
  end

  def decrease_lives
    @player.lives -= 1
    return @player.ives
  end

  def increase_lives
    @player.lives += 1
    return @player.lives
  end

  def increase_score
    @player.score += 1
    return @player.score
  end
end

# Test cases
player = Player.new("Alice", 0, 3)
game = Game.new(player)
puts "Player lives before decrease: #{player.get_lives}"
game.decrease_lives
puts "Player lives after decrease: #{player.get_lives}"
puts "Player score before increase: #{player.get_score}"
game.increase_score
puts "Player score after increase: #{player.get_score}"