require_remote 'source/chara.rb'
class Player < Chara
  #コンストラクタ
  def initialize(x, y, image)
    super(x, y, image)
  end

  def update(field, scroll:0)
    walk_switch = 0
    walk_switch = 2 if Input.y > 0
    walk_switch = 4 if Input.x < 0
    walk_switch = 6 if Input.x > 0
    walk_switch = 8 if Input.y < 0

    move(walk_switch, field)

    if scroll == 1
      self.x += -8
    elsif scroll == 2
      self.x += 8
    elsif scroll == 3
      self.y += 8
    elsif scroll == 4
      self.y -= 8
    end

    draw
  end
end