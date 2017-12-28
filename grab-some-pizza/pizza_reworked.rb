# NOTE This is a reworked file from my original submission. I had a thought about it after submitting lessons after this and it just didn't seem right. I learned more following this submission that made my original submission seem inherently wrong after I thought about it.

# Part I
#
# With all this programming, you deserve a night out! First, we'll start at the local pizza joint, where they've asked you to place your order in Ruby (kinda weird, but it gets you a discount, so why not?)
#
# To do so, you'll have to design your Pizza class. By default, the chef will assume you'd like a :cheese pizza.
#
# Additionally, in order for the legendary chef to cook your pizza, he needs to know what ingredients you would like, so find a way to make your ingredients available to outside callers.

# Unwittingly I started this in a way that would combine both Parts 1 and 2 (I think)?

# Part II
#
# If the default :cheese pizza isn't your style, you can decide if you want your pizza to have any combination of :pepperoni, :bacon, :sausage, :mushroom, :onion, :jalapeno, or :green_pepper.
#
# Define a cost instance method that helps you to determine how much your pizza will cost once you make your topping selection(s). A pizza has a base price of $8.00, and each topping costs the following:

require 'pry'

class Pizza
  attr_accessor :toppings

    TOPPINGS = {
      cheese: 0.10,
      mushroom: 0.70,
      pepperoni: 1.10,
      green_pepper: 0.30,
      onion: 0.50,
      jalapeno: 1.30,
      sausage: 1.70,
      bacon: 1.90

    }

def initialize (toppings=[:cheese])
  @toppings = toppings
end

  def cost
    cost = 8.00
    @toppings.each do |topping|
    cost += TOPPINGS[topping]
  end
  cost
end


# Part III
#
# You'll make the chef's life a lot easier if you could separate your order between meats (:sausage, :pepperoni, :bacon) and other_toppings (:cheese, :green_pepper, :onion, :mushroom, :jalapeno).
#
# Define two instance methods -- one for meats and one for other_toppings -- that will provide the chef with the toppings in a given category when you construct your pizza.

  def meats
    @toppings & [:sausage, :pepperoni, :bacon]
  end

  def other_toppings
    @toppings & [:cheese, :green_pepper, :onion, :mushroon, :jalapeno]
  end

  def self.toppings
    TOPPINGS.each do |topping, cost|
      puts "#{topping.to_s.gsub('_',' ')}: $#{sprintf '%.2f', cost}"
    end
    " "
  end
end

# Part IV
#
# Uh oh! It turns out the chef can't actually read Ruby code! Help him out. Create a class method to output your toppings in a more human-friendly format. You can define a class method using the def self.method_name syntax.

toppings = [:mushroom, :onion, :pepperoni]

pizza = Pizza.new(toppings)
puts "The cost of your pizza is $#{sprintf '%.2f', pizza.cost}."
puts

puts "The meat toppings you chose are: #{pizza.meats}."
puts "You other toppings are: #{pizza.other_toppings}."
puts

puts Pizza.toppings
