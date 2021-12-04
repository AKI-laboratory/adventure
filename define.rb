require 'dxopal'
include DXOpal

CELL_WIDTH = 40
CELL_HEIGHT = 40
CELL_NUM_X = 16
CELL_NUM_Y = 16

class Sprite
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
