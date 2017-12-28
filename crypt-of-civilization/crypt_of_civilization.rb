crypt_of_civilization = Array.new

crypt_of_civilization << "Comptometer"
crypt_of_civilization << "Box of phonographic records"
crypt_of_civilization << "Plastic savings bank"
crypt_of_civilization << "Set of scales"

extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]
crypt_of_civilization = crypt_of_civilization + extra

puts "#{crypt_of_civilization.length}"
puts "#{crypt_of_civilization.first}"
puts "#{crypt_of_civilization.last}"
puts "#{crypt_of_civilization[1]}"
puts "#{crypt_of_civilization[2]}"
puts "#{crypt_of_civilization[-2]}"
puts "#{crypt_of_civilization.index("Toast-O-Lator")}"

puts
puts "Crypt Checking"
# Does the array contain "Container of beer"?
crypt_of_civilization.include?("Container of beer")
# Does the array contain "Toast-O-Lator"?
crypt_of_civilization.include?("Toast-O-Lator")
# Does the array contain "Plastic bird"?
crypt_of_civilization.include?("Plastic Bird")

puts
puts "Crypt Sorting"
# sort by word length
crypt_of_civilization.sort_by { |item| item.length }

# sort in alphabetical order
crypt_of_civilization.sort

# two ways of sorting in reverse alphabetical order
crypt_of_civilization.sort { |a, b| b <=> a }
crypt_of_civilization.sort.reverse

puts
puts "Crypt Printing"
count = 0
while count < crypt_of_civilization.length
  puts crypt_of_civilization[count]
  count += 1
end

crypt_of_civilization.each do |item|
  puts item
end

puts
puts "Crypt Deletion"
crypt_of_civilization.shift  # removes the first item
crypt_of_civilization.pop    # removes the last item
crypt_of_civilization.delete("Set of scales")
crypt_of_civilization.delete("Sample of aluminum foil")
