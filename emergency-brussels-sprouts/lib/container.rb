class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight,maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(new_ingredient)
  max_fill = (@maximum_holding_weight / new_ingredient.weight).floor
  max_fill.times {ingredients << new_ingredient}
  @weight = (max_fill * new_ingredient.weight) + @weight
  end

  def which_ingredient
    ingredients[0].name
  end

  def how_many_ingredients
    ingredients.count
  end

  def remove_one_ingredient
    ingredients.pop
  end

  def empty
    ingredients = []
  end
end
