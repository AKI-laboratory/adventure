require_remote 'source/define.rb'
require_remote 'source/field.rb'
require_remote 'source/ObjField.rb'
require_remote 'source/player.rb'

Image.register(:player, 'image/player.png')
Image.register(:title, 'images/title.png')

class Control
  attr_accessor :mode, :field, :objects, :player, :map_num, :map_start_x, :map_start_y, :is_scroll

  def initialize()
    obj_data = [
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,2,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    ]

    @mode = :title
    @map_num = 4
    @map_start_x = 0
    @map_start_y = 0
    @is_scroll = 0 # 0:stop, 1:left, 2:right, 3:down, 4:up
    @field = Field.new(self.map_start_x, self.is_scroll)
    @player = Player.new(400, 100, Image[:player])
    @objects = ObjectField.new(obj_data)
  end

  def title
    Window.draw(0,0,Image[:title])
    if Input.key_push?(K_RETURN)
      self.mode = :game
    end
  end

  def XYScroll
    if player.x >= (CELL_NUM_X - 1) * CELL_WIDTH  # right end
      self.is_scroll = 1
    elsif player.x <= 0 # left end
      self.is_scroll = 2
    elsif player.y <= 0 # upper end
      self.is_scroll = 3
    elsif player.y >= (CELL_NUM_Y - 1) * CELL_HEIGHT - 3 # lower end
      self.is_scroll = 4
    end

    if self.is_scroll == 1  # right -> left
      if self.map_start_x > -(CELL_NUM_X - 1) * CELL_WIDTH
        self.map_start_x -= 8
      else
        self.is_scroll = 0
        self.map_start_x = 0
        player.x = 1
        self.map_num += 1
      end
    elsif self.is_scroll == 2 # left -> right
      if self.map_start_x < (CELL_NUM_X - 1) * CELL_WIDTH
        self.map_start_x += 8
      else
        self.is_scroll = 0
        self.map_start_x = 0
        player.x = (CELL_NUM_X - 1) * CELL_WIDTH - 1
        self.map_num -= 1
      end
    elsif self.is_scroll == 3 # upper -> lower
      if self.map_start_y < (CELL_NUM_Y - 1) * CELL_HEIGHT
        self.map_start_y += 8
      else
        self.is_scroll = 0
        self.map_start_y = 0
        player.y = (CELL_NUM_Y - 1) * CELL_HEIGHT - 4
        self.map_num -= MAP_SIZE
      end
    elsif self.is_scroll == 4 # lower -> upper
      if self.map_start_y > -(CELL_NUM_Y - 1) * CELL_HEIGHT
        self.map_start_y -= 8
      else
        self.is_scroll = 0
        self.map_start_y = 0
        player.y = 1
        self.map_num += MAP_SIZE
      end
    end
  end

  def game
    self.XYScroll
    field.drawField(map_num:self.map_num, scroll_x:self.map_start_x, scroll_y:self.map_start_y)

    if self.is_scroll == 0
      objects.draw
    end
    
    player.update(self.field, scroll:self.is_scroll)
  end

  def update
    send(mode)
  end
end
