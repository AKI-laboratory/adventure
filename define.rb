require 'dxopal'
include DXOpal

CELL_WIDTH = 32
CELL_HEIGHT = 32
CELL_NUM_X = 26
CELL_NUM_Y = 17
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
