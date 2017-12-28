# create the array for the souq
items = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric", "orange fabric", "handicrafts", "small persian rug", "medium persian rug", "large persian rug", "extra large persian rug"]

# greet the user
print "Hi there! What's your name?"
name = gets.chomp
puts "Welcome #{name}!"

# Print out the list of items for the user to see
puts "Here is a list of items you can choose to buy:"
items.each do |item|
  puts " #{item}"
end
puts

# Ask the user which items they would like to purchase
input = ""
shopping_cart = Array.new
items_not_available = Array.new

while input != 'finished'
  puts "What would you like to buy? (type FINISHED when you're done)"
  print "> "
  input = gets.chomp.downcase

  if input == "finished"
    puts "Thanks for shopping!"
    break
  end
  if items.include?(input)
    shopping_cart << input
  else
    puts "Sorry, we don't have that yet!"
    items_not_available << input
  end
end


# List the items in the user's cart
puts "#{name}, thanks for stopping by our Souq. Here is what you purchased:"
shopping_cart.each do |item|
  puts "* #{item}"
end

# Here is what they asked for but were not available
puts "We noticed that you chose some items that were not available. We will try to get these:"
items_not_available.each do |item|
  puts "* #{item}"
end
