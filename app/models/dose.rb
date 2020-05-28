class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, uniqueness: { scope: :ingredient }
  # 4.5g of mint on cocktail1. 2g of mint on cocktail2
  validates :description, presence: true
end
