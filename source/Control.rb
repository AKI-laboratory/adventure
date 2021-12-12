require_remote 'source/define.rb'
require_remote 'source/field.rb'
require_remote 'source/object.rb'
require_remote 'source/player.rb'

Image.register(:player, 'image/player.png')
Image.register(:title, 'images/title.png')

class Control
  attr_accessor :mode,:field,:object,:player

  def initialize()
    @mode = :title
    @field = Field.new
    @object = Object.new
    @player = Player.new(400, 500, Image[:player])
  end

  def title
    Window.draw(0,0,Image[:title])
    if Input.key_push?(K_RETURN)
      self.mode = :game
    end
  end

  def game
    field.drawField
    object.drawObject
    player.update
    player.draw

  end

  def update
    send(mode)
  end
end
