# Part I: An Empty Room
# Define your Theater constructor so that it requires a number of seats. You should also maintain the number of patrons you've admitted with each instance. Naturally, when you construct a Theater, the number of patrons should be 0.

class Theatre
  attr_accessor :patrons_admitted, :capacity

  def initialize(number_of_seats)
    @capacity = number_of_seats
    @patrons_admitted = 0
  end

# Part II: Admit One!
#
# Define an admit! instance method that optionally takes a single argument. This argument should represent the number of people to admit. It should default to 1 if the argument is not specified.
#
# Each time it is called, it should increase the number of patrons in the theater.
#
# If the number of patrons to admit exceeds capacity, don't admit them! Provide the usher with an error message and leave the number of admitted patrons unchanged.

def admit!(new_patrons = 1)
  if @patrons_admitted + new_patrons > @capacity
    "Sorry, the theatre is full."
  else
    @patrons_admitted += new_patrons
  end
end

# Part III: at_capacity?
#
# Write an instance method at_capacity? that checks to see if the Theater is at capacity. It should return true if the total number of patrons is equal to the number of seats. If the number of patrons hasn't reached capacity, the method should return false.

def at_capacity?
  @patrons_admitted == @capacity
end

# Part IV: record_walk_outs!
#
# Troll 2 is so horrendously bad that people are leaving! The usher needs for you to implement a record_walk_outs! method that takes an optional, single argument. This should decrease the number of patrons recorded for the Theater instance.

def record_walk_outs!(new_patrons = 1)
  @patrons_admitted -= new_patrons
end
end
