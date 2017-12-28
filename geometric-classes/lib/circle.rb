# class Circle
#   attr_accessor :radius, :x, :y, :diameter, :area, :perimeter
#   def initialize(radius, x = 0, y = 0)
#   @radius = radius.to_f
#   @x = x.to_f
#   @y = y.to_f
#   @diameter = radius * 2
#   @area = ((radius * radius) * 3.14)
#   @perimeter = (2 * 3.14 * radius)
# end
# end

class Circle
  attr_accessor :x, :y

  def initialize(value, x=0, y=0)
    @value = value
    @x = x
    @y = y
  end

  def radius
    @radius = @value
  end

  def diameter
    @diameter = @value *2
  end

  def area
    @area = Math::PI * @value ** 2
  end

  def perimeter
    @perimeter = 2 * Math::PI * @value
  end

end
