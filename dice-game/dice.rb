input = 'Enter' || 'S'
while input == 'Enter'
dice1 = rand(6)+1
dice2 = rand(6)+1
total = dice1 + dice2
puts "You rolled a #{dice1} and a #{dice2}"
puts "Total: #{total}"
puts "Press 'Enter' to roll again, 'S' to stop."
input = gets.chomp
end
