class Product < ApplicationRecord
has_many :ingredients
has_one :nutrition, :as => :resource
end
