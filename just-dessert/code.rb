# The owner has asked you to build a `CookieInventory` class.
#
# This class should allow you to bake trays of `:peanut_butter`,
# `:chocolate_chip`, and `:sugar` cookies with a `cook_batch!` instance method
# that takes two arguments: the type of cookie, and the number of cookies baked.
# This should increase the inventory for the cookie type baked.


# Here is where I realized I was starting this wrong:

# class CookieInventory
#   attr_accessor :type_of_cookies, :number_of_cookies
#
#   def initialize(type_of_cookies, number_of_cookies)
#     @type_of_cookies = type_of_cookies
#     @number_of_cookies = number_of_cookies
#   end
#
# end

# and ended up going this route:

class CookieInventory
  attr_accessor :cookie_batches

  def initialize(cookie_batches)# forgot this earlier
    @cookie_batches = {
      peanut_butter: 0,
      chocolate_chip: 0,
      sugar: 0
    }
  end

  def cookie_batch!(type_of_cookies, number_of_cookies)
    @cookie_batches[type_of_cookies] += number_of_cookies
  end

  def sell!(type_of_cookies, number_of_cookies_sold)
    if number_of_cookies_sold < @cookie_batches[type_of_cookies]
    @cookie_batches[type_of_cookies] -= number_of_cookies_sold
  else
    puts " We are all sold out of those!"
  end
end

end

new_inventory = CookieInventory.new_inventory

require.'pry'
binding.pry
