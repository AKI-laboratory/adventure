class Field
    def initialize
        @field=[
            [0,0,0,1,1,1,0,0,0,0],
            [0,1,1,1,1,1,1,1,0,0],
            [0,1,1,1,1,1,1,1,1,0],
            [0,1,1,1,1,1,1,1,0,0],
            [0,0,0,1,1,1,0,0,0,0],
        ]
        @image_field = Image.load('./images/ground.png')
    end

    def drawField
        @field.each_with_index do |line, id_l|
            line.each_with_index do |num, id|
                if num == 1 then
                    Window.draw(16 * id, 16 * id_l, @image_field)
                end
            end
        end
    end

end