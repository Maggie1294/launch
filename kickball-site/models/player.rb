require_relative "./team_data"


class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
end

def self.all
  player_array = []
  TeamData::ROLL_CALL.each do |team, players|
    players.each do |position, player|
      player_array << Player.new(player, position.to_s, team.to_s)
    end
  end
  player_array
end

# def self.positions
#   positions = []
#   TeamData.to_h.each do |team|
#     TeamData.to_h[team[0]].each do |position, player|
#       unless positions.include?(position)
#         positions << position
#       end
#     end
#   end
#   positions
# end
end
