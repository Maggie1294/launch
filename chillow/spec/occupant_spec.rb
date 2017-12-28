require 'spec_helper'

RSpec.describe Occupant do

  let(:meka) { Occupant.new("Meka", "Richard")}

  describe ".new" do
    it "should have a first name" do
      expect(meka.first_name).to eq("Meka")
    end
    it "should have a last name" do
      expect(meka.last_name).to eq("Richard")
    end
  end
end
