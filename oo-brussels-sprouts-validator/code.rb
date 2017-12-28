require 'pry'

class Ingredients

  SAFE_INGREDIENTS = [
    "Brussels sprouts",
    "spinach",
    "eggs",
    "milk",
    "tofu",
    "seitan",
    "bell peppers",
    "quinoa",
    "kale",
    "chocolate",
    "beer",
    "wine",
    "whiskey"
  ]
# QUESTION Do I really even need line 19?
  attr_accessor :quantity, :unit, :name

  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summarize
    @summarize = "#{quantity} #{unit} #{name}"
  end

# Implement an instance method in your Ingredient class that helps check whether an ingredient is valid (i.e., contains only the ingredient names above)?
  def allowed_ingredients
    SAFE_INGREDIENTS.include?(name.downcase)
  end


  # What if your input to your `Ingredient` class comes in a different format? Write an `Ingredient` [class method](class-instance-methods) called `parse` which takes in a string that will look like `47 lb(s) Brussels sprouts` or `5 tspn(s) milk` and generates a variable of the `Ingredient` class in the right format. In other words, when that string is passed into your `parse` method as an argument, it should build an instance of `Ingredient` with a `unit`, `quantity`, and `name`.


  def self.parse(ingredients)
    ingredients_formatted = ingredients.split(" ")
    new(ingredients_formatted[0].to_f, ingtedients_formatted[1], ingredients_formatted[2])
  end

end

# Write a `Recipe` instance method that returns `true` or `false` depending on whether or not your client can have that particular dish.

class Recipe
attr_accessor :name, :ingredients, :instructions

  def initialize(name, ingredients, instructions)
  @name = name
  @ingredients = ingredients
  @instructions = instructions
  end

  def summary
    puts "Name: #{name}"
    puts
    puts "Ingredients"
    @ingredients.each do |ingredient|
      puts " - #{ingredient.summarize}"
    end
    puts
    puts "Instructions"
    number = 0
    @instructions.each do |instruction|
      puts "#{number += 1}. #{instruction}"
    end
    " "
  end


  def safe_or_not
    safe = true
    @ingredients.each do |ingredient|
      if ingredient.safe_ingredient == false
        safe = false
      end
    end
    safe
  end
# end

# At the bottom of the file, write some Ruby code that serves as a set of "test cases" to ensure your methods are working. For example, try building a new `Recipe` with "safe" ingredients and make sure your method that checks the safety of the ingredients returns true when run on that recipe.

name = "Roasted Brussels Sprouts"

# QUESTION There is an error around this line, but I am not understianding what it is asking me to fix.
  ingredients = [
	  Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
	  Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
	  Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
	  Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
	]

	instructions = [
	  ("Preheat oven to 400 degrees F."),
	  ("Cut off the brown ends of the Brussels sprouts."),
	  ("Pull off any yellow outer leaves."),
	  ("Mix them in a bowl with the olive oil, salt and pepper."),
	  ("Pour them on a sheet pan and roast for 35 to 40 minutes."),
	  ("They should be until crisp on the outside and tender on the inside."),
	  ("Shake the pan from time to time to brown the sprouts evenly."),
	  ("Sprinkle with more kosher salt ( I like these salty like French fries)."),
	  ("Serve and enjoy!")
	]


	recipe = Recipe.new(name, instructions, ingredients)
	puts recipe.summary
	puts "#{recipe.name} is safe from allergens?: #{recipe.safe_or_not}"

	puts
	puts

	safe_name = "Veggie Omlette"

	safe_ingredients = [
	    Ingredient.new(3, "large", "eggs"),
	    Ingredient.new(0.5, "cup", "bell peppers"),
	    Ingredient.new(1.5, "cups", "spinach"),
	    Ingredient.new(0.25, "cup", "milk"),
	    Ingredient.parse("0.5 cup tofu")
	  ]

	safe_instructions = [
	  ("Wash and chop your veggies."),
	  ("Crack eggs and scramble them in a bowl."),
	  ("Add milk to bowl and whisk."),
	  ("Put on skillet at medium temperature."),
	  ("Add in veggies."),
	  ("Mix around until thoroughly cooked."),
	  ("Serve and enjoy!")
	]

	safe_recipe = Recipe.new(safe_name, safe_instructions, safe_ingredients)

  puts safe_recipe.summary

	puts "#{safe_recipe.name} is safe from allergens: #{safe_recipe.safe_or_not}"
end
