#ask the user what item they would like
puts "What would you like today?"
print "> "
#grab their answer and save it as a variable
item = gets.chomp

# ask them how many of that item they would like
puts "How many of those would you like?"
print "> "
#grab that answer (a number) and save it as a variable
item_quantity = gets.chomp
random = nil
# hope they ask for tons and infinitely loop a random number of times
# unless random number is 0

if item_quantity == "tons"
  while random != 0
  random = rand(14)
puts item
if random == 0
	break
end
end
	elsif item_quantity.to_i != 0
	  item_quantity.to_i.times do
	  puts item
end
end
puts "There you go! Come on back soon!"
