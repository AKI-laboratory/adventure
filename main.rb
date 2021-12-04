require 'dxopal'
include DXOpal

require_remote 'source/chara.rb'

Image.register(:player, 'images/player_2.png') 

Window.load_resources do
  Window.bgcolor = C_WHITE
  Window.width  = 800
  Window.height = 600

  chara = Chara.new(400, 500, Image[:player])

  Window.loop do
    chara.update
    chara.draw
  end
end
