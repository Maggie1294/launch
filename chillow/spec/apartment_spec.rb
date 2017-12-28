require 'spec_helper'

RSpec.describe Apartment do

  let(:co_ops) { Apartment.new("1600 Beacon Street", "Boston", "MA", "02116", "$950", Date.new(2017,9,1), Date.new(2018,9,1))}

  describe ".new" do
    it "should have a street address" do
      expect(co_ops.address).to eq("1600 Beacon Street")
    end
    it "should reside in a city or town" do
      expect(co_ops.city).to eq("Boston")
    end
    it "should have a monthly rent" do
      expect(co_ops.price_per_month).to eq("$950")
    end
    it "should have a lease end date" do
      expect(co_ops.lease_end).to eq(Date.new(2018,9,1))
    end
    it "should have an ending date after the start date" do
      expect(co_ops.lease_start).to be < (co_ops.lease_end)
    end
  end

  describe "#full?" do
    it "should return true when at max occupancy" do
      co_ops.add_item("Meka", "Richard")
      co_ops.add_item("TomTom", "Thomas")
      co_ops.add_item("Luna", "Maria")
      expect(co_ops.full?).to eq(true)
    end
    it "should return false when there is space left" do
      expect(co_ops.full?).to eq(false)
    end
  end

  describe "#add_item" do
    it "should add an Occupant to the Apartment" do
      co_ops.add_item("Ophelia", "Oz")
      expect(co_ops.current_contents.length).to eq(1)
    end
  end

  describe "#remove_item" do
    it "should remove the first Occupant of the Apartment" do
      co_ops.add_item("Meka", "Richard")
      co_ops.add_item("TomTom", "Thomas")
      co_ops.add_item("Luna", "Maria")
      co_ops.remove_item
      expect(co_ops.current_contents.length).to eq(2)
    end
  end
end
