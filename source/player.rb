require_remote 'source/chara.rb'
require_remote 'source/bomb.rb'
class Player < Chara
  attr_accessor :bomb, :bombs
  attr_accessor :item, :c_flag

  #コンストラクタ
  def initialize(x, y, image)
    super(x, y, image)
    @bomb = 3
    @bombs = [nil, nil, nil]

    @c_flag = false
    @item = []
  end

  def update(field)
    walk_switch = 0
    walk_switch = 2 if Input.y > 0
    walk_switch = 4 if Input.x < 0
    walk_switch = 6 if Input.x > 0
    walk_switch = 8 if Input.y < 0

    move(walk_switch, field)

    draw
  end

  def get(_items)
    p _items
    _items.each do |i|
      self.item << i
    end
  end

  def shot
    self.c_flag = true
  end
end