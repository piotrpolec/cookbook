class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.belongs_to :recipe
      t.belongs_to :product
      t.integer :amount
    end
  end
end
