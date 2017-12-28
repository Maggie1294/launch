class BoundingBox
  attr_reader :width, :height, :left, :right, :top, :bottom

  def initialize(x, y, width, height)
    @width = width
    @height = height
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
  end

# is this correct instead? Like in the challenge we worked on last week (geometric-classes). The edge itself has a value. Correct?
  def contains_point?(x, y)
    (x >= @left &&  x <= @right) &&
    (y >= @bottom && y <= @top)
  end

end
