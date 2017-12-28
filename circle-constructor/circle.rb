# PART 1
class Circle
  def initialize(radius)
    @radius = radius
  end
attr_reader :radius

end

# PART 2
class Circle
  attr_reader :reader
  def initialize(input)
    if input[:radius].nil?
      @radius = input[:diameter]/2
    else
      @radius = input[:radius]
    end
  end

end

# QUESTION PART 3 - this is based on the solution. Please explain what input.kind_of? does??
class Circle
  attr_reader :radius
  def initialize(input)
    if input.kind_of?(Hash)
      if input[:radius].nil?
        @radius = input[:diameter] / 2
      else
        @radius = input[:radius]
      end
    else
      @radius = input
    end
  end

end
