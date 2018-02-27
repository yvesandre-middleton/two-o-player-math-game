class Player

  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrease_lives
    @lives -= 1
  end

  def game_over?
    @lives == 0
  end

end