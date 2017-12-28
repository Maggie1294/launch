# # These are the new requirements:
# A game consists of a series of rounds until either player has won.
# The first player to win two rounds is declared the winner and the game ends.
# The number of rounds won by the player and the computer are shown each round.
# Output the winner of the game before exiting.

player_score = 0
computer_score = 0

while player_score < 2 && computer_score < 2
  puts "Let's play rock, paper, scissor! Pick r, p or s."
  player_choice = gets.chomp
  choices = ["r", "p", "s"]
  computer_choice = choices.sample

if player_choice == "r" && computer_choice == "r"
    puts "Player chose Rock & Computer chose Rock. Its a tie!"
  elsif player_choice == "r" && computer_choice == "p"
    puts "Player chose Rock & Computer chose Paper. Computer wins!"
    computer_score += 1
  elsif player_choice == "r" && computer_choice == "s"
    puts "Player chose Rock & Computer chose Scissors. Player wins!"
    player_score += 1
  elsif player_choice == "p" && computer_choice == "r"
    puts "Player chose Paper & Computer chose Rock. Player wins!"
    player_score += 1
  elsif player_choice == "p" && computer_choice == "p"
    puts "Player chose Paper & Computer chose Paper. Its a tie!"
  elsif player_choice == "p" && computer_choice == "s"
    puts "Player chose Paper & Computer chose Scissors. Computer wins!"
    computer_score += 1
  elsif player_choice == "s" && computer_choice == "r"
    puts "Player chose Scissors & Computer chose Rock. Computer wins!"
    computer_score += 1
  elsif player_choice == "s" && computer_choice == "p"
    puts "Player chose Scissors & Computer chose Paper. Player wins!"
    player_score += 1
  elsif player_choice == "s" && computer_choice == "s"
    puts "Player chose Scissors & Computer chose Scissors. Its a tie!"
  else
    puts "Invalid entry, Try again!"
end

if player_score == 2
  puts "Awesome job! You won the match!"
  puts "Player score: #{player_score}, Computer score: #{computer_score}"
elsif computer_score == 2
  puts "Sorry! Looks like the computer won this match!"
  puts "Player score: #{player_score}, Computer score: #{computer_score}"
else
  puts "Let's play again!"
end
end
