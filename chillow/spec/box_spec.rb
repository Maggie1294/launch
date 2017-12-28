require 'spec_helper'

RSpec.describe Box do

  let(:meka) { Occupant.new("Meka", "Richard")}
  let(:books) { Box.new(meka) }

  describe ".new" do
    it "should have an owner" do
      expect(books.owner).to eq(meka)
    end
    it "should have an owner who is of Occupant class" do
      expect(meka.class).to eq(Occupant)
    end
  end
end
