require_remote 'source/field.rb'
class Chara < Sprites
  attr_accessor :speed

  def initialize(x, y, image)
    super(x, y, image)
    @speed = 5
  end

  def collision(field)
    field.can_walk(x,y) && field.can_walk(x+CELL_WIDTH-1,y) && field.can_walk(x,y+CELL_HEIGHT-1) && field.can_walk(x+CELL_WIDTH-1,y+CELL_HEIGHT-1)
  end

  def move(walk_switch,field)
    speed.times do
      _x = self.x
      _y = self.y
      case walk_switch
      when 2
        self.y += 1
      when 4
        self.x -= 1
      when 6
        self.x += 1
      when 8
        self.y -= 1
      end

      if !collision(field)
        self.x = _x
        self.y = _y
      end
    end
  end
end