class Ingredient < ApplicationRecord
belongs_to :recipe
belongs_to :product
belongs_to :shoplist, optional: true
has_one :nutrition, :as => :resource
end
