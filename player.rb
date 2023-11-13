class Player
  attr_accessor :name, :score, :lives

  def initialize(name, score, lives)
    @name = name
    @score = score
    @lives = lives
  end 

  # 'getter' methods
  def get_name
    @name
  end

  def get_score
    @score
  end

  def get_lives
    @lives
  end
end

player = Player.new("Charlie", 0, 3)
puts player.get_name
puts player.get_score
puts player.get_lives