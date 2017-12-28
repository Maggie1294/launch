def disclaimer
  puts "DISCLAIMER"
  puts "This code may not be everything you thought it was!"
  puts "By using this temperamental program"
  puts "you agree not to sue its creator."
  puts
end

response = 'n'
while response.downcase !='y'
  disclaimer
  puts "You must accept our legal disclaimer to proceed.Please say 'y' or 'n'."
  response = gets.chomp
end


puts
puts "3 + 2 = #{rand(6)}"
puts

disclaimer
