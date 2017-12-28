# PART 1

# def greet (name)
#   puts "Hi, #{name}!"
# end

# PART 2

def greet(name)
  random_greeting = ["Hi", "Yo", "Hey"]
  puts "#{random_greeting.sample} #{name}!"

# PART 3
# QUESTION do you have to set language to nil?
# def greet (name, language = nil)
def greet (name, language)
  if language == "Spanish"
    puts "Hola  #{name}!"
  elsif language == "English"
    puts "Hi #{name}"
  elsif language == "French"
    puts "Bonjour #{name}"
  else
    puts "Hi #{name}"
  end
end


puts "What is your name?"
name = gets.chomp

puts "What language do you speak?"
language = gets.chomp

# QUESTION The line below is getting an error about the number of arguments being incorrect. Given 2 expecting 1. Why?
# greet(name, language)
greet(name)

# QUESTION if I change line 37 to just "name" it uses the code from part 2 and works. ??
