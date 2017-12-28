# PART 1
class Rectangle
  def initialize(length, width)
    @length, @width = length, width
  end
  #QUESTION does the order of initialize and attr_reader matter?
  attr_reader :length
  attr_reader :width
  # def perimeter
  #   @length * 2 + @width * 2
  # end
  #
  # def summary
  #   {
  #     length: @length,
  #     width: @width,
  #     perimeter: perimeter,
  #     area: @length * @width
  #   }
  # end
end
#
# my_rectangle = Rectangle.new(4, 8)
# puts my_rectangle.perimeter
# puts my_rectangle.summary.inspect
#
# require 'pry'
# binding.pry

# PART 2
class Rectangle
  def initialize(length, width = nil)
    @length = length
    if width.nil?
      @width = length
    else
      @width = width
    end
  end

end

# PART 3

class Rectangle
  def initialize(length, width = nil)
    @length = length
    if width.nil?
      @width = length
    else
      @width = width
    end
  end

  def area
    @area = length * width
  end

end
