puts "How many sides does your dice have?"
player_sides = gets.chomp
puts "How many times would you like to roll your pair of dice?"
player_rolls = gets.chomp.to_i
input = 'Y' || 'n'
# while player_rolls !=0 && input == 'Y' do
#   dice1 = rand(6)+1
#   dice2 = rand(6)+1
#   total = dice1 + dice2
#   puts "You rolled a #{dice1} and a #{dice2}"
#   puts "Total: #{total}"
#   puts "Roll again? (Y/n)"
#   input = gets.chomp
# end

player_rolls.times do
  dice1 = rand(6)+1
  dice2 = rand(6)+1
  total = dice1 + dice2
  puts "You rolled a #{dice1} and a #{dice2}"
  puts "Total: #{total}"

  puts "Roll again? (Y/n)"
  input = gets.chomp

  # if input == 'n'
  #   break
  # end
end
