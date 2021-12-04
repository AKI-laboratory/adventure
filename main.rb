require 'dxopal'
include DXOpal

require_remote 'source/field.rb'
require_remote 'source/player.rb'

Image.register(:player, 'images/player_kotsugi.png') 

Window.load_resources do
  Window.bgcolor = C_WHITE
  Window.width  = 800
  Window.height = 600

  player = Player.new(400, 500, Image[:player])

  field = Field.new

  Window.loop do
    field.drawField
    player.update
    player.draw
  end
end
