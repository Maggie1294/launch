puts "Enter your sales values here!"

total = 0.0
while total < 100 do
  print "> "
  input = gets.chomp.to_f
  total = total + input
if total <100
  puts "You haven't reached 100 yet, keep going!"
else
puts "You've reached 100!"
end
end
