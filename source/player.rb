require_remote 'source/chara.rb'
class Player < Chara
  #コンストラクタ
  def initialize(x, y, image)
    super(x, y, image)
    p "constructed player"
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
end