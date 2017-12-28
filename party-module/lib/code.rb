# module PartyGoer
#   require_relative 'personalized_havoc_error.rb'
#
#   attr_accessor :no_drinks
#   attr_reader :no_drinks, :is_included
#
#   def initialize
#     @no_drinks = 0
#   end
#
#   def drink
#     @no_drinks += 1
#     @no_drinks < 4 ? true : false
#   end
#
#   def sing
#     "a string"
#   end
#
#   def cause_havoc
#     raise PersonalizedHavocError, "You should define this yourself!"
#   end
#
#   def self.included(klass)
#     true
#   end
# end

require_relative "PersonalizedHavocError"

module PartyGoer

  def initialize
    @drinks = 0
  end

  def drink
    if @drinks < 3
      @drinks += 1
      true
    else
      false
    end
  end

  def sing
    "Sing us a song, you're the piano man!"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def invited?
  end

end
