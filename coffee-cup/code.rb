# Part I - Model Your Cup
#
# Create a constructor that instantiates your coffee cup with an amount of coffee and a maximum capacity. Most cups support 12 oz and are filled up to 8 oz, so use those as default values.
class CoffeeCup
  attr_reader :amount, :capacity

# QUESTION Aren't the values set below immutable? Why is it that we can "@amount" to "0" when the coffee is spilled?
  def initialize(amount = 8, capacity = 12)
    @amount = amount
    @capacity = capacity
  end

  def sip!
    if @amount > 0
       @amount -= 1
    else
       puts "You need a refill my friend!"
    end
  end

  def spill!
    @amount = 0
  end

  def refill!
    @amount = @capacity - 2
  end

  def to_s
      "You have #{amount} left in your #{capacity} oz. cup."
  end
end
