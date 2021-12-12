require 'dxopal'
include DXOpal
require_remote 'define.rb'
require_remote 'source/field.rb'
require_remote 'source/player.rb'

Image.register(:player, 'images/player_kotsugi.png') 

class Control
  TITLE = Image.load("image/title.png")
  attr_accessor :mode

  def initialize()
    @mode = :title
    @field = Field.new
    @player = Player.new(400, 500, Image[:player], @field)
  end

  def title
    Window.draw(0,0,TITLE)
    if Input.key_push?(K_RETURN)
      self.mode = :game
    end
  end

  def game
    @field.drawField
    @player.update
    @player.draw
  end

  def update
    send(mode)
  end
end
