require 'dxopal'
include DXOpal
require_remote 'source/Control.rb'

Window.load_resources do
  cont = Control.new
  
  Window.loop do
    cont.update
  end
end
