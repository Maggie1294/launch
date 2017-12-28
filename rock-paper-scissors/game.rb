puts "Let's play rock, paper, scissor! Pick r, p or s."

player_choice = gets.chomp
choices = ["r", "p", "s"]
computer_choice = choices.sample

if player_choice == "r" && computer_choice == "r"
    puts "Player chose Rock & Computer chose Rock. Its a tie!"
  elsif player_choice == "r" && computer_choice == "p"
    puts "Player chose Rock & Computer chose Paper. Computer wins!"
  elsif player_choice == "r" && computer_choice == "s"
    puts "Player chose Rock & Computer chose Scissors. Player wins!"
  elsif player_choice == "p" && computer_choice == "r"
    puts "Player chose Paper & Computer chose Rock. Player wins!"
  elsif player_choice == "p" && computer_choice == "p"
    puts "Player chose Paper & Computer chose Paper. Its a tie!"
  elsif player_choice == "p" && computer_choice == "s"
    puts "Player chose Paper & Computer chose Scissors. Computer wins!"
  elsif player_choice == "s" && computer_choice == "r"
    puts "Player chose Scissors & Computer chose Rock. Computer wins!"
  elsif player_choice == "s" && computer_choice == "p"
    puts "Player chose Scissors & Computer chose Paper. Player wins!"
  elsif player_choice == "s" && computer_choice == "s"
    puts "Player chose Scissors & Computer chose Scissors. Its a tie!"
  else
    puts "Invalid entry, Try again!"
end
