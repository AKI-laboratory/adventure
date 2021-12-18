require_remote 'source/chara.rb'

class Enemy < Chara
  attr_accessor :name

  def initialize(x, y, image)
    super(x, y, image)

    @name = " "
  end

  def action

  end

  def die

  end
end

class Zako1 < Enemy
  def initialize(x, y, image)
    super(x, y, image)
    self.name = "雑魚１"
    self.name.freeze
  end
end