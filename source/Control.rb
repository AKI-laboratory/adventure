require 'dxopal'
include DXOpal
require_remote 'define.rb'

class Control
  TITLE=Image.load("image/title.png")
  attr_accessor :mode

  def initialize()
    @mode = :title
  end

  def title
    Window.draw(0,0,TITLE)
    if Input.key_push?(K_RETURN)
      self.mode = :game
    end
  end

  def game

  end

  def update
    send(mode)
  end
end
