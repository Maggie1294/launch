board_a = [
  ['x', 'o', 'x'],
  ['x', 'nil', 'o'],
  ['x', 'o', 'nil']
]
board_b = [
  ['nil', 'o', 'x'],
  ['x', 'o', 'nil'],
  ['x', 'o', 'nil']
]
def print_grid(board)
board.each do |row|
  puts row
  puts "----------"
end
end

print_grid(board_a)
print_grid(board_b)
