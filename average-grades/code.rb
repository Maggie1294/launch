# PART 1

def average(grade_list)
  sum = 0
  grade_list.each do |grade|
    sum += grade
end

  sum / grade_list.size.to_f
end

jane_grades = [98, 95, 88, 97, 74]
jane_average = average(jane_grades)
puts "Jane had an average of #{jane_average}"
puts

# PART 2

def letter_grade(average)
  if average >= 90
    'A'
  elsif average >= 80
    'B'
  elsif average >= 70
    'C'
  elsif average >= 60
    'D'
  else
    'F'
  end
end

jane_letter_grade = letter_grade(jane_average)
puts "Jane's grade is #{jane_letter_grade}"

# PART 3
# QUESTION Is this code below considered incorrect because "puts" is inside the method?
def standings(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end
puts

standings(["Johnny", "Jane", "Sally", "Elizabeth", "Michael"])
