require_remote 'source/explosion.rb'
Image.register(:bomb, 'images/bomb.png')

class Bomb < Sprites
  def initialize(x, y)
    @image = Image[:bomb]

    super(x, y, @image)
    @created = Time.now
    @explosion = Explosion.new(x, y)

    @t = 0
  end

  def update
    # timeInteger = @created.sec
    # @t = Time.now
    # if @t.sec - timeInteger >= 3
    #   p "over 3"
    #   @explosion = Explosion.new(self.x, self.y)
    # end

    if @t >= 180
      self.vanish
      @explosion.update
      #p "explosing"
    elsif @t == 240
      #p "bm vanished"
    else
      draw
      @t += 1
      #p "counting"
    end

    # if @explosion != nil
    #   p "ex"
    #   if @explosion.update
    #     p "van"
    #     @explosion.vanish
    #     p "ish"
    #     #Sprite.clean(@explosion)
    #     self.vanish
    #     p "sh"
    #   end
    # end
  end
end
