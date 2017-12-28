require_relative "./team_data"
require_relative "./player"

class Team

  POSITIONS =
  [
 	    "Catcher",
 	    "Pitcher",
 	    "1st Base",
 	    "2nd Base",
 	    "3rd Base",
 	    "Shortstop",
 	    "Right Field",
 	    "Center Field",
 	    "Left Field"
   ]
  attr_reader :team_name

  def initialize(team_name)
    @team_name = team_name
  end

def self.all
  team_array = []
  TeamData::ROLL_CALL.each do |team, players|
  team_array << Team.new(team.to_s)
end

team_array
end


def players
  player_array = []
  TeamData::ROLL_CALL.each do |team, players|
    players.each do |position, player|
      if team.to_s == @team_name
        player_array << Player.new(player, position.to_s, team.to_s)
      end
    end
  end
  player_array
end

end
