# The simplest way to store the timetable would be as an array of times.
train_times =  [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]

while true
  puts "What time do you need to leave to get home?"
  commuter_time_request = gets.chomp.to_i
  puts "#{commuter_time_request}"
  if commuter_time_request >= 1 && commuter_time_request <= 24
  break
  else
  puts "We really don't know what that means!"
  end
end

#"""""""6:42 a.m. AND I NEED TO STEP AWAY! SO CLOSE!""""""

# can't they also be able to leave at an exact time?
train_sort = []
train_number = []

train_times.each_with_index do |time, index|
  if time > commuter_time_request
    train_sort << time
    train_number << index + 1
  end
end

puts "You should catch Train #{train_number.first} leaving at #{train_sort.first}\n"

# this here below does not appear to be working???
if train_number == 13
  puts "***DON'T STOP...BELIEVIN'!***
  Just a small town girl
  Living in a lonely world
  She took the midnight train going anywhere
  Just a city boy
  Born and raised in South Detroit
  He took the midnight train going anywhere
  A singer in a smoky room
  A smell of wine and cheap perfume
  For a smile they can share the night
  It goes on and on and on and on
  Strangers waiting, up and down the boulevard
  Their shadows searching in the night
  Streetlights people, living just to find emotion
  Hiding, somewhere in the night."
end
