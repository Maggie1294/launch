# class Lamp
# def initialize
#   @powered_on = false
# end
#
# def flip_switch!
# @powered_on = !@powered_on
# end
#
# def on?
#   @powered_on
# end
#
# end

class Person
  def initialize(name)
    @name = name
  end

  def greet
    "Hi there, #{@name}"
  end

  def part_ways
    "Bye now, #{@name}"
  end

  def address(address)
    @address = address
  end

  def address
    @address
  end

end

person = Person.new("John")
puts person.greet
puts person.part_ways

require 'pry'
binding.pry
