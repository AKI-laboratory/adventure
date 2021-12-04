require_remote 'source/chara.rb'
class Player < Chara
  def update
    if Input.key_down?(K_LEFT) && self.x > 0
      self.move(-8, 0)
    elsif Input.key_down?(K_RIGHT) && self.x < (Window.width - Image[:player].width)
      self.move(8, 0)
    elsif Input.key_down?(K_UP) && self.y > 0
      self.move(0, -8)
    elsif Input.key_down?(K_DOWN) && self.x < (Window.height - Image[:player].width)
      self.move(0, 8)
    end
  end
end