require 'csv'

balance = 0.0

CSV.foreach('transactions.csv', headers: true) do |row|
  balance += row[0].to_f

  puts "Amount: #{row[0]}"
  puts "Description: #{row[1]}"
  puts "Date: #{row[2]}"
  puts "Balance: #{balance}"
  puts
end
