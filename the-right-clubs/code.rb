REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

# we want this to be the output:
# ***Automated Golf Club Advice:***
# Use the four iron!
# Use the five iron!
# Use the five wood!
# Use the six iron!
# Use the seven wood!
# Use the three wood!
# Use the three iron!
# Use the seven iron!
# Use the nine iron!
# Use the driver!
#
# WARNING! You will be without a pitching wedge
# WARNING! You will be without a putter

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

puts "Automated Golf Club Advice:"
puts

possible_club_selections.each do |selection|
  puts "Use the #{selection.to_s.gsub("_", " ")}!"
end
#in the above line, can you use .tr?

puts ""

# REQUIRED_CLUBS = [:driver, :pitching_wedge, :putter]
#
# missing_required_clubs = REQUIRED_CLUBS - possible_club_selections
# missing_required_clubs.each do |required_club|
#   puts "Warning! You will be without a #{required_club.to_s.gsub(""," ")}"
# end]
[
  :driver,
  :pitching_wedge,
  :putter
].each do |required_club|
  if !possible_club_selections.include?(required_club)
    puts "WARNING! You will be without a #{required_club.to_s.gsub("_", " ")}"
  end
end
