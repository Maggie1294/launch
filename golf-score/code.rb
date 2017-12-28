# think! compound data structures
golf_game = [
  { par: 5, score: 7 },
  { par: 4, score: 5 },
  { par: 3, score: 3 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 2 },
  { par: 4, score: 5 },
  { par: 5, score: 5 },
  { par: 4, score: 5 },
  { par: 5, score: 8 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 4, score: 5 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 6 },
  { par: 5, score: 6 }
]

final_score = 0
final_par = 0

golf_game.each do |hole|
  final_par += hole[:par]
  final_score += hole[:score]
end

  puts "Final Score: #{final_score}"
  puts "Final Par: #{final_par}"

  par_value = final_score - final_par

over_under = ""
if par_value >= 0
   over_under = "over"
else
   over_under = "under"
   par_value = par_value * -1
end

puts "Game was #{par_value} #{over_under} par."
