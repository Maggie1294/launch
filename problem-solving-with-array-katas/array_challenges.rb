long_string = "Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"
# puts long_string

word_array = long_string.split(' ')
# puts word_array.inspect

#build a new array consisting of character lengths
word_lengths = word_array.map do |word|
  word.size
end

# puts word_lengths.inspect

longest_word_index = -1
longest_word_length = -1

word_lengths.each_with_index do |length, index|
  if length > longest_word_length
  longest_word_length = length
  longest_word_index = index
  end
end

# puts longest_word_length
# puts longest_word_index
# puts word_array [longest_word_index]

# using sort_by
sorted_word_array = word_array.sort_by {|word| word.size}
# puts sorted_word_array.inspect
# puts sorted_word_array.last

# most common letter used

# transform the sentence into an array of characters
character_array = long_string.split('')
# puts character_array.inspect

# 26 zeros, no spaces.
char_counts = []
26.times do
  char_counts << 0
end

character_array.each do |char|
  if char.ord > "a".ord && char.ord <= "a".ord + 25
    char_counts [char.ord - "a".ord] += 1
end
end
# puts char_counts.inspect

char_index = -1
max_chars = -1
char_counts.each_with_index do |count, index|
  if count > max_chars
    max_chars = count
    char_index = index
  end
end

char = (char_index + "a".ord).chr
# puts "The most frequent character is #{char}"

# secret_message = "7 15 15 4 27 4 15 7"
encoded_message = "7 15 15 4 27 4 15 7"
digits = encoded_message.split (' ')

#loop to find the character equivalent
characters = digits.map do |digit_string|
  num  = digit_string.to_i
  if num == 27
    ' '
  else
    (96 + num).chr
  end
end
puts characters.join('')


random_numbers = []
10.times do
  random_numbers << rand(9) + 1
end

primes = []
random_numbers.each do |num|
prime = true
(2...num).to_a.each do |divisor|
if num % divisor == 0
    prime = false
    puts "#{num} is not prime"
    break

  end
end
if prime
  primes << num
end
end

puts primes.inspect
