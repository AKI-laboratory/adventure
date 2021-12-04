require 'dxopal'
include DXOpal
require_remote 'define.rb'

class Control
  attr_accessor :mode

  def initialize()
    @mode = :title
  end

  def title
    self.mode = :game
  end

  def game

  end

  def update
    send(mode)
  end
end
