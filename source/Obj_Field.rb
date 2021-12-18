require_remote 'source/object.rb'

Image.register(:tree, 'images/tree.png')
Image.register(:block, 'images/block.png')
Image.register(:key, 'images/key.png')

class ObjectField
  attr_accessor :obj

  def initialize(_objects)
    @obj = []
    _objects.each_with_index do |row, y|
      row.each_with_index do |num, x|
        _x = x * CELL_WIDTH
        _y = y * CELL_HEIGHT
        case num
        when 0
        when 1
          obj << Tree.new(_x, _y, Image[:tree])
        when 2
          obj << Block.new(_x, _y, Image[:block])
        when 3
          obj << Key.new(_x, _y, Image[:key])
        end
      end
    end
  end

  def draw
    obj.each do |o|
      o.draw
    end
  end
end
