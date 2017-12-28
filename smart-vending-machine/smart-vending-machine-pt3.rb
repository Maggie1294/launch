#ask the user what item they would like
puts "What would you like today?"
print "> "
#grab their answer and save it as a variable
item = gets.chomp

# ask them how many of that item they would like
puts "How many #{item} would you like?"
print "> "
#grab that answer (a number) and save it as a variable
item_quantity = gets.chomp
random = nil

# if item_quantity.index("tons").nil? == false
#   random = rand (14)
#
# puts "There you go! Come on back soon!"

if item_quantity.index("tons").nil? == false
  while random != 0
  random = rand(14)
puts item
if random == 0
	break
end
end
	elsif item_quantity.index("tons").nil? == true
    puts "So you don't want TONS of snacks?"
	  item_quantity.to_i.times do
	  puts item
end
end
puts "There you go! Come on back soon!"
