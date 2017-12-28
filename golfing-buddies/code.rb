golf_contacts = {
  jim: 'workerBee@example.com',
  samantha: 'golfCartRacer@example.com',
  jane: 'pro_golfer89@example.com',
  mike: 'alwaysAtTheBeach@example.com',
  olivia: 'didYouSeeWhereThatWent@example.com',
  joan: 'bestShortGameEver@example.com'
}

#use the hash to invite Samantha, Jane and olivia
#Fill out the "To:" line in an email.
golf_contacts.each do |name, email|
puts "#{name}: #{email}"
end

#EXTRA! try to do this in a single line of text

puts "To\:" + [golf_contacts[:samantha], golf_contacts[:jane], golf_contacts[:olivia]].join(',')
