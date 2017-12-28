# QUESTION Can we work this out to do the calculations within the arguments? And output the results?

def perimeter(width, height)
  2 * width + 2 * height
end

puts "What is the width of your rectangle?"
width = gets.chomp.to_i

puts "What is the height of the rectangle?"
height = gets.chomp.to_i

puts "The overall perimeter is:"
perimeter(width, height)

def perimeter(width, height = nil)
  if height.nil?
    width * 4
  else
    2 * width + 2 * height
  end
end

puts "What is the width of your rectangle?"
width = gets.chomp.to_i

puts "What is the height of the rectangle?"
height = gets.chomp.to_i

puts "The overall perimeter is:"
perimeter(width, height)
