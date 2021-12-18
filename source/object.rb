class Obj < Sprites
  attr_accessor :col

  def initialize(x, y, image)
    super
    @col = false
    self.collision_enable = false
  end
end

class Tree < Obj
  def initialize(x, y, image)
    super
    self.col = true
  end
end
class Block < Obj
  def initialize(x, y, image)
    super
    self.col = true
  end
end
class Key < Obj
  def initialize(x, y, image)
    super
    self.col = false
    self.collision_enable = true
  end

  def pick_up
    #self.visible = false
    self.x = 0
    self.y = 0
    self.scale_x *= 1.5
    self.scale_y *= 1.5
    self.collision_enable = false
  end

  def hit
    self.pick_up
  end
end
