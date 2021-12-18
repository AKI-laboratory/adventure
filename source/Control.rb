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
    @map_num = 4
    @map_start_x = 0
    @map_start_y = 0
    @is_scroll = 0 # 0:stop, 1:left, 2:right, 3:down, 4:up
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

  def XYScroll
    if player.x >= (CELL_NUM_X - 1) * CELL_WIDTH  # right end
      @is_scroll = 1
    elsif player.x <= 0 # left end
      @is_scroll = 2
    elsif player.y <= 0 # upper end
      @is_scroll = 3
    elsif player.y >= (CELL_NUM_Y - 1) * CELL_HEIGHT - 3 # lower end
      @is_scroll = 4
    end

    if @is_scroll == 1  # right -> left
      if @map_start_x > -(CELL_NUM_X - 1) * CELL_WIDTH
        @map_start_x -= 8
      else
        @is_scroll = 0
        @map_start_x = 0
        player.x = 1
        @map_num += 1
      end
    elsif @is_scroll == 2 # left -> right
      if @map_start_x < (CELL_NUM_X - 1) * CELL_WIDTH
        @map_start_x += 8
      else
        @is_scroll = 0
        @map_start_x = 0
        player.x = (CELL_NUM_X - 1) * CELL_WIDTH - 1
        @map_num -= 1
      end
    elsif @is_scroll == 3 # upper -> lower
      if @map_start_y < (CELL_NUM_Y - 1) * CELL_HEIGHT
        @map_start_y += 8
      else
        @is_scroll = 0
        @map_start_y = 0
        player.y = (CELL_NUM_Y - 1) * CELL_HEIGHT - 4
        @map_num -= MAP_SIZE
      end
    elsif @is_scroll == 4 # lower -> upper
      if @map_start_y > -(CELL_NUM_Y - 1) * CELL_HEIGHT
        @map_start_y -= 8
      else
        @is_scroll = 0
        @map_start_y = 0
        player.y = 1
        @map_num += MAP_SIZE
      end
    end
  end

  def game
    self.XYScroll
    field.drawField(map_num:@map_num, scroll_x:@map_start_x, scroll_y:@map_start_y)

    if @is_scroll == 0
      object.drawObject
    end
    
    player.update(@field, scroll:@is_scroll)
  end

  def update
    send(mode)
  end
end
