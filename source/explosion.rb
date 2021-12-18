# require_remote 'source/define.rb'
Image.register(:kaboom, 'images/kaboom.png')

class Explosion < Sprites
  def initialize(x, y)
    @image = Image[:kaboom]

    super(x, y, @image)
    @t = 0
    @created = Time.now
  end

  def update
    # timeInteger = @created.sec
    # @t = Time.now
    # if @t.sec - timeInteger >= 1
    #   p "over 1"
    #   return true
    # end

    if @t==60 
      self.vanish
      #p "ex vanished"
    else 
      draw
      @t +=1
    end
  end
end
