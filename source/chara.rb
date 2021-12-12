require_remote 'source/define.rb'
class Chara < Sprites
  def initialize(x, y, image)
    super(x, y, image)
  end

  def move(dx, dy)
    self.x += dx
    self.y += dy
  end
end