names = [
  "John",
  "Hannah",
  "Mark",
  "Sam",
  "Anna",
  "Sandra",
  "Susan",
  "Julie",
  "Yanni",
  "Eve",
  "Sunny",
  "Matt"
]

## Accessing elements within our `names` array:

# 1. Retrieve the first name from the `names` array.
puts "The first name in the array is #{names[0]}"
# 2. Retrieve the second name from the `names` array.
puts "The second name in the array is #{names[1]}"
# 3. Retrieve the third name from the `names` array.
puts "The third name in the array is #{names[2]}"
# 4. Retrieve the last name from the `names` array.
puts "The last name in the array is #{names[-1]}"
# 5. Retrieve the second-to-last name from the `names` array.
puts "The second to last name in the array is #{names[-2]}"
# 6. Create a new array with the first two elements in the `names` array.
new_array = names[0..1]
puts "#{new_array}"
# 7. Create a new array with the first four elements in the `names` array.
new_array_v2 = names[0..3]
puts "#{new_array_v2}"

## Manipulating the `names` array:

# 1. Add your name to the `names` array.
names << "Margo"
puts names
# 2. Replace the first element in the array with your best friend's name.
names [0] = "Cindy"
puts names
# 3. Reassign the last element in the array with the name of your arch-nemesis.
names [-1] = "Katniss"
puts names


## Asking questions about our `names` array:

puts "1. How many names are on the list?"
amount = names.count
puts amount
puts

puts "2. Who is the third name on the list?"
third_name =names [2]
puts third_name
puts

puts "3. Output each name and where it occurs in the array."
names.each_with_index do |name, index|
  puts "#{index}: #{name}"
end
puts

puts "4. Sort the names in alphabetical order."
puts names.sort
puts

puts "5. Sort the names by smallest number of characters to largest."
sort_length = names.sort_by {|name| name.length}
puts sort_length
puts

puts "6. Supply the sum of all the characters in the list of names."
puts names.join.length
puts

puts "7. Do any of the names start with \"Y\"?"
puts names.any? {|y_names| y_names.start_with? 'Y'}
puts

puts "8. Are all of the names 3 characters long or larger?"
puts names.all? { |three_characters| three_characters.length >= 3 }
puts

puts "9. Using the `names` array, create a new array containing only palindrome names."
puts palindrome_names = names.select {|palindrome| palindrome.downcase == palindrome.reverse.downcase}
puts

puts "10. Find the first name that starts with \"S\"."
puts first_s_name = names.find { |s_name| s_name[0].downcase == 's' }
puts

puts "11. Create a new array containing names that start with \"S\"."
puts s_names = names.select {|name| name[0].downcase == 's'}
puts

puts "12. Create a new array of names ending with a vowel."
puts vowel_ending_names = names.select {|name| name[-1] == 'a' || name[-1] == 'e' || name[-1] == 'i' || name[-1] == 'o' || name[-1] == 'u'}
puts

puts "13. Divide the names into groups of 3."
puts names.each_slice(3) {|groups_of_three| puts groups_of_three.inspect}
puts
