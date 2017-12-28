# Ask the user what difficulty they would like to play at - "easy" or "hard".
puts "We are playing a Guessing Game! What difficulty do you want? Easy or Hard?"

# Accept user input and save it as a variable.
difficulty = gets.chomp.downcase

# Pick a random number. If the user chose "easy", the number should be between 1 and 10.
if difficulty.downcase == "easy"
  puts "I have picked a number between 1 and 10. What number did I pick?"
  guess = gets.chomp.to_i
  my_number = rand(1..10)

# If the user chose "hard", the number should be between 1 and 20.
# Depending on which level the user chose, say that you picked a random number
# between 1 and 10 or 20, and that the user now has to guess it.
elsif difficulty.downcase == "hard"
  puts "I have picked a number between 1 and 20. What number did I pick?"
  my_number = rand(1..20)
end

# Start a while loop. The while loop should run for as long as the user hasn't
# found the correct answer. Each time the loop runs, the user should be asked to
# pick a number. As long as the answer isn't correct, the user should be asked to
# try again.
# After the user has found the correct answer,
# the loop should exit and a congratulatory message should display.
while guess != my_number
  puts "Nope! Try again!"
  guess = gets.chomp.to_i
end
puts "Awesome! You are correct!"
