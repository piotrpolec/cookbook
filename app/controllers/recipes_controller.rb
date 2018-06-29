class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    #  @recipe.ingredients.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    binding.pry
    CalculateNutrition.new(@recipe).call
    if @recipe.save
        redirect_to @recipe
    else
        redirect_to new_recipe_path
    end

  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients = []
    binding.pry
    if @recipe.update(recipe_params)
        redirect_to @recipe
    else
        redirect_to new_recipe_path
    end

  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :sort, :instructions,
                                   ingredients_attributes: [:id, :amount, :product_id, :_destroy] )
  end

end
