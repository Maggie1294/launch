require "spec_helper"
	
	RSpec.describe Team do
	  let(:my_team) { Team.new("Simpson Slammers") }

	  it "should be initialized with a name and be able to call it" do
	    expect(my_team.team_name).to eq("Simpson Slammers")
	  end

	  describe "#all" do

	    it "should return an array of Team Objects" do
	      team_info = TeamData::ROLL_CALL
	      expect(Team.all[0]).to be_a(Team)
	      expect(Team.all[0].team_name).to eq("Simpson Slammers")
	    end
	  end

	  describe "#players" do
	    it "should return an array of player objects corresponding to that team"do
	      team_info = TeamData::ROLL_CALL
	      expect(my_team.players).to be_a(Array)
	      expect(my_team.players[0]).to be_a(Player)
	      expect(my_team.players[0].name).to eq("Bart Simpson")
	    end
	  end
	end
