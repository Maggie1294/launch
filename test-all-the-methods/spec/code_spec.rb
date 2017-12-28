require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# ------- perimeter -------

describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5,10)).to eq(30)
  end
end

# ------- average ---------

describe "average" do
  it "should equal the average of all grades" do
    result = average([85, 90, 95, 100])
    expect(result).to eq(92.5)
  end
end

# -------- rankings -------

describe "rankings" do
  students = ["Meka", "Tomi", "Luna"]
    it "lists all the student rankings in indexed order" do
      result = rankings(students)
      expect(result).to eq("1. Meka\n2. Tomi\n3. Luna\n")
    end
end

describe "greet" do
  context "Spanish" do
    it "should return a greeting in Spanish"
      expect{ greet("Meka", "Spanish") }.to eq(puts"Hola Meka!")
    end
  end

  context "Italian" do
    it "should return a greeting in Italian" do
      expect{ greet("Tomi", "Italian") }.to eq(puts "Ciao Tomi!")
    end
  end

  context "French" do
    it "should return a greeting in French" do
      expect{ greet ("Luna", "French")}.to eq(puts "Bonjour Luna!")
    end
  end

  context "nil" do
    it "should return a greeting in English as the default" do
      expect { greet("Bob") }.to eq(puts "Hi Bob!")
    end
  end

  describe "create_puzzle" do
    it "returns a _ for any letter that is missing from the guesses array" do
      expect(create_puzzle("vegetable", ["v","t","a","e"])).to eq("v e _ e t a _ _ e")
    end
    it "does not return letters from the guess array that are not a part of the word" do
            expect(create_puzzle("vegetable", ["v","t","a","e","x"])).to eq("v e _ e t a _ _ e")

    end
  end

desribe "divisible_by_three" do
  it "returns true if the number is divisible by three" do
    expect(divisible_by_three(27)).to eq(true)
    end
    it "returns false when the number is not divisible by three" do
      expect(divisible_by_three(20)).to eq(false)
    end
end

desribe "perfect_square" do
  it "throws an error message when the number is less than 1" do
    expect{perfect_square?(0)}.to raise_error(ArgumentError)
  end
  it "will return true of the number is a perfect square" do
    expect(perfect_square?(9)).to eq(true)
  end
  it "will return false if the number is not a perfect square" do
    expect(perfect_square(10)).to eq(false)
  end
end
