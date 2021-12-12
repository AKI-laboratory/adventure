class Chara < Sprites
  attr_accessor :speed

  def initialize(x, y, image)
    super(x, y, image)
    @speed = 5
  end

  def move(walk_switch)
    case walk_switch
    when 2
      if self.y < (Window.height - CELL_HEIGHT)
        self.y += speed
      end
    when 4
      if self.x > 0
        self.x -= speed
      end
    when 6
      if self.x < (Window.width - CELL_WIDTH)
        self.x += speed
      end
    when 8
      if self.y > 0
        self.y -= speed
      end
    end
  end
end