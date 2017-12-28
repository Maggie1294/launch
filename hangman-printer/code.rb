def print_puzzle(word, guessed_letters = [])
  word.each_char do |char|
# QUESTION What is being printed at the end of this output in the terminal?
    if guessed_letters.include?(char)
      print "#{char}"
    else
      print " _ "
    end
  end
end

print_puzzle('triangle', ['t', 's', 'g'])
