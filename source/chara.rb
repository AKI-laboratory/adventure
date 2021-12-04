class Chara < Sprite
  def initialize(x, y, image)
    super(x, y, image)
  end

  def move(dx, dy)
    self.x += dx
    self.y += dy
  end
end