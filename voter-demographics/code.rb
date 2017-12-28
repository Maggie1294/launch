# You're the new campaign manager for the Committee to Elect Mary Sue. Mary needs to learn more about her constituency. Given the sample size of data below, supply Mary with a report of:

#QUESTION: Could I have written this in a file and called the file? Seems repetitive and tedious.
constituents = [
{first_name: "Jon", last_name: "Smith", age: 25, income: 50000, household_size: 1, gender: "Male", education: "College"},
{first_name: "Jane", last_name: "Davies", age: 30, income: 60000, household_size: 3, gender: "Female", education: "High School"},
{first_name: "Sam", last_name: "Farelly", age: 32, income: 80000, household_size: 2, gender: "Unspecified", education: "College"},
{first_name: "Joan", last_name: "Favreau", age: 35, income: 65000, household_size: 4, gender: "Female", education: "College"},
{first_name: "Sam", last_name: "McNulty", age: 38, income: 63000, household_size: 3, gender: "Male", education: "College"},
{first_name: "Mark", last_name: "Minahan", age: 48, income: 78000, household_size: 1, gender: "Male", education: "High School"},
{first_name: "Susan", last_name: "Umani", age: 45, income: 75000, household_size: 2, gender: "Female", education: "College"},
{first_name: "Bill", last_name: "Perault", age: 24, income: 45000, household_size: 1, gender: "Male", education: "Did Not Complete High School"},
{first_name: "Doug", last_name: "Stamper", age: 45, income: 75000, household_size: 1, gender: "Male", education: "college"},
{first_name: "Francis", last_name: "Underwood", age: 52, income: 100000, household_size: 2, gender: "Male", education: "College"},
]

#Declared variables here:
total_age = 0
total_income = 0
total_household_size = 0
female = 0
male = 0
unspecified = 0
college = 0
high_school = 0
incomplete_high_school = 0

constituents.each do |person|

total_age += person[:age]
total_income += person[:income]
total_household_size += person[:household_size]
female += 1 if person[:gender] == "Female"
male += 1 if person[:gender] == "Male"
unspecified += 1 if person[:gender] == "Unspecified"
college += 1 if person[:education] == "College"
high_school += 1 if person[:education] == "High School"
incomplete_high_school += 1 if person[:education] == "Did not complete"
end

# QUESTION: Used this to get the number of rows, essentially. Is there another way?
total_size = constituents.length

# Average age
puts "Average Age: #{total_age/total_size.to_f}"
# Average income
puts "Average Income: #{total_income/total_size.to_f}"
# Average household size
puts "Average Household Size: #{total_household_size/total_size.to_f}"
# Female Percentage
puts "Percent Female: #{female/total_size.to_f * 100}"
# Male Percentage
puts "Percent Male: #{male/total_size.to_f * 100}"
# Unspecified Gender Percentage
puts "Percent Unspecified: #{unspecified/total_size.to_f * 100}"
# Percent of those who obtained a college education level
puts "Percent College Grads: #{college/total_size.to_f * 100}"
# Percent of those who obtained a high school education level
puts "Percent High School: #{high_school/total_size.to_f * 100}"
# Percent of those that did not finish high school
puts "Percent Incomplete High School: #{incomplete_high_school/total_size.to_f * 100}"
