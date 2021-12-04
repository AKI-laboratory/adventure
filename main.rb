require 'dxopal'
require_remote 'field.rb'
include DXOpal
Window.load_resources do
  Window.bgcolor = C_BLACK

  field = Field.new

  Window.loop do
    # Window.draw_font(0, 0, "Hello!", Font.default, color: C_WHITE)
    field.drawField
  end
end
