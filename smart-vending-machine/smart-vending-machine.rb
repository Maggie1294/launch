#ask the user what item they would like
puts "What would you like today?"
print "> "
#grab their answer and save it as a variable
item = gets.chomp

# ask them how many of that item they would like
puts "How many of those would you like?"
print "> "
#grab that answer (a number) and save it as a variable
item_quantity = gets.chomp.to_i

#use the answer to start a times loop to print the number of times specified
  item_quantity.times do
  puts "#{item}"
end
  puts "There you go! Come on back soon!"
