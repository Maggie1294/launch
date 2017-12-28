#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

### put your code here
precinct_one_sum = 0
vote_results[0].each do |votes|
  precinct_one_sum += votes
end
mary_sue_votes = 0
billy_joe_votes = 0
sally_jane_votes = 0
#total_votes = mary_sue_votes + billy_joe_votes + sally_jane_votes

vote_results.size.times do |precinct_index|
  mary_sue_votes += vote_results[precinct_index][0]
  sally_jane_votes += vote_results[precinct_index][1]
  billy_joe_votes += vote_results[precinct_index][2]
end
# How many people voted in precinct 1?
puts "Precinct 1 had #{precinct_one_sum} votes."
puts

# Who was the winning candidate in Precinct 4?
max_votes = vote_results[3].max
candidate_index = vote_results[3].index(max_votes)
puts "#{candidates[candidate_index]} won Precinct 4."
puts

# How many people voted for Mary Sue?
puts "Mary Sue had #{mary_sue_votes} votes."
puts

# How many people voted for Billy Joe?
puts "Billy Joe had #{billy_joe_votes} votes."
puts

# How many people voted for Sally Jane?
puts "Sally Jane had #{sally_jane_votes} votes."
puts

# How many people voted in total?
#QUESTION: why does line 66 have to be here? Doesn't work when I had it above on line 35.
total_votes = mary_sue_votes + billy_joe_votes + sally_jane_votes
puts "There were #{total_votes} total votes."
puts

# Who had the most votes?
if mary_sue_votes > billy_joe_votes && mary_sue_votes > sally_jane_votes
  puts "Mary Sue had the most votes with #{mary_sue_votes} votes."
elsif billy_joe_votes > mary_sue_votes && billy_joe_votes > sally_jane_votes
  puts "Billy Joe had the most votes with #{billy_joe_votes} votes."
else
  puts "Sally Jane had the most votes with #{sally_jane_votes} votes."
end
