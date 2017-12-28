# The simplest way to store the timetable would be as an array of times.
train_times =  [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]
# puts "#{train_times}"
#
# As a train commuter
# I want to know the train I should take
# So that I can return home
#
# When I specify a time that I want to leave the office, the system should inform me of the next available train
#
# Remember that elements within an array are accessed via a 0-based index.
# Expect that the user will enter their time in decimal format. eg- 11.25 instead of 11:15AM.
departure_time = 0.0
while true
  puts "What time do you need to leave to get home?"
  commuter_time_request = gets.chomp.to_i
  puts "#{commuter_time_request}"
  if commuter_time_request >= 1 && commuter_time_request <= 24
  break
  else
  puts "I don't think there is a train at that time!"
  end
end

# train_times.each_with_index do |time, index|
#   time > commuter_time_request
# end
#
# train_number = train_times.index(next_times[0]) + 1
#

#"""""""6:42 a.m. AND I NEED TO STEP AWAY! SO CLOSE!""""""


train_sort = []
train_number = []

train_times.each_with_index do |time, index|
  if time = commuter_time_request
    puts "You should catch Train #{train_number} leaving at #{train_sort}\n"
  elsif time > commuter_time_request
    train_sort << time
    train_number << index + 1
  end
  end


puts "You should catch Train #{train_number.first} leaving at #{train_sort.first}\n"




if train_number == 13
  puts "***REALLY Cool old Journey song. TIMELESS :-)!***"
end
