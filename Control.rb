require 'dxopal'
include DXOpal
require_remote 'define.rb'
require_remote 'source/field.rb'
require_remote 'source/object.rb'
require_remote 'source/player.rb'

Image.register(:player, 'images/player_kotsugi.png') 

class Control
  TITLE = Image.load("image/title.png")
  attr_accessor :mode
  attr_accessor :map_start_x
  attr_accessor :isScroll

  def initialize()
    @mode = :title
    @map_start_x = 0
    @isScroll = 0 # 0:stop, 1:left, 2:right
    @field = Field.new(@map_start_x, @isScroll)
    @object = Object.new
    @player = Player.new(400, 500, Image[:player])
  end

  def title
    Window.draw(0,0,TITLE)
    if Input.key_push?(K_RETURN)
      self.mode = :game
    end
  end

  def game
    if @player.x >= (CELL_NUM_X - 1) * CELL_WIDTH
      @isScroll = 1
    elsif @player.x <= 0
      @isScroll = 2
    end
    if @isScroll == 1
      if @map_start_x > -(CELL_NUM_X - 1) * CELL_WIDTH
        @map_start_x -= 8
      else
        @isScroll = 0
        @map_start_x = 0
        @player.x = 1
      end
    elsif @isScroll == 2
      if @map_start_x < (CELL_NUM_X - 1) * CELL_WIDTH
        @map_start_x += 8
      else
        @isScroll = 0
        @map_start_x = 0
        @player.x = (CELL_NUM_X - 1) * CELL_WIDTH - 1
      end
    end
    @field.drawField(scroll_x:map_start_x)
    if @isScroll == 0
      @object.drawObject
    end
    @player.update(scroll:isScroll, scroll_x:map_start_x)
    @player.draw
  end

  def update
    send(mode)
  end
end
