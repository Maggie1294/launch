# QUESTION:
# from Dan's video:

def summary
  {
    length: self.length,
    width: self.width,
    perimeter: self.perimeter,
    area: self.length * width

  }
end

# Is the above code functionally equivalent to:
def summary
  {
    length: @length,
    width: @width,
    perimeter: @perimeter,
    area: @ area
  }
end
# What would be the reason to use one or the other?
# What does self add to the functionality?
-------------------------------------------
