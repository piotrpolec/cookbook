class CalculateNutrition
  def initialize(recipe)
    @recipe = recipe
  end

  def call
    recipe.nutrition = Nutrition.new
    recipe.ingredients.each do |ingredient|

      recipe.nutrition.kcal += ingredient.product.nutrition.kcal
      recipe.nutrition.fat += ingredient.product.nutrition.fat
      recipe.nutrition.carbs += ingredient.product.nutrition.carbs
      recipe.nutrition.sugar += ingredient.product.nutrition.sugar
      recipe.nutrition.protein += ingredient.product.nutrition.protein
      recipe.nutrition.fiber += ingredient.product.nutrition.fiber
      recipe.nutrition.salt += ingredient.product.nutrition.salt
    end
    recipe.nutrition.kcal /= recipe.ingredients.size
    recipe.nutrition.fat /= recipe.ingredients.size
    recipe.nutrition.carbs /= recipe.ingredients.size
    recipe.nutrition.sugar /= recipe.ingredients.size
    recipe.nutrition.protein /= recipe.ingredients.size
    recipe.nutrition.fiber /= recipe.ingredients.size
    recipe.nutrition.salt /= recipe.ingredients.size
  end

  private

  attr_reader :recipe
end
