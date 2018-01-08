def initialize_map(width, height)
  map = []

  (0...height).each do |y|
    sub_map = []
    (0...width).each do |x|
      sub_map[x] = 0    
    end
    map[y] = sub_map
  end 

  map
end

class Drone
  attr_accessor :id, :x, :y, :face

  def initialize(id, x, y, face)
    @id = id
    @x = x
    @y = y
    @face = face
  end

  def left
    case @face
    when 'n'
      @face = 'w' 
    when 'w'
      @face = 's'
    when 's'
      @face = 'e'
    when 'e'
      @face = 'n'
    end
  end

  def right
    case @face
    when 'n'
      @face = 'e' 
    when 'w'
      @face = 'n'
    when 's'
      @face = 'w'
    when 'e'
      @face = 's'
    end
  end

  def move
    case @face
    when 'n'
      @y -= 1
    when 'w'
      @x -= 1
    when 's'
      @y += 1
    when 'e'
      @x += 1
    end
  end
end
