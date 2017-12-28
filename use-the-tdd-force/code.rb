def plus_two(number)
  result = number += 2
  result
end

def subtract_or_multiply_by_two(number)
  if number < 0
    result = number - 2
  elsif number == 0
    result = number * 2
  elsif number > 0
    result = number * 2
  end
  result
end

def repeat_last_word(string)
  string += " #{string.split.last}"
end

def return_value_of_type(input)
  if input == :string
    return input.to_s
  elsif input == :fixnum
    "Fixnum".to_i
  else
    "input does not match ruby class"
  end
end

def add_five_and_ten(array)
  array << 5 && array << 10
end
