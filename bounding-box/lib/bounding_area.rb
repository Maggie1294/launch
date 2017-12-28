class BoundingArea
  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    if @boxes == []
      return false
    else
      @boxes.any? { |box| box.contains_point?(x, y)}
    end
  end
end
