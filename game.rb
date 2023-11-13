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
