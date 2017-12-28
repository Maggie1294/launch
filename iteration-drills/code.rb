# Write Ruby<->English answers here as comments in your code

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
# Ruby<->English: Add all of the 'number' elements in the array named 'array'.
sum = 0
array.each do |number|
  sum += number
end
puts sum

# * How would you print out each value of the array?
# Ruby<->English: List each of the 'number' elements in 'array'.
array.each do |number|
  puts number
end

# * What is the sum of all of the even numbers?
# Ruby<->English: Add all of the even 'number' elements in 'array'.
# QUESTION: how can this be written using array.select(&:even?)
even_sum = 0
array.each do |number|
  if number % 2 == 0
    even_sum += number
  end
end
puts even_sum

even_numbers = array.select(&:even?)
puts even_numbers.reduce(:+)

# * What is the sum of all of the odd numbers?
# Ruby<->English: Add all of the odd 'number' elements in 'array'
# QUESTION:same as above but using array.select(&:odd?)
odd_sum = 0
array.each do |number|
  if number % 2 != 0
    odd_sum += number
  end
end
puts odd_sum

# * What is the sum of all the numbers divisble by 5?
# Ruby<->English: Add all of the 'number' elements that are divisible by 5 from 'array'.
div_by_five_sum = 0
array.each do |number|
  if number % 5 == 0
    div_by_five_sum += number
  end
end
puts div_by_five_sum

# * What is the sum of the squares of all the numbers in the array?
# Ruby<->English: Square all of the 'number' elements in 'array'. Print out the sum of all of those numbers.
squares_sum = 0
array.each do |number|
  squares_sum += (number * number)
end
puts squares_sum

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
# Ruby<->English: Take each 'name' element in 'array' and print it out backwards.
array.each do |name|
  puts name.reverse
end

# * What are the total number of characters in the names in `array`?
# Ruby<->English: Add the total of all 'name' characters in 'array'.
character_sum = 0
array.each do |name|
  character_sum += name.length
end
puts character_sum

# * How many names in `array` are less than 5 characters long?
# Ruby<->English: Print out all of the 'name' elements in 'array' that contain less than 5 characters.
less_than_five_characters = 0
array.each do |name|
  if name.length < 5
    less_than_five_characters += 1
  end
end
puts "#{less_than_five_characters} names are less than 5 characters long."

# * How many names in `array` end in a vowel?
# QUESTION: This really needs to be shortened. Suggestions?
vowel_names = array.select { |name| name[-1] == 'a' || name[-1] == 'e' || name[-1] == 'i' || name[-1] == 'o' || name[-1] == 'u'}
puts vowel_names

# * How many names in `array` are more than 5 characters long?
# Ruby<->English: Print out all of the 'name' elements in 'array' that contain more than 5 characters.
more_than_five_characters = 0
array.each do |name|
  if name.length > 5
    more_than_five_characters += 1
  end
end
puts "#{more_than_five_characters} names are more than 5 characters long."

# * How many names in `array` are exactly 5 characters in length?
# Ruby<->English: Print out all of the 'name' elements in 'array' that contain 5 characters.
five_characters = 0
array.each do |name|
  if name.length == 5
    five_characters += 1
  end
end
puts "#{five_characters} names are 5 characters long."
