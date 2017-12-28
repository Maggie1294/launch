require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  redirect "/teams"
end
# get "/" do
#   erb :index
# end
#
# get "/" do
#   redirect "/teams"
# end

#Teams page
# get "/teams" do
#   @team_hash = TeamData.to_h
#   erb :teams
# end
get "/teams" do
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  @teams = Team.all
  @team_name = params[:team_name]
  erb :team
end

get "/positions" do
  @positions = Team::POSITIONS
  erb :positions
end


get "/positions/:position_name" do
  @teams = Team.all
  @position_name = params[:position_name]

erb :position_players
end
