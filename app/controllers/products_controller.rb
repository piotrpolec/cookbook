class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @nutrition = Nutrition.new
  end

  def create
    @product = Product.new(product_params)
    @nutrition = Nutrition.new(nutrition_params)
    @nutrition.resource = @product

    if @product.save && @nutrition.save
        redirect_to @product
    else
        redirect_to new_product_path
    end

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
        redirect_to @product
    else
        redirect_to new_product_path
    end

  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :unit,
                                    nutrition_attributes: [:kcal, :fat, :carbs, :sugar, :protein, :fiber, :salt] )
  end

  def nutrition_params
    params.require(:nutrition).permit(:kcal, :fat, :carbs, :sugar, :protein, :fiber, :salt)
  end
end
