require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new(["A♦", "A♥"]) }
  let(:hand_two) { Hand.new(["A♣", "10♥"]) }
  let(:hand_three) { Hand.new(["K♦", "10♥"]) }
  let(:hand_four) { Hand.new(["7♦", "5♥"]) }

  describe "#calculate_hand" do
    context "two ace cards" do
      it "expects two aces to equal 12" do
        # use `expect` to test assertions
        expect(hand.calculate_hand).to eq(12)
      end
    end
    context "ace and 10 card" do
      it "expects blackjack value of 21" do
        expect(hand_two.calculate_hand).to eq(21)
      end
    end

    context "K and 10 card" do
      it "expects value of 20" do
        expect(hand_three.calculate_hand).to eq(20)
      end
    end

    context "two regular cards" do
      it "expects a value of 12" do
        expect(hand_four.calculate_hand).to eq(12)
      end
    end
  end
end
# require "spec_helper"
#
# describe Hand do
#   # These UTF-8 characters will be useful for making different hands:
#   # '♦', '♣', '♠', '♥'
#
#   let(:hand) { Hand.new([Card.new("♦",10), Card.new("♥","J")]) }
#   # You can add more sample hands
#
#   describe "#calculate_hand" do
#      it "should add the value of two cards together" do
#        expect(hand.calculate_hand).to eq(20)
#      end
#     # We have included some example tests below. Change these once you get started!
#
#     # it "passes" do
#     #   # Use the RSpec keyword `expect`, as it appears below, to test your assertions
#     #   expect(1).to eq(1)
#     # end
#     #
#     # it "fails" do
#     #   expect(false).to eq true
#     # end
#
#     # Add your remaining tests here.
#     it "should let face cards be equal to 10" do
#        hand = Hand.new(["J♦","K♥"])
#        expect(hand.calculate_hand).to eq(20)
#        hand = Hand.new(["Q♦","9♥"])
#        expect(hand.calculate_hand).to eq(19)
#      end
#
#      it "should let an Ace equal 11 if the other card is not an Ace" do
#        hand = Hand.new(["A♦","K♥"])
#        expect(hand.calculate_hand).to eq(21)
#        hand = Hand.new(["A♦","5♥"])
#        expect(hand.calculate_hand).to eq(16)
#      end
#
#      it "should let one Ace equal 1 and the other equal 11 if two Aces are drawn" do
#        hand = Hand.new(["A♦","A♥"])
#        expect(hand.calculate_hand).to eq(12)
#      end
#
#   end
# end
