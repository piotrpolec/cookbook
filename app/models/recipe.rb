class Recipe < ApplicationRecord
  has_many :ingredients, inverse_of: :recipe
  accepts_nested_attributes_for :ingredients
  has_one :nutrition, :as => :resource
  RECIPE_SORTS = ["Breakfast", "Dinner", "Supper", "Dessert"]

  def self.recipe_sorts
    RECIPE_SORTS
  end
end
