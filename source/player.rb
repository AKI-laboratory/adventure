require_remote 'source/chara.rb'
class Player < Chara
  def update
    walk_switch = 0
    walk_switch = 2 if Input.y > 0
    walk_switch = 4 if Input.x < 0
    walk_switch = 6 if Input.x > 0
    walk_switch = 8 if Input.y < 0

    move(walk_switch)
    draw
  end
end