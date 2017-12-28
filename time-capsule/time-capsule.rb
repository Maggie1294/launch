puts "Hi there! What is your name?"
name = gets.chomp
puts "Great to meet you, #{name}!"

time_capsule = []

while true
  puts "What do you want to add to our Time Capsule?"
  puts "When you are done, type FINISHED."
  item = gets.chomp
  if item == "FINISHED"
  break
  else
  print "How many #{item} do you want to add?\n>"
  amount = gets.chomp
  item = item + "(#{amount})"
  time_capsule << item
  end
end

if time_capsule == []
  puts "Your Time Capsule is empty!"
else
  puts "Here is what you added to the Time Capsule:"
  time_capsule.each do |item|
  puts "* #{item}"
  end
end
