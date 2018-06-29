class AddShoplistToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :shoplist_id, :bigint
  end
end
