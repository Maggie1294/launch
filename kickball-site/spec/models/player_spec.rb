require "spec_helper"
	
	RSpec.describe Player do
	  let(:new_player) { Player.new("John", '1st Base', "Griffin Goats") }
	  let(:team_info) { TeamData::ROLL_CALL }

	  it "has a name, position, and team name " do
	    expect(new_player.name).to eq("John")
	    expect(new_player.position).to eq("1st Base")
	    expect(new_player.team_name).to eq("Griffin Goats")
	  end

	  describe "#all" do

	    it "should return an array of player objects that correspond to each player" do
	      teams = team_info
	      expect(Player.all).to be_a(Array)
	      expect(Player.all[0]).to be_a(Player)
	      expect(Player.all[0].name).to eq("Bart Simpson")
	      expect(Player.all[0].position).to eq("Catcher")
	      expect(Player.all[0].team_name).to eq("Simpson Slammers")
	    end


	  end


	end
