class CreateNutritions < ActiveRecord::Migration[5.2]
  def change
    create_table :nutritions do |t|
      t.integer :kcal
      t.integer :fat
      t.integer :carbs
      t.integer :sugar
      t.integer :protein
      t.integer :fiber
      t.integer :salt
      t.integer :resource_id
      t.string :resource_type
    end
  end
end
