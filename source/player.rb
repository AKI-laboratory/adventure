require_remote 'source/chara.rb'

class Player < Chara
  attr_accessor :x
  attr_accessor :y

  #コンストラクタ
  def initialize(x, y, image, _field)
    super(x, y, image)
    @field = _field

    p "constructed player"
  end

  #フィールドとの当たり判定
  def collWithField?(x, y)
    grid_x = (x / 32).floor
    grid_y = (y / 32).floor

    if @field.getFieldVal(grid_x, grid_y) != 2
      return false
    elsif
      return true
    end
  end

  #当たり判定付きのmove()
  def moveWithCollision(dx, dy, diff)
    #tmpで動かしてみて，問題なかったら動かす
    tmp_x, tmp_y = self.x, self.y
    tmp_x += dx
    tmp_y += dy

    if( !collWithField?(tmp_x, tmp_y))
      #当たり判定なし
      p "not collision"
      self.move(dx, dy)
    elsif (dx < 0 || dy < 0)
      if (collWithField?(tmp_x, self.y) && !collWithField?(self.x, tmp_y))
        #当たり判定あり
        #動いた方向に対して，そのグリッドの左上座標に移動
        grid_x = (tmp_x / 32).floor
        p grid_x
        self.x = (grid_x - dx / diff) * 32

      elsif ( !collWithField?(tmp_x, self.y) && collWithField?(self.x, tmp_y))
        #当たり判定あり
        #動いた方向に対して，そのグリッドの左上座標に移動
        grid_y = (tmp_y / 32).floor
        p grid_y
        self.y = (grid_y - dy / diff) * 32
      end
    elsif (dx > 0 || dy > 0)
      if (collWithField?(tmp_x - 32, self.y) && !collWithField?(self.x, tmp_y - 32))
        #当たり判定あり
        #動いた方向に対して，そのグリッドの左上座標に移動
        grid_x = (tmp_x / 32).floor
        p grid_x
        self.x = (grid_x - dx / diff) * 32

      elsif ( !collWithField?(tmp_x - 32, self.y) && collWithField?(self.x, tmp_y - 32))
        #当たり判定あり
        #動いた方向に対して，そのグリッドの左上座標に移動
        grid_y = (tmp_y / 32).floor
        p grid_y
        self.y = (grid_y - dy / diff) * 32
      end
    end
  end

  #アップデート関数
  def update
    diff = 8
    if Input.key_down?(K_LEFT) && self.x > 0
      self.moveWithCollision(-diff, 0, diff)
    elsif Input.key_down?(K_RIGHT) && self.x < (Window.width - Image[:player].width)
      self.moveWithCollision(diff, 0, diff)
    elsif Input.key_down?(K_UP) && self.y > 0
      self.moveWithCollision(0, -diff, diff)
    elsif Input.key_down?(K_DOWN) && self.y < (Window.height - Image[:player].height)
      self.moveWithCollision(0, diff, diff)
    end
  end
end