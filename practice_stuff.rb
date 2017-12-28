# # randomly generate a color symbol
# require 'rubygems'
# require 'bundler/setup'
#
# require 'colorize'
#
# def random_color(whitelisted_colors = nil)
#   rand_num = rand(5) + 1
#   if whitelisted_colors.nil?
#     return String.colors.sample
#   else
#     return whitelisted_colors.sample
#   end
# end
#
# # 5.times { puts random_color }
#
# # randomly colorize a string
# def randomly_colorize(string, colors = nil)
#   "#{string}".colorize(random_color(colors))
# end
#
# 5.times { puts randomly_colorize("Dan") }
#
# puts "===="
# 5.times { puts randomly_colorize("Dan", [:red, :green]) }
#
# # puts "What is your name? I'ma gonna colorize it."
# # supplied_name = gets.chomp
# #
# # return_value = randomly_colorize(supplied_name, [:red, :green])
# #
# # puts "Your randomly colorized name is: " + return_value
#
# # randomly colorize each character in a string
class Rectangle
  def initialize(length, width)
    @length, @width = length, width
  end
  attr_reader :length
  # the above line of code replaces the 3 lines below
  # def length
  #   @length
  # end
  attr_reader :width
  def perimeter
    @length * 2 + @width * 2
  end

  def summary
    {
      length: @length,
      width: @width,
      perimeter: perimeter,
      area: @length * @width
    }
  end
end

my_rectangle = Rectangle.new(3, 9)
# puts my_rectangle.perimeter
# puts my_rectangle.summary.inspect
#
# require 'pry'
# binding.pry

class Book
  def initialize(title, author, category)
    @title = title
    @author = author
    @category = category
  end


def summary
  "'#{@title}' by #{@author} (#{@category})"
end

end

book = Book.new('The Subtle Art', 'Mark Manson', 'Self Help')
# QUESTION error on line 81.
puts book.summary
