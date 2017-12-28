menu = {
  "Hamburger" => 400,
  "Hot Dog" => 300,
  "Fries" => 200,
  "Chips" => 100,
  "Water" => 125,
  "Soda" => 150
}

# Take the order
puts "Welcome to The Burger Hut! What can we get for you today?"
order = gets.chomp
order = order.split(",")
not_on_menu = nil

order.each do |order_item|
  if !menu.has_key?(order_item)
    puts "#{order_item} is not on the menu. Can we get you something else?"
    order = gets.chomp
    order = order.split(",")
  end
end

# This is the total of the order.
total = 0
order.each do |order_item|
total += menu[order_item].to_f
end

# QUESTION: Can the following line be explained? I want to fix the decimals. 
# puts "Thank you! Your total is $#{'%.2f' % (total / 100.to_f)}. Have a great day!"
puts "Thank you! Your total is #{total}."
