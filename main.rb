require 'dxopal'
include DXOpal
require_remote 'source/Control.rb'
require_remote 'source/field.rb'
require_remote 'source/player.rb'

Image.register(:player, 'images/player_kotsugi.png') 

Window.load_resources do
  cont = Control.new
  player = Player.new(400, 500, Image[:player])
  field = Field.new

  Window.loop do
    cont.update
    field.drawField
    player.update
    player.draw
  end
end
