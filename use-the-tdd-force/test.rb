def give_example(example)
  if example == "string"
    return "string"
  elsif example == "fixnum"
    return 1
  else
    "input does not match Ruby class"
  end
end

def output_to_terminal
  puts "Hello World!"
end

def raise_standard_error(output)
  output = StandardError
end
