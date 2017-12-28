transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts transactions[0]
# * What is the value of the second transaction?
puts transactions[1]
# * What is the value of the fourth transaction?
puts transactions[3]
# * What is the value of the last transaction?
puts transactions[-1]
# * What is the value of the second from last transaction?
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts transactions[4]
# * How many transactions are there in total?
puts transactions.count
# * How many positive transactions are there in total?
puts transactions.count(&:positive?)
# * How many negative transactions are there in total?
puts transactions.count(&:negative?)
# * What is the largest withdrawal?
# QUESTION:why does MAX return smallest withdrawal?
puts transactions.select(&:negative?).min
# * What is the largest deposit?
puts transactions.select(&:positive?).max
# * What is the small withdrawal?
# why does MIN not work here?
puts transactions.select(&:negative?).max

negative_transactions = []

transactions.each do |transaction|
  if transaction.negative?
    negative_transactions << transaction
  end
end

puts negative_transactions.max

# * What is the smallest deposit?
puts transactions.select(&:positive?).min
# * What is the total value of all the transactions?
sum = 0
transactions.each do |transaction|
  sum += transaction
end

puts sum
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
initial_balance = 239_000
puts "#{initial_balance + sum}"




best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts best_records.length
# * Who are all the artists listed?
puts best_records.keys
# * What are all the album names in the hash?
puts best_records.values
# * Delete the `Eminem` key-value pair from the list.
best_records.delete("Eminem")
puts best_records.keys
# * Add your favorite musician and their best album to the list.
best_records["Gaudi"] = "Bass, Sweat & Tears"
# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "In Utero"
# * Is `Nirvana` included in `best_records`?
best_records.include?("Nirvana")
# * Is `Soundgarden` included in `best_records`?
best_records.include?("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records["Soundgarden"] = "Superunknown"
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each do |key, value|
  if key.length <= 6
    puts key
  end
end
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each do |key, value|
  if value.length > 10
    puts value
  end
end
