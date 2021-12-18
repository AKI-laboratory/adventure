CELL_WIDTH = 32
CELL_HEIGHT = 32
CELL_NUM_X = 26
CELL_NUM_Y = 17
MAP_SIZE = 3
Window.bgcolor = C_BLUE
Window.width = CELL_WIDTH*CELL_NUM_X
Window.height = CELL_HEIGHT*CELL_NUM_Y

class Sprites < Sprite
  attr_accessor :width, :height
  alias init_origin initialize

  def initialize(x = 0, y = 0, image = nil)
    init_origin(x, y, image)
    @width = image.width if !image.nil?
    @height = image.height if !image.nil?
    self.scale_x = CELL_WIDTH / width.to_f
    self.scale_y = CELL_HEIGHT / height.to_f
    self.center_x = 0
    self.center_y = 0
  end
end

module Camera
  @view_x=0
  @view_y=0

  class << self
    def draw (x1,y1,x2,y2,gh,change_vx=0,change_vy=0,option={})
      @view_x=change_vx if change_vx!=0
      @view_y=change_vy if change_vy!=0

      x1-=@view_x;x2-=@view_x-1
      y1-=@view_y;y2-=@view_y-1

      Window.draw(x1,y1,x2,y1,x2,y2,x1,y2,gh,option)
    end
    def x
      @view_x
    end
    def y
      @view_y
    end
  end
end