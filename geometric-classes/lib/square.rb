class Square
  attr_accessor :x, :y, :length, :width

  def initialize(value, x=0, y=0)
    @value = value
    @x = x
    @y = y
  end

  def length
    @length = @value
  end

  def width
    @width = @value
  end

  def diameter
    Math.sqrt(2) * @value.to_f
  end

  def perimeter
    @value * 4
  end

  def area
    @value ** 2
  end

def contains_point?(x, y)
  if ((x >= @x - (@value/2.0).to_f && x <=  @x  + (@value/2.0).to_f) &&
  (y >= @y - (@value/2.0).to_f && y <=  @y  + (@value/2.0).to_f))
    return true
  else
    return false
  end
end
end
