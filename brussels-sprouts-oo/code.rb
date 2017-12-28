# PART 1
# I was on a path here but it seemed more complicated than it needed to be. I changed it up and resubmitted.

class Ingredient
attr_reader :quantity, :unit, :name
def initialize(quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit.to_s
    @name = name
  end

end
#
# ingredient = Ingredient.new(47.0, "lb", "Brussels Sprouts")

# puts ingredient.summary


class Recipe
  attr_reader :name, :ingredients, :instructions

  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  # def initialize
  #   @name = name
  # end
  #
  # def initialize(ingredients)
  #   @ingredients = ingredients
  # end
  #
  # def initialize(instructions)
  #   @instructions = instructions
  # end

  def summary
    puts "Name: #{name}\n\n"
    print "Ingredients:\n"
    @ingredients.each do |x|
    puts "\nInstructions:\n"
  end
    @instructions.each_with_index do |x, index|
    puts "#{index + 1}. #{x}"
  end
  end


end
  ingredients = [
  Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
  Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
  Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
  Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
  ]

  instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
  ]

  recipe = Recipe.new("Brussels Sprouts", ingredients, instructions)
  recipe.summary
