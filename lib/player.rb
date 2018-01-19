class Player

  attr_reader :name, :hp

  DEFAULT_HP = 100

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= random_number
  end

  def random_number
    rand(100)
  end

  def dead?
    @hp <= 0
  end
end
