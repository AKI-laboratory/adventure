require_remote 'source/chara.rb'
class Player < Chara
  def update
    if Input.key_down?(K_LEFT) && self.x > 0
      self.move(-8, 0)
    elsif Input.key_down?(K_RIGHT) && self.x < (Window.width - CELL_WIDTH)
      self.move(8, 0)
    elsif Input.key_down?(K_UP) && self.y > 0
      self.move(0, -8)
    elsif Input.key_down?(K_DOWN) && self.y < (Window.height - CELL_HEIGHT)
      self.move(0, 8)
    end
  end
end