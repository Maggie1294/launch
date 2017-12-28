require 'spec_helper'

RSpec.describe Dwelling do

  let(:treehouse) { Dwelling.new("1 Treehouse Point", "Issaquah", "WA", "99999")}

  describe ".new" do
    it "should have a street address" do
      expect(treehouse.address).to eq("1 Treehouse Point")
    end
    it "should reside in a city or town" do
      expect(treehouse.city).to eq("Issaquah")
    end
  end
end
