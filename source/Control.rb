require_remote 'source/define.rb'
require_remote 'source/field.rb'
require_remote 'source/object.rb'
require_remote 'source/player.rb'

Image.register(:player, 'image/player.png')
Image.register(:title, 'images/title.png')

class Control
  attr_accessor :mode,:field,:object,:player, :@map_start_x, :@is_scroll

  def initialize()
    @mode = :title
    @map_start_x = 0
    @is_scroll = 0 # 0:stop, 1:left, 2:right
    @field = Field.new(@map_start_x, @is_scroll)
    @player = Player.new(400, 100, Image[:player])
    @object = Object.new
  end

  def title
    Window.draw(0,0,Image[:title])
    if Input.key_push?(K_RETURN)
      self.mode = :game
    end
  end

  def game
    if player.x >= (CELL_NUM_X - 1) * CELL_WIDTH
      @is_scroll = 1
    elsif player.x <= 0
      @is_scroll = 2
    end
    if @is_scroll == 1
      if @map_start_x > -(CELL_NUM_X - 1) * CELL_WIDTH
        @map_start_x -= 8
      else
        @is_scroll = 0
        @map_start_x = 0
        player.x = 1
      end
    elsif @is_scroll == 2
      if @map_start_x < (CELL_NUM_X - 1) * CELL_WIDTH
        @map_start_x += 8
      else
        @is_scroll = 0
        @map_start_x = 0
        player.x = (CELL_NUM_X - 1) * CELL_WIDTH - 1
      end
    end

    field.drawField(scroll_x:@map_start_x)

    if @is_scroll == 0
      object.drawObject
    end
    player.update(@field, scroll:@is_scroll, scroll_x:@map_start_x)
  end

  def update
    send(mode)
  end
end
