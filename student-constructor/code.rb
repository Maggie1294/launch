require 'pry'
# PART 1
class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end
end

# QUESTION: Is there anything about lines 15 to 23 below that would be considered to be more "efficient" code? If so, why? I mean, using hashes.

# PART 2
class Student
  attr_reader :first_name, :last_name, :grades
# QUESTION error line 19. Wrong number of arguments. But the hash itself contains the arguments, no? Defined below in the instance variables. Is it remembering the code from above?
  def initialize(first_name, last_name, grades)
    @first_name = :first_name
    @last_name = :last_name
    @grades = :grades
  end
end

Student.new('John', 'Smith', [85, 90, 95])

# PART 3
class Student
  attr_reader :first_name, :last_name, :grades

  def initialize(information_hash)
    @first_name = information_hash[:first_name]
    @last_name = information_hash[:last_name]
    @grades = information_hash[:grades]
    @average = calculate_average
  end

  def calculate_average
    sum_of_grades = 0.0
    @grades.each do |grade|
      sum_of_grades += grade
    end
    sum_of_grades/@grades.length
  end
end
