class Player
  DEF_HP = 100

  attr_reader :name, :hp
  def initialize(name, hp = DEF_HP)
    @name = name
    @hp = hp
  end

  def attacked
    @hp -= 10
    return @hp
  end
end
