class Nutrition < ApplicationRecord
  belongs_to :resource, :polymorphic => true
end
