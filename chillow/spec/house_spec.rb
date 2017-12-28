require 'spec_helper'

RSpec.describe House do

  let(:hub_house) { House.new("10 Setian Circle", "Johnston", "RI", "02919", "$500000")}

  describe ".new" do
    it "should have a street address" do
      expect(hub_house.address).to eq("10 Setian Circle")
    end
    it "should reside in a city or town" do
      expect(hub_house.city).to eq("Johnston")
    end
    it "should have an asking price" do
      expect(hub_house.asking_price).to eq("$500000")
    end
  end
end
