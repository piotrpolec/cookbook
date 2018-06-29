class AddNutritionDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :nutritions, :kcal, :float, :default => 0
    change_column :nutritions, :fat, :float, :default => 0
    change_column :nutritions, :carbs, :float, :default => 0
    change_column :nutritions, :sugar, :float, :default => 0
    change_column :nutritions, :protein, :float, :default => 0
    change_column :nutritions, :fiber, :float, :default => 0
    change_column :nutritions, :salt, :float, :default => 0
  end
end
