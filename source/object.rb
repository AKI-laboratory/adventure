class Obj < Sprites
  attr_accessor :col

  def initialize(x, y, image)
    super
    @col = false
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
